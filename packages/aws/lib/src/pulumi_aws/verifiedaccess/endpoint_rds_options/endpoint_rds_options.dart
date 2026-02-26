// ignore_for_file: unused_element, unnecessary_cast

class EndpointRdsOptions {
  final int? port;
  final String? protocol;
  final String? rdsDbClusterArn;
  final String? rdsDbInstanceArn;
  final String? rdsDbProxyArn;
  final String? rdsEndpoint;
  final List<String>? subnetIds;

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
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final rdsDbClusterArnValue = rdsDbClusterArn;
    if (rdsDbClusterArnValue != null) {
      map['rdsDbClusterArn'] = rdsDbClusterArnValue;
    }
    final rdsDbInstanceArnValue = rdsDbInstanceArn;
    if (rdsDbInstanceArnValue != null) {
      map['rdsDbInstanceArn'] = rdsDbInstanceArnValue;
    }
    final rdsDbProxyArnValue = rdsDbProxyArn;
    if (rdsDbProxyArnValue != null) {
      map['rdsDbProxyArn'] = rdsDbProxyArnValue;
    }
    final rdsEndpointValue = rdsEndpoint;
    if (rdsEndpointValue != null) {
      map['rdsEndpoint'] = rdsEndpointValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    return map;
  }

  factory EndpointRdsOptions.fromMap(Map<String, dynamic> map) {
    return EndpointRdsOptions(
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      rdsDbClusterArn: map['rdsDbClusterArn'] == null
          ? null
          : map['rdsDbClusterArn'] as String,
      rdsDbInstanceArn: map['rdsDbInstanceArn'] == null
          ? null
          : map['rdsDbInstanceArn'] as String,
      rdsDbProxyArn:
          map['rdsDbProxyArn'] == null ? null : map['rdsDbProxyArn'] as String,
      rdsEndpoint:
          map['rdsEndpoint'] == null ? null : map['rdsEndpoint'] as String,
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
    );
  }
}
