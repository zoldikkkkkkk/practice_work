import 'dart:io';
import 'dart:math';

void main() {
  
  print('Введите порядковый номер пальца руки: ');
  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int fingerIndex = int.parse(input);

    if (fingerIndex == 1) {
      print('большой палец');
    } else if (fingerIndex == 2) {
      print('указательный палец');
    } else if (fingerIndex == 3) {
      print('средний палец');
    } else if (fingerIndex == 4) {
      print('безымянный палец');
    } else if (fingerIndex == 5) {
      print('мизинец');
    } else {
      print('Неверный номер пальца. Введите число от 1 до 5.');
    }
  } else {
    print('Введено некорректное значение. Попробуйте ещё раз.');
  }

  int min = Random().nextInt(60);
  print("Сгенерированное число: $min");

  if (min >= 0 && min < 15) {
    print("Первая четверть часа");
  } else if (min >= 15 && min < 30) {
    print("Вторая четверть часа");
  } else if (min >= 30 && min < 45) {
    print("Третья четверть часа");
  } else if (min >= 45 && min <= 59) {
    print("Четвертая четверть часа");
  }

  List<String> getWeekDays(String lang) {
    if (lang == 'ru') {
      return [
        'понедельник',
        'вторник',
        'среда',
        'четверг',
        'пятница',
        'суббота',
        'воскресенье'
      ];
    } else if (lang == 'en') {
      return [
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Sunday'
      ];
    } else {
      return ['Invalid language code'];
    }
  }

  String languageCode = 'ru';

  List<String> weekDays = getWeekDays(languageCode);
  print(weekDays);

  String str = 'abcde';

  if (str.startsWith('a')) {
    print('да');
  } else {
    print('нет');
  }
  int num = Random().nextInt(4) + 1;
  String result;

  if (num == 1) {
    result = 'зима';
  } else if (num == 2) {
    result = 'весна';
  } else if (num == 3) {
    result = 'лето';
  } else if (num == 4) {
    result = 'осень';
  } else {
    result = 'Неизвестное значение';
  }
  print('Значение num: $num');
  print('Результат: $result');

  List<int> values = [1, 0, -3];

  for (int a in values) {
    if (a < 0) {
      print('Верно для $a');
    } else {
      print('Неверно для $a');
    }
  }

  String number = '123321';

  int sum1 = int.parse(number[0]) + int.parse(number[1]) + int.parse(number[2]);
  int sum2 = int.parse(number[3]) + int.parse(number[4]) + int.parse(number[5]);

  if (sum1 == sum2) {
    print('да');
  } else {
    print('нет');
  }

  String signal = ['красный', 'желтый', 'зеленый'][Random().nextInt(3)];
  
  print('Сигнал светофора: $signal');
  
  if (signal == 'красный') {
    print('стоять');
  } else if (signal == 'желтый') {
    print('приготовиться');
  } else {
    print('можно идти');
  }
}
