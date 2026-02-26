// ignore_for_file: unused_element, unnecessary_cast

class GetContactsRotationRecurrenceDailySetting {
  final int hourOfDay;
  final int minuteOfHour;

  GetContactsRotationRecurrenceDailySetting({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hourOfDay'] = hourOfDay;
    map['minuteOfHour'] = minuteOfHour;
    return map;
  }

  factory GetContactsRotationRecurrenceDailySetting.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceDailySetting(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
