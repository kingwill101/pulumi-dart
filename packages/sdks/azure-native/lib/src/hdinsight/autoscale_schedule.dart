// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_time_and_capacity.dart';

/// Parameters for a schedule-based autoscale rule, consisting of an array of days + a time and capacity
class AutoscaleSchedule {
  /// Days of the week for a schedule-based autoscale rule
  final pulumi.Input<List<String>>? days;
  /// Time and capacity for a schedule-based autoscale rule
  final pulumi.Input<AutoscaleTimeAndCapacity>? timeAndCapacity;

  /// Creates a new [AutoscaleSchedule].
  /// [days] Days of the week for a schedule-based autoscale rule
  /// [timeAndCapacity] Time and capacity for a schedule-based autoscale rule
  AutoscaleSchedule({
    this.days,
    this.timeAndCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'timeAndCapacity': ?pulumi.Input.mapOptionalInputValue<AutoscaleTimeAndCapacity, Map<String, dynamic>>(timeAndCapacity, (value) => value.toMap()),
    };
  }

  factory AutoscaleSchedule.fromMap(Map<String, dynamic> map) {
    return AutoscaleSchedule(
      days: map['days'] == null ? null : ((map['days'] as List).cast<String>()).input(),
      timeAndCapacity: map['timeAndCapacity'] == null ? null : (AutoscaleTimeAndCapacity.fromMap((map['timeAndCapacity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

