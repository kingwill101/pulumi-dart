// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointRdsOptions {
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<String>? rdsDbClusterArn;
  final pulumi.Input<String>? rdsDbInstanceArn;
  final pulumi.Input<String>? rdsDbProxyArn;
  final pulumi.Input<String>? rdsEndpoint;
  final pulumi.Input<List<String>>? subnetIds;

  /// Creates a new [EndpointRdsOptions].
  /// [port] Optional.
  /// [protocol] Optional.
  /// [rdsDbClusterArn] Optional.
  /// [rdsDbInstanceArn] Optional.
  /// [rdsDbProxyArn] Optional.
  /// [rdsEndpoint] Optional.
  /// [subnetIds] Optional.
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
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsDbClusterArn: (() { final guardedValue = map['rdsDbClusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsDbInstanceArn: (() { final guardedValue = map['rdsDbInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsDbProxyArn: (() { final guardedValue = map['rdsDbProxyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdsEndpoint: (() { final guardedValue = map['rdsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

