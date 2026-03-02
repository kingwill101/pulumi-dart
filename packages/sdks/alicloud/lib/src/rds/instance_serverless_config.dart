// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceServerlessConfig {
  final pulumi.Input<bool>? autoPause;
  /// The maximum number of RDS Capacity Units (RCUs). The value of this parameter must be greater than or equal to `min_capacity` and only supports passing integers. Valid values:
  /// - MySQL: 1~8
  /// - SQLServer: 2~8
  /// - PostgreSQL: 1~12
  final pulumi.Input<double> maxCapacity;
  /// The minimum number of RCUs. The value of this parameter must be less than or equal to `max_capacity`. Valid values:
  /// - MySQL: 0.5~8
  /// - SQLServer: 2~8 \(Supports integers only\).
  /// - PostgreSQL: 0.5~12
  final pulumi.Input<double> minCapacity;
  /// Specifies whether to enable the forced scaling feature for the serverless instance. Valid values:
  /// - true: enables the feature.
  /// - false: disables the feature. This is the default value.
  /// > - Only MySQL Serverless instances need to set this parameter. After enabling this parameter, there will be a flash break within 1 minute when the instance is forced to expand or shrink. Please use it with caution according to the actual situation.
  /// > - The elastic scaling of an instance RCU usually takes effect immediately, but in some special circumstances (such as during large transaction execution), it is not possible to complete scaling immediately. In this case, this parameter can be enabled to force scaling.
  final pulumi.Input<bool>? switchForce;

  /// Creates a new [InstanceServerlessConfig].
  /// [autoPause] Optional.
  /// [maxCapacity] The maximum number of RDS Capacity Units (RCUs). The value of this parameter must be greater than or equal to `min_capacity` and only supports passing integers. Valid values:
  /// [minCapacity] The minimum number of RCUs. The value of this parameter must be less than or equal to `max_capacity`. Valid values:
  /// [switchForce] Specifies whether to enable the forced scaling feature for the serverless instance. Valid values:
  InstanceServerlessConfig({
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

  factory InstanceServerlessConfig.fromMap(Map<String, dynamic> map) {
    return InstanceServerlessConfig(
      autoPause: map['autoPause'] == null ? null : (map['autoPause'] as bool).input(),
      maxCapacity: (map['maxCapacity'] as double).input(),
      minCapacity: (map['minCapacity'] as double).input(),
      switchForce: map['switchForce'] == null ? null : (map['switchForce'] as bool).input(),
    );
  }
}

