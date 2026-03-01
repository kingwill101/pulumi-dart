// ignore_for_file: unused_element, unnecessary_cast

class GetBucketIpFilterVpcNetworkSource {
  /// The list of public or private IPv4 and IPv6 CIDR ranges that can access the bucket.
  final List<String> allowedIpCidrRanges;

  /// Name of the network. Format: projects/{PROJECT_ID}/global/networks/{NETWORK_NAME}
  final String network;

  /// Creates a new [GetBucketIpFilterVpcNetworkSource].
  /// [allowedIpCidrRanges] The list of public or private IPv4 and IPv6 CIDR ranges that can access the bucket.
  /// [network] Name of the network. Format: projects/{PROJECT_ID}/global/networks/{NETWORK_NAME}
  GetBucketIpFilterVpcNetworkSource({
    required this.allowedIpCidrRanges,
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpCidrRanges': allowedIpCidrRanges,
      'network': network,
    };
  }

  factory GetBucketIpFilterVpcNetworkSource.fromMap(Map<String, dynamic> map) {
    return GetBucketIpFilterVpcNetworkSource(
      allowedIpCidrRanges: (map['allowedIpCidrRanges'] as List).cast<String>(),
      network: map['network'] as String,
    );
  }
}
