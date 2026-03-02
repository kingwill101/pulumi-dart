// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateMetadataOptions {
  /// Whether the metadata service is available. Can be `"enabled"` or `"disabled"`. (Default: `"enabled"`).
  final pulumi.Input<String>? httpEndpoint;
  /// Enables or disables the IPv6 endpoint for the instance metadata service. Can be `"enabled"` or `"disabled"`.
  final pulumi.Input<String>? httpProtocolIpv6;
  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from `1` to `64`. (Default: `1`).
  final pulumi.Input<int>? httpPutResponseHopLimit;
  /// Whether or not the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"` or `"required"`. (Default: `"optional"`).
  final pulumi.Input<String>? httpTokens;
  /// Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"` or `"disabled"`.
  ///
  /// For more information, see the documentation on the [Instance Metadata Service](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html).
  final pulumi.Input<String>? instanceMetadataTags;

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
    return <String, dynamic>{
      'httpEndpoint': ?httpEndpoint,
      'httpProtocolIpv6': ?httpProtocolIpv6,
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens,
      'instanceMetadataTags': ?instanceMetadataTags,
    };
  }

  factory LaunchTemplateMetadataOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateMetadataOptions(
      httpEndpoint: map['httpEndpoint'] == null ? null : ((map['httpEndpoint'] as String).input()).input(),
      httpProtocolIpv6: map['httpProtocolIpv6'] == null ? null : ((map['httpProtocolIpv6'] as String).input()).input(),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : ((map['httpPutResponseHopLimit'] as int).input()).input(),
      httpTokens: map['httpTokens'] == null ? null : ((map['httpTokens'] as String).input()).input(),
      instanceMetadataTags: map['instanceMetadataTags'] == null ? null : ((map['instanceMetadataTags'] as String).input()).input(),
    );
  }
}

