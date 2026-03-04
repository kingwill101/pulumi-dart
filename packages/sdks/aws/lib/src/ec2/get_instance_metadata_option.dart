// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMetadataOption {
  /// State of the metadata service: `enabled`, `disabled`.
  final pulumi.Input<String> httpEndpoint;

  /// Whether the IPv6 endpoint for the instance metadata service is `enabled` or `disabled`
  final pulumi.Input<String> httpProtocolIpv6;

  /// Desired HTTP PUT response hop limit for instance metadata requests.
  final pulumi.Input<int> httpPutResponseHopLimit;

  /// If session tokens are required: `optional`, `required`.
  final pulumi.Input<String> httpTokens;

  /// If access to instance tags is allowed from the metadata service: `enabled`, `disabled`.
  final pulumi.Input<String> instanceMetadataTags;

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
    return <String, dynamic>{
      'httpEndpoint': httpEndpoint,
      'httpProtocolIpv6': httpProtocolIpv6,
      'httpPutResponseHopLimit': httpPutResponseHopLimit,
      'httpTokens': httpTokens,
      'instanceMetadataTags': instanceMetadataTags,
    };
  }

  factory GetInstanceMetadataOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceMetadataOption(
      httpEndpoint: pulumi.Input.fromValue(map['httpEndpoint'] as String),
      httpProtocolIpv6: pulumi.Input.fromValue(
        map['httpProtocolIpv6'] as String,
      ),
      httpPutResponseHopLimit: pulumi.Input.fromValue(
        map['httpPutResponseHopLimit'] as int,
      ),
      httpTokens: pulumi.Input.fromValue(map['httpTokens'] as String),
      instanceMetadataTags: pulumi.Input.fromValue(
        map['instanceMetadataTags'] as String,
      ),
    );
  }
}
