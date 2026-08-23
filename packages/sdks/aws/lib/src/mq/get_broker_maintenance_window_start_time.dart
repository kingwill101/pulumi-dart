// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerMaintenanceWindowStartTime {
  /// Day of the week.
  final pulumi.Input<String> dayOfWeek;
  /// Time, in 24-hour format.
  final pulumi.Input<String> timeOfDay;
  /// Time zone in either the Country/City format or the UTC offset format.
  final pulumi.Input<String> timeZone;

  /// Creates a new [GetBrokerMaintenanceWindowStartTime].
  /// [dayOfWeek] Day of the week.
  /// [timeOfDay] Time, in 24-hour format.
  /// [timeZone] Time zone in either the Country/City format or the UTC offset format.
  const GetBrokerMaintenanceWindowStartTime({
    required this.dayOfWeek,
    required this.timeOfDay,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'timeOfDay': timeOfDay,
      'timeZone': timeZone,
    };
  }

  factory GetBrokerMaintenanceWindowStartTime.fromMap(Map<String, dynamic> map) {
    return GetBrokerMaintenanceWindowStartTime(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      timeOfDay: pulumi.Input.fromValue(map['timeOfDay'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
