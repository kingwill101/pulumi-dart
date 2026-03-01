// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateMetadataOption {
  final String httpEndpoint;
  final String httpProtocolIpv6;
  final int httpPutResponseHopLimit;
  final String httpTokens;
  final String instanceMetadataTags;

  /// Creates a new [GetLaunchTemplateMetadataOption].
  /// [httpEndpoint] Required.
  /// [httpProtocolIpv6] Required.
  /// [httpPutResponseHopLimit] Required.
  /// [httpTokens] Required.
  /// [instanceMetadataTags] Required.
  GetLaunchTemplateMetadataOption({
    required this.httpEndpoint,
    required this.httpProtocolIpv6,
    required this.httpPutResponseHopLimit,
    required this.httpTokens,
    required this.instanceMetadataTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEndpoint': httpEndpoint,
      'httpProtocolIpv6': httpProtocolIpv6,
      'httpPutResponseHopLimit': httpPutResponseHopLimit,
      'httpTokens': httpTokens,
      'instanceMetadataTags': instanceMetadataTags,
    };
  }

  factory GetLaunchTemplateMetadataOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateMetadataOption(
      httpEndpoint: map['httpEndpoint'] as String,
      httpProtocolIpv6: map['httpProtocolIpv6'] as String,
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] as int,
      httpTokens: map['httpTokens'] as String,
      instanceMetadataTags: map['instanceMetadataTags'] as String,
    );
  }
}
