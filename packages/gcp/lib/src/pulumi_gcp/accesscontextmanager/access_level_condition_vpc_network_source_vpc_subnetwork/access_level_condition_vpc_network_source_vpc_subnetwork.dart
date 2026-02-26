// ignore_for_file: unused_element, unnecessary_cast

class AccessLevelConditionVpcNetworkSourceVpcSubnetwork {
  /// Required. Network name to be allowed by this Access Level. Networks of foreign organizations requires `compute.network.get` permission to be granted to caller.
  final String network;

  /// CIDR block IP subnetwork specification. Must be IPv4.
  final List<String>? vpcIpSubnetworks;

  AccessLevelConditionVpcNetworkSourceVpcSubnetwork({
    required this.network,
    this.vpcIpSubnetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    final vpcIpSubnetworksValue = vpcIpSubnetworks;
    if (vpcIpSubnetworksValue != null) {
      map['vpcIpSubnetworks'] = vpcIpSubnetworksValue;
    }
    return map;
  }

  factory AccessLevelConditionVpcNetworkSourceVpcSubnetwork.fromMap(
      Map<String, dynamic> map) {
    return AccessLevelConditionVpcNetworkSourceVpcSubnetwork(
      network: map['network'] as String,
      vpcIpSubnetworks: map['vpcIpSubnetworks'] == null
          ? null
          : (map['vpcIpSubnetworks'] as List).cast<String>(),
    );
  }
}
