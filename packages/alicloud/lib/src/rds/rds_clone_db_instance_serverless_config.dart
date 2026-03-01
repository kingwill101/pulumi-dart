// ignore_for_file: unused_element, unnecessary_cast


class RdsCloneDbInstanceServerlessConfig {
  /// Specifies whether to enable the smart startup and stop feature for the serverless instance. Valid values:
  /// - true: enables the feature.
  /// - false: disables the feature. This is the default value.
  /// > - Only MySQL Serverless instances need to set this parameter. If there is no connection within 10 minutes, it will enter a paused state and automatically wake up when the connection enters.
  final bool? autoPause;
  /// The maximum number of RDS Capacity Units (RCUs). The value of this parameter must be greater than or equal to `min_capacity` and only supports passing integers. Valid values:
  /// - MySQL: 1~8
  /// - SQLServer: 2~8
  /// - PostgreSQL: 1~12
  final double maxCapacity;
  /// The minimum number of RCUs. The value of this parameter must be less than or equal to `max_capacity`. Valid values:
  /// - MySQL: 0.5~8
  /// - SQLServer: 2~8 \(Supports integers only\).
  /// - PostgreSQL: 0.5~12
  final double minCapacity;
  /// Specifies whether to enable the forced scaling feature for the serverless instance. Valid values:
  /// - true: enables the feature.
  /// - false: disables the feature. This is the default value.
  /// > - Only MySQL Serverless instances need to set this parameter. After enabling this parameter, there will be a flash break within 1 minute when the instance is forced to expand or shrink. Please use it with caution according to the actual situation.
  /// > - The elastic scaling of an instance RCU usually takes effect immediately, but in some special circumstances (such as during large transaction execution), it is not possible to complete scaling immediately. In this case, this parameter can be enabled to force scaling.
  final bool? switchForce;

  /// Creates a new [RdsCloneDbInstanceServerlessConfig].
  /// [autoPause] Specifies whether to enable the smart startup and stop feature for the serverless instance. Valid values:
  /// [maxCapacity] The maximum number of RDS Capacity Units (RCUs). The value of this parameter must be greater than or equal to `min_capacity` and only supports passing integers. Valid values:
  /// [minCapacity] The minimum number of RCUs. The value of this parameter must be less than or equal to `max_capacity`. Valid values:
  /// [switchForce] Specifies whether to enable the forced scaling feature for the serverless instance. Valid values:
  RdsCloneDbInstanceServerlessConfig({
    this.autoPause,
    required this.maxCapacity,
    required this.minCapacity,
    this.switchForce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPause': ?autoPause,
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
      'switchForce': ?switchForce,
    };
  }

  factory RdsCloneDbInstanceServerlessConfig.fromMap(Map<String, dynamic> map) {
    return RdsCloneDbInstanceServerlessConfig(
      autoPause: map['autoPause'] == null ? null : map['autoPause'] as bool,
      maxCapacity: map['maxCapacity'] as double,
      minCapacity: map['minCapacity'] as double,
      switchForce: map['switchForce'] == null ? null : map['switchForce'] as bool,
    );
  }
}

