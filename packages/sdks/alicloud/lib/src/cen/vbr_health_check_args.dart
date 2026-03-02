// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_vbr_health_check_vbr_health_check_args_doc}
/// The set of arguments for VbrHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_cen_vbr_health_check_vbr_health_check_args_doc}
class VbrHealthCheckArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// Specifies the interval at which the health check sends continuous detection packets. Default value: 2. Value range: 2 to 3.
  final pulumi.Input<int>? healthCheckInterval;
  /// The source IP address of health checks.
  final pulumi.Input<String>? healthCheckSourceIp;
  /// The destination IP address of health checks.
  final pulumi.Input<String> healthCheckTargetIp;
  /// Specifies the number of probe messages sent by the health check. Default value: 8. Value range: 3 to 8.
  final pulumi.Input<int>? healthyThreshold;
  /// The ID of the VBR.
  final pulumi.Input<String> vbrInstanceId;
  /// The ID of the account to which the VBR belongs.
  final pulumi.Input<int>? vbrInstanceOwnerId;
  /// The ID of the region to which the VBR belongs.
  ///
  /// ->**NOTE:** The `alicloud.cen.VbrHealthCheck` resource depends on the related `alicloud.cen.InstanceAttachment` resource.
  final pulumi.Input<String> vbrInstanceRegionId;

  /// Creates a new [VbrHealthCheckArgs].
  /// [cenId] The ID of the CEN instance.
  /// [healthCheckInterval] Specifies the interval at which the health check sends continuous detection packets. Default value: 2. Value range: 2 to 3.
  /// [healthCheckSourceIp] The source IP address of health checks.
  /// [healthCheckTargetIp] The destination IP address of health checks.
  /// [healthyThreshold] Specifies the number of probe messages sent by the health check. Default value: 8. Value range: 3 to 8.
  /// [vbrInstanceId] The ID of the VBR.
  /// [vbrInstanceOwnerId] The ID of the account to which the VBR belongs.
  /// [vbrInstanceRegionId] The ID of the region to which the VBR belongs.
  VbrHealthCheckArgs({
    required this.cenId,
    this.healthCheckInterval,
    this.healthCheckSourceIp,
    required this.healthCheckTargetIp,
    this.healthyThreshold,
    required this.vbrInstanceId,
    this.vbrInstanceOwnerId,
    required this.vbrInstanceRegionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'healthCheckInterval': ?healthCheckInterval,
      'healthCheckSourceIp': ?healthCheckSourceIp,
      'healthCheckTargetIp': healthCheckTargetIp,
      'healthyThreshold': ?healthyThreshold,
      'vbrInstanceId': vbrInstanceId,
      'vbrInstanceOwnerId': ?vbrInstanceOwnerId,
      'vbrInstanceRegionId': vbrInstanceRegionId,
    };
  }

  factory VbrHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return VbrHealthCheckArgs(
      cenId: (map['cenId'] as String).input(),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : (map['healthCheckInterval'] as int).input(),
      healthCheckSourceIp: map['healthCheckSourceIp'] == null ? null : (map['healthCheckSourceIp'] as String).input(),
      healthCheckTargetIp: (map['healthCheckTargetIp'] as String).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold'] as int).input(),
      vbrInstanceId: (map['vbrInstanceId'] as String).input(),
      vbrInstanceOwnerId: map['vbrInstanceOwnerId'] == null ? null : (map['vbrInstanceOwnerId'] as int).input(),
      vbrInstanceRegionId: (map['vbrInstanceRegionId'] as String).input(),
    );
  }
}

