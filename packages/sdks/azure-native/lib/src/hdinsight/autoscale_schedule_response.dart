// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_time_and_capacity_response.dart';

/// Parameters for a schedule-based autoscale rule, consisting of an array of days + a time and capacity
class AutoscaleScheduleResponse {
  /// Days of the week for a schedule-based autoscale rule
  final pulumi.Input<List<String>?>? days;
  /// Time and capacity for a schedule-based autoscale rule
  final pulumi.Input<AutoscaleTimeAndCapacityResponse?>? timeAndCapacity;

  /// Creates a new [AutoscaleScheduleResponse].
  /// [days] Days of the week for a schedule-based autoscale rule
  /// [timeAndCapacity] Time and capacity for a schedule-based autoscale rule
  const AutoscaleScheduleResponse({
    this.days,
    this.timeAndCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'timeAndCapacity': ?pulumi.Input.mapOptionalInputValue<AutoscaleTimeAndCapacityResponse, Map<String, dynamic>>(timeAndCapacity, (value) => value.toMap()),
    };
  }

  factory AutoscaleScheduleResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleScheduleResponse(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeAndCapacity: (() { final guardedValue = map['timeAndCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleTimeAndCapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
