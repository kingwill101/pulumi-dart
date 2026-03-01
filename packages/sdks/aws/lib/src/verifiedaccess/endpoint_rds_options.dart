// ignore_for_file: unused_element, unnecessary_cast


class EndpointRdsOptions {
  final int? port;
  final String? protocol;
  final String? rdsDbClusterArn;
  final String? rdsDbInstanceArn;
  final String? rdsDbProxyArn;
  final String? rdsEndpoint;
  final List<String>? subnetIds;

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
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      rdsDbClusterArn: map['rdsDbClusterArn'] == null ? null : map['rdsDbClusterArn'] as String,
      rdsDbInstanceArn: map['rdsDbInstanceArn'] == null ? null : map['rdsDbInstanceArn'] as String,
      rdsDbProxyArn: map['rdsDbProxyArn'] == null ? null : map['rdsDbProxyArn'] as String,
      rdsEndpoint: map['rdsEndpoint'] == null ? null : map['rdsEndpoint'] as String,
      subnetIds: map['subnetIds'] == null ? null : (map['subnetIds'] as List).cast<String>(),
    );
  }
}

