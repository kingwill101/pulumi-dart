// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointRdsOptions {
  /// IP port number.
  final pulumi.Input<int?>? port;
  /// Protocol. Currently `tcp` is supported.
  final pulumi.Input<String?>? protocol;
  /// ARN of the RDS cluster.
  final pulumi.Input<String?>? rdsDbClusterArn;
  /// ARN of the RDS instance.
  final pulumi.Input<String?>? rdsDbInstanceArn;
  /// ARN of the RDS proxy.
  final pulumi.Input<String?>? rdsDbProxyArn;
  /// RDS endpoint.
  final pulumi.Input<String?>? rdsEndpoint;
  /// IDs of the subnets.
  final pulumi.Input<List<String>?>? subnetIds;

  /// Creates a new [EndpointRdsOptions].
  /// [port] IP port number.
  /// [protocol] Protocol. Currently `tcp` is supported.
  /// [rdsDbClusterArn] ARN of the RDS cluster.
  /// [rdsDbInstanceArn] ARN of the RDS instance.
  /// [rdsDbProxyArn] ARN of the RDS proxy.
  /// [rdsEndpoint] RDS endpoint.
  /// [subnetIds] IDs of the subnets.
  const EndpointRdsOptions({
    this.port,
    this.protocol,
    this.rdsDbClusterArn,
    this.rdsDbInstanceArn,
    this.rdsDbProxyArn,
    this.rdsEndpoint,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
      'rdsDbClusterArn': ?rdsDbClusterArn,
      'rdsDbInstanceArn': ?rdsDbInstanceArn,
      'rdsDbProxyArn': ?rdsDbProxyArn,
      'rdsEndpoint': ?rdsEndpoint,
      'subnetIds': ?subnetIds,
    };
  }

  factory EndpointRdsOptions.fromMap(Map<String, dynamic> map) {
    return EndpointRdsOptions(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsDbClusterArn: (() { final guardedValue = map['rdsDbClusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsDbInstanceArn: (() { final guardedValue = map['rdsDbInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsDbProxyArn: (() { final guardedValue = map['rdsDbProxyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsEndpoint: (() { final guardedValue = map['rdsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
