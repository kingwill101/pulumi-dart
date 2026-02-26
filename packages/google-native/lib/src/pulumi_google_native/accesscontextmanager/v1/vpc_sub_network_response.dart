// ignore_for_file: unused_element, unnecessary_cast

/// Sub-segment ranges inside of a VPC Network.
class VpcSubNetworkResponse {
  /// Network name. If the network is not part of the organization, the `compute.network.get` permission must be granted to the caller. Format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NETWORK_NAME}` Example: `//compute.googleapis.com/projects/my-project/global/networks/network-1`
  final String network;

  /// CIDR block IP subnetwork specification. The IP address must be an IPv4 address and can be a public or private IP address. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. If empty, all IP addresses are allowed.
  final List<String> vpcIpSubnetworks;

  VpcSubNetworkResponse({
    required this.network,
    required this.vpcIpSubnetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['vpcIpSubnetworks'] = vpcIpSubnetworks;
    return map;
  }

  factory VpcSubNetworkResponse.fromMap(Map<String, dynamic> map) {
    return VpcSubNetworkResponse(
      network: map['network'] as String,
      vpcIpSubnetworks: (map['vpcIpSubnetworks'] as List).cast<String>(),
    );
  }
}
