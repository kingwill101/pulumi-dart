// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceNetworkingIpv4Vpc {
  /// Returns `true` if the VPC interface is in use, meaning that the Linode was powered on using the `config_id` to which the interface belongs. Otherwise returns `false`.
  final bool active;
  /// The address.
  final String address;
  /// A range of IPv4 addresses configured for this VPC interface. it will be `null` if it's a single `address`.
  final String addressRange;
  /// The globally general entity identifier for the Linode configuration profile where the VPC is included.
  final int configId;
  /// The default gateway for this address.
  final String gateway;
  /// The globally general API entity identifier for the Linode interface.
  final int interfaceId;
  /// The Linode instance's ID.
  final int linodeId;
  /// The public IP address used for NAT 1:1 with the VPC. This is `null` if the VPC interface uses an `address_range` or NAT 1:1 isn't used.
  final String nat11;
  /// The network prefix.
  final int prefix;
  /// (Filterable) The Region this address resides in.
  final String region;
  /// The unique globally general API entity identifier for the VPC subnet.
  final int subnetId;
  /// The subnet mask.
  final String subnetMask;
  /// The unique globally general API entity identifier for the VPC.
  final int vpcId;

  /// Creates a new [GetInstanceNetworkingIpv4Vpc].
  /// [active] Returns `true` if the VPC interface is in use, meaning that the Linode was powered on using the `config_id` to which the interface belongs. Otherwise returns `false`.
  /// [address] The address.
  /// [addressRange] A range of IPv4 addresses configured for this VPC interface. it will be `null` if it's a single `address`.
  /// [configId] The globally general entity identifier for the Linode configuration profile where the VPC is included.
  /// [gateway] The default gateway for this address.
  /// [interfaceId] The globally general API entity identifier for the Linode interface.
  /// [linodeId] The Linode instance's ID.
  /// [nat11] The public IP address used for NAT 1:1 with the VPC. This is `null` if the VPC interface uses an `address_range` or NAT 1:1 isn't used.
  /// [prefix] The network prefix.
  /// [region] (Filterable) The Region this address resides in.
  /// [subnetId] The unique globally general API entity identifier for the VPC subnet.
  /// [subnetMask] The subnet mask.
  /// [vpcId] The unique globally general API entity identifier for the VPC.
  GetInstanceNetworkingIpv4Vpc({
    required this.active,
    required this.address,
    required this.addressRange,
    required this.configId,
    required this.gateway,
    required this.interfaceId,
    required this.linodeId,
    required this.nat11,
    required this.prefix,
    required this.region,
    required this.subnetId,
    required this.subnetMask,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'address': address,
      'addressRange': addressRange,
      'configId': configId,
      'gateway': gateway,
      'interfaceId': interfaceId,
      'linodeId': linodeId,
      'nat11': nat11,
      'prefix': prefix,
      'region': region,
      'subnetId': subnetId,
      'subnetMask': subnetMask,
      'vpcId': vpcId,
    };
  }

  factory GetInstanceNetworkingIpv4Vpc.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv4Vpc(
      active: map['active'] as bool,
      address: map['address'] as String,
      addressRange: map['addressRange'] as String,
      configId: map['configId'] as int,
      gateway: map['gateway'] as String,
      interfaceId: map['interfaceId'] as int,
      linodeId: map['linodeId'] as int,
      nat11: map['nat11'] as String,
      prefix: map['prefix'] as int,
      region: map['region'] as String,
      subnetId: map['subnetId'] as int,
      subnetMask: map['subnetMask'] as String,
      vpcId: map['vpcId'] as int,
    );
  }
}

