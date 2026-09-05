// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_config_health_check.dart';

class TargetGroupConfig {
  /// Health check configuration. See `healthCheck` Block below.
  final pulumi.Input<TargetGroupConfigHealthCheck?>? healthCheck;
  /// Type of IP address used for the target group. Valid values: `IPV4` or `IPV6`.
  final pulumi.Input<String?>? ipAddressType;
  /// Version of the event structure that the Lambda function receives. Supported only if `type` is `LAMBDA`. Valid values are `V1` or `V2`.
  final pulumi.Input<String?>? lambdaEventStructureVersion;
  /// Port on which the targets are listening.
  final pulumi.Input<int?>? port;
  /// Protocol to use for routing traffic to the targets. Valid values are `HTTP` or `HTTPS`.
  final pulumi.Input<String?>? protocol;
  /// Protocol version. Valid values are `HTTP1`, `HTTP2`, or `GRPC`. Default value is `HTTP1`.
  final pulumi.Input<String?>? protocolVersion;
  /// ID of the VPC.
  final pulumi.Input<String?>? vpcIdentifier;

  /// Creates a new [TargetGroupConfig].
  /// [healthCheck] Health check configuration. See `healthCheck` Block below.
  /// [ipAddressType] Type of IP address used for the target group. Valid values: `IPV4` or `IPV6`.
  /// [lambdaEventStructureVersion] Version of the event structure that the Lambda function receives. Supported only if `type` is `LAMBDA`. Valid values are `V1` or `V2`.
  /// [port] Port on which the targets are listening.
  /// [protocol] Protocol to use for routing traffic to the targets. Valid values are `HTTP` or `HTTPS`.
  /// [protocolVersion] Protocol version. Valid values are `HTTP1`, `HTTP2`, or `GRPC`. Default value is `HTTP1`.
  /// [vpcIdentifier] ID of the VPC.
  const TargetGroupConfig({
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
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<TargetGroupConfigHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
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
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetGroupConfigHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambdaEventStructureVersion: (() { final guardedValue = map['lambdaEventStructureVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolVersion: (() { final guardedValue = map['protocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcIdentifier: (() { final guardedValue = map['vpcIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
