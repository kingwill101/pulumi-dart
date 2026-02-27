// ignore_for_file: unused_element, unnecessary_cast

class ClusterScalingConfiguration {
  /// Whether to enable automatic pause. A DB cluster can be paused only when it's idle (it has no connections). If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot. In this case, the DB cluster is restored when there is a request to connect to it. Defaults to `true`.
  final bool? autoPause;

  /// Maximum capacity for an Aurora DB cluster in `serverless` DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid Aurora MySQL capacity values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `128`, `256`. Valid Aurora PostgreSQL capacity values are (`2`, `4`, `8`, `16`, `32`, `64`, `192`, and `384`). Defaults to `16`.
  final int? maxCapacity;

  /// Minimum capacity for an Aurora DB cluster in `serverless` DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid Aurora MySQL capacity values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `128`, `256`. Valid Aurora PostgreSQL capacity values are (`2`, `4`, `8`, `16`, `32`, `64`, `192`, and `384`). Defaults to `1`.
  final int? minCapacity;

  /// Amount of time, in seconds, that Aurora Serverless v1 tries to find a scaling point to perform seamless scaling before enforcing the timeout action. Valid values are `60` through `600`. Defaults to `300`.
  final int? secondsBeforeTimeout;

  /// Time, in seconds, before an Aurora DB cluster in serverless mode is paused. Valid values are `300` through `86400`. Defaults to `300`.
  final int? secondsUntilAutoPause;

  /// Action to take when the timeout is reached. Valid values: `ForceApplyCapacityChange`, `RollbackCapacityChange`. Defaults to `RollbackCapacityChange`. See [documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v1.how-it-works.html#aurora-serverless.how-it-works.timeout-action).
  final String? timeoutAction;

  ClusterScalingConfiguration({
    this.autoPause,
    this.maxCapacity,
    this.minCapacity,
    this.secondsBeforeTimeout,
    this.secondsUntilAutoPause,
    this.timeoutAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoPauseValue = autoPause;
    if (autoPauseValue != null) {
      map['autoPause'] = autoPauseValue;
    }
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    final minCapacityValue = minCapacity;
    if (minCapacityValue != null) {
      map['minCapacity'] = minCapacityValue;
    }
    final secondsBeforeTimeoutValue = secondsBeforeTimeout;
    if (secondsBeforeTimeoutValue != null) {
      map['secondsBeforeTimeout'] = secondsBeforeTimeoutValue;
    }
    final secondsUntilAutoPauseValue = secondsUntilAutoPause;
    if (secondsUntilAutoPauseValue != null) {
      map['secondsUntilAutoPause'] = secondsUntilAutoPauseValue;
    }
    final timeoutActionValue = timeoutAction;
    if (timeoutActionValue != null) {
      map['timeoutAction'] = timeoutActionValue;
    }
    return map;
  }

  factory ClusterScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterScalingConfiguration(
      autoPause: map['autoPause'] == null ? null : map['autoPause'] as bool,
      maxCapacity:
          map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity:
          map['minCapacity'] == null ? null : map['minCapacity'] as int,
      secondsBeforeTimeout: map['secondsBeforeTimeout'] == null
          ? null
          : map['secondsBeforeTimeout'] as int,
      secondsUntilAutoPause: map['secondsUntilAutoPause'] == null
          ? null
          : map['secondsUntilAutoPause'] as int,
      timeoutAction:
          map['timeoutAction'] == null ? null : map['timeoutAction'] as String,
    );
  }
}
