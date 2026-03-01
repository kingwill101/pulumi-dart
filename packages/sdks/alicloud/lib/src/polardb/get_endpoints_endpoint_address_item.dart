// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointsEndpointAddressItem {
  /// Connection instance string.
  final String connectionString;
  /// The ip address of connection string.
  final String ipAddress;
  /// IP network type:`Public` or `Private`.
  final String netType;
  /// Intranet connection port.
  final String port;
  /// ID of the VPC the instance belongs to.
  final String vpcId;
  /// ID of the vSwitch the cluster belongs to.
  final String vswitchId;

  /// Creates a new [GetEndpointsEndpointAddressItem].
  /// [connectionString] Connection instance string.
  /// [ipAddress] The ip address of connection string.
  /// [netType] IP network type:`Public` or `Private`.
  /// [port] Intranet connection port.
  /// [vpcId] ID of the VPC the instance belongs to.
  /// [vswitchId] ID of the vSwitch the cluster belongs to.
  GetEndpointsEndpointAddressItem({
    required this.connectionString,
    required this.ipAddress,
    required this.netType,
    required this.port,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'ipAddress': ipAddress,
      'netType': netType,
      'port': port,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetEndpointsEndpointAddressItem.fromMap(Map<String, dynamic> map) {
    return GetEndpointsEndpointAddressItem(
      connectionString: map['connectionString'] as String,
      ipAddress: map['ipAddress'] as String,
      netType: map['netType'] as String,
      port: map['port'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

