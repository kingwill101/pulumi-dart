// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterServerlessv2ScalingConfiguration {
  /// Maximum capacity for an Aurora DB cluster in `provisioned` DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid capacity values are in a range of `0` up to `256` in steps of `0.5`.
  final pulumi.Input<double> maxCapacity;
  /// Minimum capacity for an Aurora DB cluster in `provisioned` DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid capacity values are in a range of `0` up to `256` in steps of `0.5`.
  final pulumi.Input<double> minCapacity;
  /// Time, in seconds, before an Aurora DB cluster in `provisioned` DB engine mode is paused. Valid values are `300` through `86400`.
  final pulumi.Input<int>? secondsUntilAutoPause;

  /// Creates a new [ClusterServerlessv2ScalingConfiguration].
  /// [maxCapacity] Maximum capacity for an Aurora DB cluster in `provisioned` DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid capacity values are in a range of `0` up to `256` in steps of `0.5`.
  /// [minCapacity] Minimum capacity for an Aurora DB cluster in `provisioned` DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid capacity values are in a range of `0` up to `256` in steps of `0.5`.
  /// [secondsUntilAutoPause] Time, in seconds, before an Aurora DB cluster in `provisioned` DB engine mode is paused. Valid values are `300` through `86400`.
  ClusterServerlessv2ScalingConfiguration({
    required this.maxCapacity,
    required this.minCapacity,
    this.secondsUntilAutoPause,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
      'secondsUntilAutoPause': ?secondsUntilAutoPause,
    };
  }

  factory ClusterServerlessv2ScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterServerlessv2ScalingConfiguration(
      maxCapacity: pulumi.Input.fromValue(map['maxCapacity'] as double),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as double),
      secondsUntilAutoPause: (() { final guardedValue = map['secondsUntilAutoPause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

