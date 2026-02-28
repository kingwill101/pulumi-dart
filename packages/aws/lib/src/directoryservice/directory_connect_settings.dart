// ignore_for_file: unused_element, unnecessary_cast

class DirectoryConnectSettings {
  final List<String>? availabilityZones;

  /// The IP addresses of the AD Connector servers.
  final List<String>? connectIps;

  /// The DNS IP addresses of the domain to connect to.
  final List<String> customerDnsIps;

  /// The username corresponding to the password provided.
  final String customerUsername;

  /// The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs).
  final List<String> subnetIds;

  /// The identifier of the VPC that the directory is in.
  final String vpcId;

  /// Creates a new [DirectoryConnectSettings].
  /// [availabilityZones] Optional.
  /// [connectIps] The IP addresses of the AD Connector servers.
  /// [customerDnsIps] The DNS IP addresses of the domain to connect to.
  /// [customerUsername] The username corresponding to the password provided.
  /// [subnetIds] The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs).
  /// [vpcId] The identifier of the VPC that the directory is in.
  DirectoryConnectSettings({
    this.availabilityZones,
    this.connectIps,
    required this.customerDnsIps,
    required this.customerUsername,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZonesValue = availabilityZones;
    if (availabilityZonesValue != null) {
      map['availabilityZones'] = availabilityZonesValue;
    }
    final connectIpsValue = connectIps;
    if (connectIpsValue != null) {
      map['connectIps'] = connectIpsValue;
    }
    map['customerDnsIps'] = customerDnsIps;
    map['customerUsername'] = customerUsername;
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory DirectoryConnectSettings.fromMap(Map<String, dynamic> map) {
    return DirectoryConnectSettings(
      availabilityZones: map['availabilityZones'] == null
          ? null
          : (map['availabilityZones'] as List).cast<String>(),
      connectIps: map['connectIps'] == null
          ? null
          : (map['connectIps'] as List).cast<String>(),
      customerDnsIps: (map['customerDnsIps'] as List).cast<String>(),
      customerUsername: map['customerUsername'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
