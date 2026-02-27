// ignore_for_file: unused_element, unnecessary_cast

class GetSubnetworksSubnetwork {
  /// Description of the subnetwork.
  final String description;

  /// The IP address range represented as a CIDR block.
  final String ipCidrRange;

  /// The name of the subnetwork.
  final String name;

  /// The self link of the parent network.
  final String network;

  /// The name of the parent network computed from `network` attribute.
  final String networkName;

  /// (Deprecated) The name of the parent network computed from `network` attribute. (deprecated and will be removed in a future major release. Use `network_name` instead.)
  final String networkSelfLink;

  /// Whether the VMs in the subnet can access Google services without assigned external IP addresses.
  final bool privateIpGoogleAccess;

  /// The self link of the subnetwork.
  final String selfLink;

  GetSubnetworksSubnetwork({
    required this.description,
    required this.ipCidrRange,
    required this.name,
    required this.network,
    required this.networkName,
    required this.networkSelfLink,
    required this.privateIpGoogleAccess,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['ipCidrRange'] = ipCidrRange;
    map['name'] = name;
    map['network'] = network;
    map['networkName'] = networkName;
    map['networkSelfLink'] = networkSelfLink;
    map['privateIpGoogleAccess'] = privateIpGoogleAccess;
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetSubnetworksSubnetwork.fromMap(Map<String, dynamic> map) {
    return GetSubnetworksSubnetwork(
      description: map['description'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkName: map['networkName'] as String,
      networkSelfLink: map['networkSelfLink'] as String,
      privateIpGoogleAccess: map['privateIpGoogleAccess'] as bool,
      selfLink: map['selfLink'] as String,
    );
  }
}
