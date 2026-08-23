// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HoursOfOperationConfigStartTime {
  /// Specifies the hour of opening.
  final pulumi.Input<int> hours;
  /// Specifies the minute of opening.
  final pulumi.Input<int> minutes;

  /// Creates a new [HoursOfOperationConfigStartTime].
  /// [hours] Specifies the hour of opening.
  /// [minutes] Specifies the minute of opening.
  const HoursOfOperationConfigStartTime({
    required this.hours,
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
    };
  }

  factory HoursOfOperationConfigStartTime.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationConfigStartTime(
      hours: pulumi.Input.fromValue(map['hours'] as int),
      minutes: pulumi.Input.fromValue(map['minutes'] as int),
    );
  }
}
