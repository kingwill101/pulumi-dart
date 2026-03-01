// ignore_for_file: unused_element, unnecessary_cast

import 'target_group_config_health_check.dart';

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

  /// Creates a new [TargetGroupConfig].
  /// [healthCheck] The health check configuration.
  /// [ipAddressType] The type of IP address used for the target group. Valid values: `IPV4` | `IPV6`.
  /// [lambdaEventStructureVersion] The version of the event structure that the Lambda function receives. Supported only if `type` is `LAMBDA`. Valid Values are `V1` | `V2`.
  /// [port] The port on which the targets are listening.
  /// [protocol] The protocol to use for routing traffic to the targets. Valid Values are `HTTP` | `HTTPS`.
  /// [protocolVersion] The protocol version. Valid Values are `HTTP1` | `HTTP2` | `GRPC`. Default value is `HTTP1`.
  /// [vpcIdentifier] The ID of the VPC.
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
    return <String, dynamic>{
      'healthCheck': ?healthCheck == null ? null : healthCheck!.toMap(),
      'ipAddressType': ?ipAddressType,
      'lambdaEventStructureVersion': ?lambdaEventStructureVersion,
      'port': ?port,
      'protocol': ?protocol,
      'protocolVersion': ?protocolVersion,
      'vpcIdentifier': ?vpcIdentifier,
    };
  }

  factory TargetGroupConfig.fromMap(Map<String, dynamic> map) {
    return TargetGroupConfig(
      healthCheck: map['healthCheck'] == null ? null : TargetGroupConfigHealthCheck.fromMap((map['healthCheck'] as Map).cast<String, dynamic>()),
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      lambdaEventStructureVersion: map['lambdaEventStructureVersion'] == null ? null : map['lambdaEventStructureVersion'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      protocolVersion: map['protocolVersion'] == null ? null : map['protocolVersion'] as String,
      vpcIdentifier: map['vpcIdentifier'] == null ? null : map['vpcIdentifier'] as String,
    );
  }
}

