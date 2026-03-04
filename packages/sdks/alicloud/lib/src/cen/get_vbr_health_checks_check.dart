// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVbrHealthChecksCheck {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String> cenId;

  /// The time interval at which probe packets are sent during the health check.
  final pulumi.Input<int> healthCheckInterval;

  /// The source IP address of the health check.
  final pulumi.Input<String> healthCheckSourceIp;

  /// The destination IP address of the health check.
  final pulumi.Input<String> healthCheckTargetIp;

  /// The number of probe packets that are sent during the health check.
  final pulumi.Input<int> healthyThreshold;

  /// The ID of the CEN VBR Heath Check.
  final pulumi.Input<String> id;

  /// The ID of the VBR instance.
  final pulumi.Input<String> vbrInstanceId;

  /// The ID of the region where the VBR instance is deployed.
  final pulumi.Input<String> vbrInstanceRegionId;

  /// Creates a new [GetVbrHealthChecksCheck].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [healthCheckInterval] The time interval at which probe packets are sent during the health check.
  /// [healthCheckSourceIp] The source IP address of the health check.
  /// [healthCheckTargetIp] The destination IP address of the health check.
  /// [healthyThreshold] The number of probe packets that are sent during the health check.
  /// [id] The ID of the CEN VBR Heath Check.
  /// [vbrInstanceId] The ID of the VBR instance.
  /// [vbrInstanceRegionId] The ID of the region where the VBR instance is deployed.
  GetVbrHealthChecksCheck({
    required this.cenId,
    required this.healthCheckInterval,
    required this.healthCheckSourceIp,
    required this.healthCheckTargetIp,
    required this.healthyThreshold,
    required this.id,
    required this.vbrInstanceId,
    required this.vbrInstanceRegionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'healthCheckInterval': healthCheckInterval,
      'healthCheckSourceIp': healthCheckSourceIp,
      'healthCheckTargetIp': healthCheckTargetIp,
      'healthyThreshold': healthyThreshold,
      'id': id,
      'vbrInstanceId': vbrInstanceId,
      'vbrInstanceRegionId': vbrInstanceRegionId,
    };
  }

  factory GetVbrHealthChecksCheck.fromMap(Map<String, dynamic> map) {
    return GetVbrHealthChecksCheck(
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      healthCheckInterval: pulumi.Input.fromValue(
        map['healthCheckInterval'] as int,
      ),
      healthCheckSourceIp: pulumi.Input.fromValue(
        map['healthCheckSourceIp'] as String,
      ),
      healthCheckTargetIp: pulumi.Input.fromValue(
        map['healthCheckTargetIp'] as String,
      ),
      healthyThreshold: pulumi.Input.fromValue(map['healthyThreshold'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      vbrInstanceId: pulumi.Input.fromValue(map['vbrInstanceId'] as String),
      vbrInstanceRegionId: pulumi.Input.fromValue(
        map['vbrInstanceRegionId'] as String,
      ),
    );
  }
}
