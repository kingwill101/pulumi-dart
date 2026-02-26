// ignore_for_file: unused_element, unnecessary_cast

class GetContactsRotationRecurrenceWeeklySettingHandOffTime {
  final int hourOfDay;
  final int minuteOfHour;

  GetContactsRotationRecurrenceWeeklySettingHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hourOfDay'] = hourOfDay;
    map['minuteOfHour'] = minuteOfHour;
    return map;
  }

  factory GetContactsRotationRecurrenceWeeklySettingHandOffTime.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceWeeklySettingHandOffTime(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
