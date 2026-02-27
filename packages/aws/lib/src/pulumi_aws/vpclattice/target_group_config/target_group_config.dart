// ignore_for_file: unused_element, unnecessary_cast

import '../target_group_config_health_check/target_group_config_health_check.dart';

class TargetGroupConfig {
  /// The health check configuration.
  final TargetGroupConfigHealthCheck? healthCheck;

  /// The type of IP address used for the target group. Valid values: `IPV4` | `IPV6`.
  final String? ipAddressType;

  /// The version of the event structure that the Lambda function receives. Supported only if `type` is `LAMBDA`. Valid Values are `V1` | `V2`.
  final String? lambdaEventStructureVersion;

  /// The port on which the targets are listening.
  final int? port;

  /// The protocol to use for routing traffic to the targets. Valid Values are `HTTP` | `HTTPS`.
  final String? protocol;

  /// The protocol version. Valid Values are `HTTP1` | `HTTP2` | `GRPC`. Default value is `HTTP1`.
  final String? protocolVersion;

  /// The ID of the VPC.
  final String? vpcIdentifier;

  TargetGroupConfig({
    this.healthCheck,
    this.ipAddressType,
    this.lambdaEventStructureVersion,
    this.port,
    this.protocol,
    this.protocolVersion,
    this.vpcIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue.toMap();
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final lambdaEventStructureVersionValue = lambdaEventStructureVersion;
    if (lambdaEventStructureVersionValue != null) {
      map['lambdaEventStructureVersion'] = lambdaEventStructureVersionValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final protocolVersionValue = protocolVersion;
    if (protocolVersionValue != null) {
      map['protocolVersion'] = protocolVersionValue;
    }
    final vpcIdentifierValue = vpcIdentifier;
    if (vpcIdentifierValue != null) {
      map['vpcIdentifier'] = vpcIdentifierValue;
    }
    return map;
  }

  factory TargetGroupConfig.fromMap(Map<String, dynamic> map) {
    return TargetGroupConfig(
      healthCheck: map['healthCheck'] == null
          ? null
          : TargetGroupConfigHealthCheck.fromMap(
              (map['healthCheck'] as Map).cast<String, dynamic>()),
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      lambdaEventStructureVersion: map['lambdaEventStructureVersion'] == null
          ? null
          : map['lambdaEventStructureVersion'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      protocolVersion: map['protocolVersion'] == null
          ? null
          : map['protocolVersion'] as String,
      vpcIdentifier:
          map['vpcIdentifier'] == null ? null : map['vpcIdentifier'] as String,
    );
  }
}
