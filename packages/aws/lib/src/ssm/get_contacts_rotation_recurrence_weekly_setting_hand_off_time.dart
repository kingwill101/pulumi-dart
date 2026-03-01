// ignore_for_file: unused_element, unnecessary_cast

class GetContactsRotationRecurrenceWeeklySettingHandOffTime {
  final int hourOfDay;
  final int minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceWeeklySettingHandOffTime].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  GetContactsRotationRecurrenceWeeklySettingHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory GetContactsRotationRecurrenceWeeklySettingHandOffTime.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContactsRotationRecurrenceWeeklySettingHandOffTime(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
