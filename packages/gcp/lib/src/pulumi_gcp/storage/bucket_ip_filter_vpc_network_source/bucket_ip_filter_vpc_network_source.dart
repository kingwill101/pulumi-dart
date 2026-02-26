// ignore_for_file: unused_element, unnecessary_cast

class BucketIpFilterVpcNetworkSource {
  /// The list of public or private IPv4 and IPv6 CIDR ranges that can access the bucket.
  final List<String> allowedIpCidrRanges;

  /// Name of the network. Format: `projects/PROJECT_ID/global/networks/NETWORK_NAME`
  final String network;

  BucketIpFilterVpcNetworkSource({
    required this.allowedIpCidrRanges,
    required this.network,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIpCidrRanges'] = allowedIpCidrRanges;
    map['network'] = network;
    return map;
  }

  factory BucketIpFilterVpcNetworkSource.fromMap(Map<String, dynamic> map) {
    return BucketIpFilterVpcNetworkSource(
      allowedIpCidrRanges: (map['allowedIpCidrRanges'] as List).cast<String>(),
      network: map['network'] as String,
    );
  }
}
