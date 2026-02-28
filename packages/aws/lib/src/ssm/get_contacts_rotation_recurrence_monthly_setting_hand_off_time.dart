// ignore_for_file: unused_element, unnecessary_cast

class GetContactsRotationRecurrenceMonthlySettingHandOffTime {
  final int hourOfDay;
  final int minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceMonthlySettingHandOffTime].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  GetContactsRotationRecurrenceMonthlySettingHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hourOfDay'] = hourOfDay;
    map['minuteOfHour'] = minuteOfHour;
    return map;
  }

  factory GetContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceMonthlySettingHandOffTime(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
