// ignore_for_file: unused_element, unnecessary_cast


class GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart {
  final int hourOfDay;
  final int minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}

