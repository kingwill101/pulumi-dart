// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateMetadataOption {
  final pulumi.Input<String> httpEndpoint;
  final pulumi.Input<String> httpProtocolIpv6;
  final pulumi.Input<int> httpPutResponseHopLimit;
  final pulumi.Input<String> httpTokens;
  final pulumi.Input<String> instanceMetadataTags;

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
      httpEndpoint: (map['httpEndpoint'] as String).input(),
      httpProtocolIpv6: (map['httpProtocolIpv6'] as String).input(),
      httpPutResponseHopLimit: (map['httpPutResponseHopLimit'] as int).input(),
      httpTokens: (map['httpTokens'] as String).input(),
      instanceMetadataTags: (map['instanceMetadataTags'] as String).input(),
    );
  }
}

