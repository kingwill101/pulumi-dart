// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContactsRotationRecurrenceWeeklySettingHandOffTime {
  final pulumi.Input<int> hourOfDay;
  final pulumi.Input<int> minuteOfHour;

  /// Creates a new [GetContactsRotationRecurrenceWeeklySettingHandOffTime].
  /// [hourOfDay] Required.
  /// [minuteOfHour] Required.
  const GetContactsRotationRecurrenceWeeklySettingHandOffTime({
    required this.hourOfDay,
    required this.minuteOfHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourOfDay': hourOfDay,
      'minuteOfHour': minuteOfHour,
    };
  }

  factory GetContactsRotationRecurrenceWeeklySettingHandOffTime.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationRecurrenceWeeklySettingHandOffTime(
      hourOfDay: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hourOfDay'])),
      minuteOfHour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minuteOfHour'])),
    );
  }
}
