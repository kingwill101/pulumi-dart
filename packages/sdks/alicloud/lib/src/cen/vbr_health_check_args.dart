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
  /// -&gt;**NOTE:** The `alicloud.cen.VbrHealthCheck` resource depends on the related `alicloud.cen.InstanceAttachment` resource.
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
  const VbrHealthCheckArgs({
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
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      healthCheckInterval: (() { final guardedValue = map['healthCheckInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheckSourceIp: (() { final guardedValue = map['healthCheckSourceIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckTargetIp: pulumi.Input.fromValue(map['healthCheckTargetIp'] as String),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vbrInstanceId: pulumi.Input.fromValue(map['vbrInstanceId'] as String),
      vbrInstanceOwnerId: (() { final guardedValue = map['vbrInstanceOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vbrInstanceRegionId: pulumi.Input.fromValue(map['vbrInstanceRegionId'] as String),
    );
  }
}

