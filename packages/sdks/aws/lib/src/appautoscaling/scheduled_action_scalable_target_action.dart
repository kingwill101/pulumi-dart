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
  ScheduledActionScalableTargetAction({
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
      maxCapacity: map['maxCapacity'] == null ? null : ((map['maxCapacity'] as int).input()).input(),
      minCapacity: map['minCapacity'] == null ? null : ((map['minCapacity'] as int).input()).input(),
    );
  }
}

