// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHoursOfOperationConfigEndTime {
  /// Hour of opening.
  final pulumi.Input<int> hours;
  /// Minute of opening.
  final pulumi.Input<int> minutes;

  /// Creates a new [GetHoursOfOperationConfigEndTime].
  /// [hours] Hour of opening.
  /// [minutes] Minute of opening.
  const GetHoursOfOperationConfigEndTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory GetHoursOfOperationConfigEndTime.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationConfigEndTime(
      hours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hours'])),
      minutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minutes'])),
    );
  }
}
