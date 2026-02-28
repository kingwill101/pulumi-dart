// ignore_for_file: unused_element, unnecessary_cast

class ClusterServerlessv2ScalingConfiguration {
  /// Maximum capacity for an Aurora DB cluster in `provisioned` DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid capacity values are in a range of `0` up to `256` in steps of `0.5`.
  final double maxCapacity;

  /// Minimum capacity for an Aurora DB cluster in `provisioned` DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid capacity values are in a range of `0` up to `256` in steps of `0.5`.
  final double minCapacity;

  /// Time, in seconds, before an Aurora DB cluster in `provisioned` DB engine mode is paused. Valid values are `300` through `86400`.
  final int? secondsUntilAutoPause;

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
    final map = <String, dynamic>{};
    map['maxCapacity'] = maxCapacity;
    map['minCapacity'] = minCapacity;
    final secondsUntilAutoPauseValue = secondsUntilAutoPause;
    if (secondsUntilAutoPauseValue != null) {
      map['secondsUntilAutoPause'] = secondsUntilAutoPauseValue;
    }
    return map;
  }

  factory ClusterServerlessv2ScalingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ClusterServerlessv2ScalingConfiguration(
      maxCapacity: map['maxCapacity'] as double,
      minCapacity: map['minCapacity'] as double,
      secondsUntilAutoPause: map['secondsUntilAutoPause'] == null
          ? null
          : map['secondsUntilAutoPause'] as int,
    );
  }
}
