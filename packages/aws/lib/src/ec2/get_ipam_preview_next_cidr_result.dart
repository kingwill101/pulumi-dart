// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIpamPreviewNextCidr.
class GetIpamPreviewNextCidrResult {
  /// Previewed CIDR from the pool.
  final String cidr;
  final List<String>? disallowedCidrs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipamPoolId;
  final int? netmaskLength;
  final String region;

  /// Creates a new [GetIpamPreviewNextCidrResult].
  /// [cidr] Previewed CIDR from the pool.
  /// [disallowedCidrs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipamPoolId] Required.
  /// [netmaskLength] Optional.
  /// [region] Required.
  GetIpamPreviewNextCidrResult({
    required this.cidr,
    this.disallowedCidrs,
    required this.id,
    required this.ipamPoolId,
    this.netmaskLength,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    final disallowedCidrsValue = disallowedCidrs;
    if (disallowedCidrsValue != null) {
      map['disallowedCidrs'] = disallowedCidrsValue;
    }
    map['id'] = id;
    map['ipamPoolId'] = ipamPoolId;
    final netmaskLengthValue = netmaskLength;
    if (netmaskLengthValue != null) {
      map['netmaskLength'] = netmaskLengthValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetIpamPreviewNextCidrResult.fromMap(Map<String, dynamic> map) {
    return GetIpamPreviewNextCidrResult(
      cidr: map['cidr'] as String,
      disallowedCidrs: map['disallowedCidrs'] == null
          ? null
          : (map['disallowedCidrs'] as List).cast<String>(),
      id: map['id'] as String,
      ipamPoolId: map['ipamPoolId'] as String,
      netmaskLength:
          map['netmaskLength'] == null ? null : map['netmaskLength'] as int,
      region: map['region'] as String,
    );
  }
}
