// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestMetadataOptions {
  /// Whether the metadata service is available. Valid values include `enabled` or `disabled`. Defaults to `enabled`.
  final String? httpEndpoint;

  /// Whether the IPv6 endpoint for the instance metadata service is enabled. Defaults to `disabled`.
  final String? httpProtocolIpv6;

  /// Desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Valid values are integer from `1` to `64`. Defaults to `1`.
  final int? httpPutResponseHopLimit;

  /// Whether or not the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Valid values include `optional` or `required`.
  final String? httpTokens;

  /// Enables or disables access to instance tags from the instance metadata service. Valid values include `enabled` or `disabled`. Defaults to `disabled`.
  ///
  /// For more information, see the documentation on the [Instance Metadata Service](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html).
  final String? instanceMetadataTags;

  /// Creates a new [SpotInstanceRequestMetadataOptions].
  /// [httpEndpoint] Whether the metadata service is available. Valid values include `enabled` or `disabled`. Defaults to `enabled`.
  /// [httpProtocolIpv6] Whether the IPv6 endpoint for the instance metadata service is enabled. Defaults to `disabled`.
  /// [httpPutResponseHopLimit] Desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Valid values are integer from `1` to `64`. Defaults to `1`.
  /// [httpTokens] Whether or not the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Valid values include `optional` or `required`.
  /// [instanceMetadataTags] Enables or disables access to instance tags from the instance metadata service. Valid values include `enabled` or `disabled`. Defaults to `disabled`.
  SpotInstanceRequestMetadataOptions({
    this.httpEndpoint,
    this.httpProtocolIpv6,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEndpoint': ?httpEndpoint,
      'httpProtocolIpv6': ?httpProtocolIpv6,
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens,
      'instanceMetadataTags': ?instanceMetadataTags,
    };
  }

  factory SpotInstanceRequestMetadataOptions.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestMetadataOptions(
      httpEndpoint: map['httpEndpoint'] == null
          ? null
          : map['httpEndpoint'] as String,
      httpProtocolIpv6: map['httpProtocolIpv6'] == null
          ? null
          : map['httpProtocolIpv6'] as String,
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null
          ? null
          : map['httpPutResponseHopLimit'] as int,
      httpTokens: map['httpTokens'] == null
          ? null
          : map['httpTokens'] as String,
      instanceMetadataTags: map['instanceMetadataTags'] == null
          ? null
          : map['instanceMetadataTags'] as String,
    );
  }
}
