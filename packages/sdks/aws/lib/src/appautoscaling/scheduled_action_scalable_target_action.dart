// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledActionScalableTargetAction {
  /// Maximum capacity. At least one of `max_capacity` or `min_capacity` must be set.
  final pulumi.Input<int>? maxCapacity;
  /// Minimum capacity. At least one of `min_capacity` or `max_capacity` must be set.
  final pulumi.Input<int>? minCapacity;

  /// Creates a new [ScheduledActionScalableTargetAction].
  /// [maxCapacity] Maximum capacity. At least one of `max_capacity` or `min_capacity` must be set.
  /// [minCapacity] Minimum capacity. At least one of `min_capacity` or `max_capacity` must be set.
  const ScheduledActionScalableTargetAction({
    this.maxCapacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': ?minCapacity,
    };
  }

  factory ScheduledActionScalableTargetAction.fromMap(Map<String, dynamic> map) {
    return ScheduledActionScalableTargetAction(
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

