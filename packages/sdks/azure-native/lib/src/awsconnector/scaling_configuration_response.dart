// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ScalingConfiguration
class ScalingConfigurationResponse {
  /// A value that indicates whether to allow or disallow automatic pause for an Aurora DB cluster in serverless DB engine mode. A DB cluster can be paused only when it's idle (it has no connections).
  final pulumi.Input<bool>? autoPause;
  /// The maximum capacity for an Aurora DB cluster in serverless DB engine mode.For Aurora MySQL, valid capacity values are 1, 2, 4, 8, 16, 32, 64, 128, and 256.For Aurora PostgreSQL, valid capacity values are 2, 4, 8, 16, 32, 64, 192, and 384.The maximum capacity must be greater than or equal to the minimum capacity.
  final pulumi.Input<int>? maxCapacity;
  /// The minimum capacity for an Aurora DB cluster in serverless DB engine mode.For Aurora MySQL, valid capacity values are 1, 2, 4, 8, 16, 32, 64, 128, and 256.For Aurora PostgreSQL, valid capacity values are 2, 4, 8, 16, 32, 64, 192, and 384.The minimum capacity must be less than or equal to the maximum capacity.
  final pulumi.Input<int>? minCapacity;
  /// The amount of time, in seconds, that Aurora Serverless v1 tries to find a scaling point to perform seamless scaling before enforcing the timeout action.The default is 300.
  final pulumi.Input<int>? secondsBeforeTimeout;
  /// The time, in seconds, before an Aurora DB cluster in serverless mode is paused.
  final pulumi.Input<int>? secondsUntilAutoPause;
  /// The action to take when the timeout is reached, either ForceApplyCapacityChange or RollbackCapacityChange.ForceApplyCapacityChange sets the capacity to the specified value as soon as possible.RollbackCapacityChange, the default, ignores the capacity change if a scaling point isn't found in the timeout period.For more information, see Autoscaling for Aurora Serverless v1 in the Amazon Aurora User Guide.
  final pulumi.Input<String>? timeoutAction;

  /// Creates a new [ScalingConfigurationResponse].
  /// [autoPause] A value that indicates whether to allow or disallow automatic pause for an Aurora DB cluster in serverless DB engine mode. A DB cluster can be paused only when it's idle (it has no connections).
  /// [maxCapacity] The maximum capacity for an Aurora DB cluster in serverless DB engine mode.For Aurora MySQL, valid capacity values are 1, 2, 4, 8, 16, 32, 64, 128, and 256.For Aurora PostgreSQL, valid capacity values are 2, 4, 8, 16, 32, 64, 192, and 384.The maximum capacity must be greater than or equal to the minimum capacity.
  /// [minCapacity] The minimum capacity for an Aurora DB cluster in serverless DB engine mode.For Aurora MySQL, valid capacity values are 1, 2, 4, 8, 16, 32, 64, 128, and 256.For Aurora PostgreSQL, valid capacity values are 2, 4, 8, 16, 32, 64, 192, and 384.The minimum capacity must be less than or equal to the maximum capacity.
  /// [secondsBeforeTimeout] The amount of time, in seconds, that Aurora Serverless v1 tries to find a scaling point to perform seamless scaling before enforcing the timeout action.The default is 300.
  /// [secondsUntilAutoPause] The time, in seconds, before an Aurora DB cluster in serverless mode is paused.
  /// [timeoutAction] The action to take when the timeout is reached, either ForceApplyCapacityChange or RollbackCapacityChange.ForceApplyCapacityChange sets the capacity to the specified value as soon as possible.RollbackCapacityChange, the default, ignores the capacity change if a scaling point isn't found in the timeout period.For more information, see Autoscaling for Aurora Serverless v1 in the Amazon Aurora User Guide.
  ScalingConfigurationResponse({
    this.autoPause,
    this.maxCapacity,
    this.minCapacity,
    this.secondsBeforeTimeout,
    this.secondsUntilAutoPause,
    this.timeoutAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPause': ?autoPause,
      'maxCapacity': ?maxCapacity,
      'minCapacity': ?minCapacity,
      'secondsBeforeTimeout': ?secondsBeforeTimeout,
      'secondsUntilAutoPause': ?secondsUntilAutoPause,
      'timeoutAction': ?timeoutAction,
    };
  }

  factory ScalingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ScalingConfigurationResponse(
      autoPause: map['autoPause'] == null ? null : (map['autoPause']! as bool).input(),
      maxCapacity: map['maxCapacity'] == null ? null : (map['maxCapacity']! as int).input(),
      minCapacity: map['minCapacity'] == null ? null : (map['minCapacity']! as int).input(),
      secondsBeforeTimeout: map['secondsBeforeTimeout'] == null ? null : (map['secondsBeforeTimeout']! as int).input(),
      secondsUntilAutoPause: map['secondsUntilAutoPause'] == null ? null : (map['secondsUntilAutoPause']! as int).input(),
      timeoutAction: map['timeoutAction'] == null ? null : (map['timeoutAction']! as String).input(),
    );
  }
}

