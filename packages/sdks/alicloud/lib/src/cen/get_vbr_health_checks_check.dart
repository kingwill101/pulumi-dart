// ignore_for_file: unused_element, unnecessary_cast


class GetVbrHealthChecksCheck {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final String cenId;
  /// The time interval at which probe packets are sent during the health check.
  final int healthCheckInterval;
  /// The source IP address of the health check.
  final String healthCheckSourceIp;
  /// The destination IP address of the health check.
  final String healthCheckTargetIp;
  /// The number of probe packets that are sent during the health check.
  final int healthyThreshold;
  /// The ID of the CEN VBR Heath Check.
  final String id;
  /// The ID of the VBR instance.
  final String vbrInstanceId;
  /// The ID of the region where the VBR instance is deployed.
  final String vbrInstanceRegionId;

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
      cenId: map['cenId'] as String,
      healthCheckInterval: map['healthCheckInterval'] as int,
      healthCheckSourceIp: map['healthCheckSourceIp'] as String,
      healthCheckTargetIp: map['healthCheckTargetIp'] as String,
      healthyThreshold: map['healthyThreshold'] as int,
      id: map['id'] as String,
      vbrInstanceId: map['vbrInstanceId'] as String,
      vbrInstanceRegionId: map['vbrInstanceRegionId'] as String,
    );
  }
}

