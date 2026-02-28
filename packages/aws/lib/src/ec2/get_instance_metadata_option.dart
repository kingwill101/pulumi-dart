// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMetadataOption {
  /// State of the metadata service: `enabled`, `disabled`.
  final String httpEndpoint;

  /// Whether the IPv6 endpoint for the instance metadata service is `enabled` or `disabled`
  final String httpProtocolIpv6;

  /// Desired HTTP PUT response hop limit for instance metadata requests.
  final int httpPutResponseHopLimit;

  /// If session tokens are required: `optional`, `required`.
  final String httpTokens;

  /// If access to instance tags is allowed from the metadata service: `enabled`, `disabled`.
  final String instanceMetadataTags;

  /// Creates a new [GetInstanceMetadataOption].
  /// [httpEndpoint] State of the metadata service: `enabled`, `disabled`.
  /// [httpProtocolIpv6] Whether the IPv6 endpoint for the instance metadata service is `enabled` or `disabled`
  /// [httpPutResponseHopLimit] Desired HTTP PUT response hop limit for instance metadata requests.
  /// [httpTokens] If session tokens are required: `optional`, `required`.
  /// [instanceMetadataTags] If access to instance tags is allowed from the metadata service: `enabled`, `disabled`.
  GetInstanceMetadataOption({
    required this.httpEndpoint,
    required this.httpProtocolIpv6,
    required this.httpPutResponseHopLimit,
    required this.httpTokens,
    required this.instanceMetadataTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpEndpoint'] = httpEndpoint;
    map['httpProtocolIpv6'] = httpProtocolIpv6;
    map['httpPutResponseHopLimit'] = httpPutResponseHopLimit;
    map['httpTokens'] = httpTokens;
    map['instanceMetadataTags'] = instanceMetadataTags;
    return map;
  }

  factory GetInstanceMetadataOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceMetadataOption(
      httpEndpoint: map['httpEndpoint'] as String,
      httpProtocolIpv6: map['httpProtocolIpv6'] as String,
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] as int,
      httpTokens: map['httpTokens'] as String,
      instanceMetadataTags: map['instanceMetadataTags'] as String,
    );
  }
}
