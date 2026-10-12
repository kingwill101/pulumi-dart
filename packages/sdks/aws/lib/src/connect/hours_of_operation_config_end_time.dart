// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HoursOfOperationConfigEndTime {
  /// Specifies the hour of closing.
  final pulumi.Input<int> hours;
  /// Specifies the minute of closing.
  final pulumi.Input<int> minutes;

  /// Creates a new [HoursOfOperationConfigEndTime].
  /// [hours] Specifies the hour of closing.
  /// [minutes] Specifies the minute of closing.
  const HoursOfOperationConfigEndTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory HoursOfOperationConfigEndTime.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationConfigEndTime(
      hours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hours'])),
      minutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minutes'])),
    );
  }
}
