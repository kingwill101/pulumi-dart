// ignore_for_file: unused_element, unnecessary_cast

class GetBucketIpFilterPublicNetworkSource {
  /// The list of public IPv4, IPv6 cidr ranges that are allowed to access the bucket.
  final List<String> allowedIpCidrRanges;

  /// Creates a new [GetBucketIpFilterPublicNetworkSource].
  /// [allowedIpCidrRanges] The list of public IPv4, IPv6 cidr ranges that are allowed to access the bucket.
  GetBucketIpFilterPublicNetworkSource({
    required this.allowedIpCidrRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIpCidrRanges'] = allowedIpCidrRanges;
    return map;
  }

  factory GetBucketIpFilterPublicNetworkSource.fromMap(
      Map<String, dynamic> map) {
    return GetBucketIpFilterPublicNetworkSource(
      allowedIpCidrRanges: (map['allowedIpCidrRanges'] as List).cast<String>(),
    );
  }
}
