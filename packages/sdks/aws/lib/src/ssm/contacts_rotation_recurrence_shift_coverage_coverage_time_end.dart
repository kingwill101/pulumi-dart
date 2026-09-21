// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd {
  /// (Required) The hour of the day.
  final pulumi.Input<int> hourOfDay;
  /// (Required) The minutes of the hour.
  final pulumi.Input<int> minuteOfHour;

  /// Creates a new [ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd].
  /// [hourOfDay] (Required) The hour of the day.
  /// [minuteOfHour] (Required) The minutes of the hour.
  const ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd.fromMap(Map<String, dynamic> map) {
    return ContactsRotationRecurrenceShiftCoverageCoverageTimeEnd(
      hourOfDay: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hourOfDay'])),
      minuteOfHour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minuteOfHour'])),
    );
  }
}
