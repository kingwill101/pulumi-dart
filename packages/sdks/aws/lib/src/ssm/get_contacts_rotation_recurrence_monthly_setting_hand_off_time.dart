// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContactsRotationRecurrenceMonthlySettingHandOffTime {
  final pulumi.Input<int> hourOfDay;
  final pulumi.Input<int> minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceMonthlySettingHandOffTime].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  const GetContactsRotationRecurrenceMonthlySettingHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory GetContactsRotationRecurrenceMonthlySettingHandOffTime.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceMonthlySettingHandOffTime(
      hourOfDay: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hourOfDay'])),
      minuteOfHour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minuteOfHour'])),
    );
  }
}
