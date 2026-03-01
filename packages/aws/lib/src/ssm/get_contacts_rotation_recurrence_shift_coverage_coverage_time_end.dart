// ignore_for_file: unused_element, unnecessary_cast


class GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd {
  final int hourOfDay;
  final int minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}

