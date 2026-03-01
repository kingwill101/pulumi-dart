// ignore_for_file: unused_element, unnecessary_cast

import 'autoscale_time_and_capacity_response.dart';

/// Parameters for a schedule-based autoscale rule, consisting of an array of days + a time and capacity
class AutoscaleScheduleResponse {
  /// Days of the week for a schedule-based autoscale rule
  final List<String>? days;
  /// Time and capacity for a schedule-based autoscale rule
  final AutoscaleTimeAndCapacityResponse? timeAndCapacity;

  /// Creates a new [AutoscaleScheduleResponse].
  /// [days] Days of the week for a schedule-based autoscale rule
  /// [timeAndCapacity] Time and capacity for a schedule-based autoscale rule
  AutoscaleScheduleResponse({
    this.days,
    this.timeAndCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'timeAndCapacity': ?timeAndCapacity == null ? null : timeAndCapacity!.toMap(),
    };
  }

  factory AutoscaleScheduleResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleScheduleResponse(
      days: map['days'] == null ? null : (map['days'] as List).cast<String>(),
      timeAndCapacity: map['timeAndCapacity'] == null ? null : AutoscaleTimeAndCapacityResponse.fromMap((map['timeAndCapacity'] as Map).cast<String, dynamic>()),
    );
  }
}

