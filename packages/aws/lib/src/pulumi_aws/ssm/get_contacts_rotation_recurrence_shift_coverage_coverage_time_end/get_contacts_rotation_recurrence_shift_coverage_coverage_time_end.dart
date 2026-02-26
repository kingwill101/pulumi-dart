// ignore_for_file: unused_element, unnecessary_cast

class GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd {
  final int hourOfDay;
  final int minuteOfHour;

  GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hourOfDay'] = hourOfDay;
    map['minuteOfHour'] = minuteOfHour;
    return map;
  }

  factory GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd.fromMap(
      Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd(
      hourOfDay: map['hourOfDay'] as int,
      minuteOfHour: map['minuteOfHour'] as int,
    );
  }
}
