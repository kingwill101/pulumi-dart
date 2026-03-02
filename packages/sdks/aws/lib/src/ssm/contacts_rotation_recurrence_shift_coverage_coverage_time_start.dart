// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContactsRotationRecurrenceShiftCoverageCoverageTimeStart {
  /// (Required) The hour of the day.
  final pulumi.Input<int> hourOfDay;
  /// (Required) The minutes of the hour.
  final pulumi.Input<int> minuteOfHour;

  /// Creates a new [ContactsRotationRecurrenceShiftCoverageCoverageTimeStart].
  /// [hourOfDay] (Required) The hour of the day.
  /// [minuteOfHour] (Required) The minutes of the hour.
  ContactsRotationRecurrenceShiftCoverageCoverageTimeStart({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory ContactsRotationRecurrenceShiftCoverageCoverageTimeStart.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrenceShiftCoverageCoverageTimeStart(
      hourOfDay: (map['hourOfDay'] as int).input(),
      minuteOfHour: (map['minuteOfHour'] as int).input(),
    );
  }
}

