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
  EndpointRdsOptions({
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
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      rdsDbClusterArn: map['rdsDbClusterArn'] == null ? null : ((map['rdsDbClusterArn'] as String).input()).input(),
      rdsDbInstanceArn: map['rdsDbInstanceArn'] == null ? null : ((map['rdsDbInstanceArn'] as String).input()).input(),
      rdsDbProxyArn: map['rdsDbProxyArn'] == null ? null : ((map['rdsDbProxyArn'] as String).input()).input(),
      rdsEndpoint: map['rdsEndpoint'] == null ? null : ((map['rdsEndpoint'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
    );
  }
}

