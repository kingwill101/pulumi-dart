// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNetblockIPRanges.
class GetNetblockIPRangesResult {
  /// Retrieve list of all CIDR blocks.
  final List<String> cidrBlocks;

  /// Retrieve list of the IPv4 CIDR blocks
  final List<String> cidrBlocksIpv4s;

  /// Retrieve list of the IPv6 CIDR blocks, if available.
  final List<String> cidrBlocksIpv6s;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? rangeType;

  /// Creates a new [GetNetblockIPRangesResult].
  /// [cidrBlocks] Retrieve list of all CIDR blocks.
  /// [cidrBlocksIpv4s] Retrieve list of the IPv4 CIDR blocks
  /// [cidrBlocksIpv6s] Retrieve list of the IPv6 CIDR blocks, if available.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [rangeType] Optional.
  GetNetblockIPRangesResult({
    required this.cidrBlocks,
    required this.cidrBlocksIpv4s,
    required this.cidrBlocksIpv6s,
    required this.id,
    this.rangeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = cidrBlocks;
    map['cidrBlocksIpv4s'] = cidrBlocksIpv4s;
    map['cidrBlocksIpv6s'] = cidrBlocksIpv6s;
    map['id'] = id;
    final rangeTypeValue = rangeType;
    if (rangeTypeValue != null) {
      map['rangeType'] = rangeTypeValue;
    }
    return map;
  }

  factory GetNetblockIPRangesResult.fromMap(Map<String, dynamic> map) {
    return GetNetblockIPRangesResult(
      cidrBlocks: (map['cidrBlocks'] as List).cast<String>(),
      cidrBlocksIpv4s: (map['cidrBlocksIpv4s'] as List).cast<String>(),
      cidrBlocksIpv6s: (map['cidrBlocksIpv6s'] as List).cast<String>(),
      id: map['id'] as String,
      rangeType: map['rangeType'] == null ? null : map['rangeType'] as String,
    );
  }
}
