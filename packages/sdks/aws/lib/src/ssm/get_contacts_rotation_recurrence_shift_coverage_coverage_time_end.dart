// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd {
  final pulumi.Input<int> hourOfDay;
  final pulumi.Input<int> minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  const GetContactsRotationRecurrenceShiftCoverageCoverageTimeEnd({
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
      hourOfDay: pulumi.Input.fromValue((map['hourOfDay'] as num).toInt()),
      minuteOfHour: pulumi.Input.fromValue((map['minuteOfHour'] as num).toInt()),
    );
  }
}
