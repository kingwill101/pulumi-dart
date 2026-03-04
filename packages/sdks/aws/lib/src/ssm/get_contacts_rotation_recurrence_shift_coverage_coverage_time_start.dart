// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart {
  final pulumi.Input<int> hourOfDay;
  final pulumi.Input<int> minuteOfHour;

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

  factory GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContactsRotationRecurrenceShiftCoverageCoverageTimeStart(
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
      minuteOfHour: pulumi.Input.fromValue(map['minuteOfHour'] as int),
    );
  }
}
