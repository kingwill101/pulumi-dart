// ignore_for_file: unused_element, unnecessary_cast

class GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart {
  final int hourOfDay;
  final int minuteOfHour;

  GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hourOfDay'] = hourOfDay;
    map['minuteOfHour'] = minuteOfHour;
    return map;
  }

  factory GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
