// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateMetadataOption {
  final String httpEndpoint;
  final String httpProtocolIpv6;
  final int httpPutResponseHopLimit;
  final String httpTokens;
  final String instanceMetadataTags;

  GetLaunchTemplateMetadataOption({
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
