// ignore_for_file: unused_element, unnecessary_cast

class BucketIpFilterPublicNetworkSource {
  /// The list of public IPv4 and IPv6 CIDR ranges that can access the bucket and its data.
  final List<String> allowedIpCidrRanges;

  /// Creates a new [BucketIpFilterPublicNetworkSource].
  /// [allowedIpCidrRanges] The list of public IPv4 and IPv6 CIDR ranges that can access the bucket and its data.
  BucketIpFilterPublicNetworkSource({
    required this.allowedIpCidrRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIpCidrRanges'] = allowedIpCidrRanges;
    return map;
  }

  factory BucketIpFilterPublicNetworkSource.fromMap(Map<String, dynamic> map) {
    return BucketIpFilterPublicNetworkSource(
      allowedIpCidrRanges: (map['allowedIpCidrRanges'] as List).cast<String>(),
    );
  }
}
