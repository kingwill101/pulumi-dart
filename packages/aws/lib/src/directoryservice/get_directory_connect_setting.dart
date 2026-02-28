// ignore_for_file: unused_element, unnecessary_cast

class GetDirectoryConnectSetting {
  final List<String> availabilityZones;

  /// IP addresses of the AD Connector servers.
  final List<String> connectIps;

  /// DNS IP addresses of the domain to connect to.
  final List<String> customerDnsIps;

  /// Username corresponding to the password provided.
  final String customerUsername;

  /// Identifiers of the subnets for the connector servers (2 subnets in 2 different AZs).
  final List<String> subnetIds;

  /// ID of the VPC that the connector is in.
  final String vpcId;

  /// Creates a new [GetDirectoryConnectSetting].
  /// [availabilityZones] Required.
  /// [connectIps] IP addresses of the AD Connector servers.
  /// [customerDnsIps] DNS IP addresses of the domain to connect to.
  /// [customerUsername] Username corresponding to the password provided.
  /// [subnetIds] Identifiers of the subnets for the connector servers (2 subnets in 2 different AZs).
  /// [vpcId] ID of the VPC that the connector is in.
  GetDirectoryConnectSetting({
    required this.availabilityZones,
    required this.connectIps,
    required this.customerDnsIps,
    required this.customerUsername,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZones'] = availabilityZones;
    map['connectIps'] = connectIps;
    map['customerDnsIps'] = customerDnsIps;
    map['customerUsername'] = customerUsername;
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetDirectoryConnectSetting.fromMap(Map<String, dynamic> map) {
    return GetDirectoryConnectSetting(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      connectIps: (map['connectIps'] as List).cast<String>(),
      customerDnsIps: (map['customerDnsIps'] as List).cast<String>(),
      customerUsername: map['customerUsername'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
