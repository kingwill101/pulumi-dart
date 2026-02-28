// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateMetadataOptions {
  /// Whether the metadata service is available. Can be `"enabled"` or `"disabled"`. (Default: `"enabled"`).
  final String? httpEndpoint;

  /// Enables or disables the IPv6 endpoint for the instance metadata service. Can be `"enabled"` or `"disabled"`.
  final String? httpProtocolIpv6;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from `1` to `64`. (Default: `1`).
  final int? httpPutResponseHopLimit;

  /// Whether or not the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"` or `"required"`. (Default: `"optional"`).
  final String? httpTokens;

  /// Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"` or `"disabled"`.
  ///
  /// For more information, see the documentation on the [Instance Metadata Service](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html).
  final String? instanceMetadataTags;

  /// Creates a new [LaunchTemplateMetadataOptions].
  /// [httpEndpoint] Whether the metadata service is available. Can be `"enabled"` or `"disabled"`. (Default: `"enabled"`).
  /// [httpProtocolIpv6] Enables or disables the IPv6 endpoint for the instance metadata service. Can be `"enabled"` or `"disabled"`.
  /// [httpPutResponseHopLimit] The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from `1` to `64`. (Default: `1`).
  /// [httpTokens] Whether or not the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"` or `"required"`. (Default: `"optional"`).
  /// [instanceMetadataTags] Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"` or `"disabled"`.
  LaunchTemplateMetadataOptions({
    this.httpEndpoint,
    this.httpProtocolIpv6,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpEndpointValue = httpEndpoint;
    if (httpEndpointValue != null) {
      map['httpEndpoint'] = httpEndpointValue;
    }
    final httpProtocolIpv6Value = httpProtocolIpv6;
    if (httpProtocolIpv6Value != null) {
      map['httpProtocolIpv6'] = httpProtocolIpv6Value;
    }
    final httpPutResponseHopLimitValue = httpPutResponseHopLimit;
    if (httpPutResponseHopLimitValue != null) {
      map['httpPutResponseHopLimit'] = httpPutResponseHopLimitValue;
    }
    final httpTokensValue = httpTokens;
    if (httpTokensValue != null) {
      map['httpTokens'] = httpTokensValue;
    }
    final instanceMetadataTagsValue = instanceMetadataTags;
    if (instanceMetadataTagsValue != null) {
      map['instanceMetadataTags'] = instanceMetadataTagsValue;
    }
    return map;
  }

  factory LaunchTemplateMetadataOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateMetadataOptions(
      httpEndpoint:
          map['httpEndpoint'] == null ? null : map['httpEndpoint'] as String,
      httpProtocolIpv6: map['httpProtocolIpv6'] == null
          ? null
          : map['httpProtocolIpv6'] as String,
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null
          ? null
          : map['httpPutResponseHopLimit'] as int,
      httpTokens:
          map['httpTokens'] == null ? null : map['httpTokens'] as String,
      instanceMetadataTags: map['instanceMetadataTags'] == null
          ? null
          : map['instanceMetadataTags'] as String,
    );
  }
}
