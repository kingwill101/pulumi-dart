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
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory GetContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContactsRotationRecurrenceMonthlySettingHandOffTime(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
