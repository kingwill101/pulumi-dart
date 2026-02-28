// ignore_for_file: unused_element, unnecessary_cast

class ContactsRotationRecurrenceShiftCoverageCoverageTimeStart {
  /// (Required) The hour of the day.
  final int hourOfDay;

  /// (Required) The minutes of the hour.
  final int minuteOfHour;

  /// Creates a new [ContactsRotationRecurrenceShiftCoverageCoverageTimeStart].
  /// [hourOfDay] (Required) The hour of the day.
  /// [minuteOfHour] (Required) The minutes of the hour.
  ContactsRotationRecurrenceShiftCoverageCoverageTimeStart({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hourOfDay'] = hourOfDay;
    map['minuteOfHour'] = minuteOfHour;
    return map;
  }

  factory ContactsRotationRecurrenceShiftCoverageCoverageTimeStart.fromMap(
      Map<String, dynamic> map) {
    return ContactsRotationRecurrenceShiftCoverageCoverageTimeStart(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
