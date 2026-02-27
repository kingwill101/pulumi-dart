// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceMetadataDefaults.
class InstanceMetadataDefaultsArgs {
  /// Whether the metadata service is available. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  final pulumi.Input<String>? httpEndpoint;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from `1` to `64`, or `-1` to indicate no preference. Default: `-1`.
  final pulumi.Input<int>? httpPutResponseHopLimit;

  /// Whether the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"`, `"required"`, or `"no-preference"`. Default: `"no-preference"`.
  final pulumi.Input<String>? httpTokens;

  /// Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  final pulumi.Input<String>? instanceMetadataTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  InstanceMetadataDefaultsArgs({
    this.httpEndpoint,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpEndpointValue = httpEndpoint;
    if (httpEndpointValue != null) {
      map['httpEndpoint'] = httpEndpointValue;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InstanceMetadataDefaultsArgs.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataDefaultsArgs(
      httpEndpoint: pulumi.Input.asOptionalInput<String>(map['httpEndpoint']),
      httpPutResponseHopLimit:
          pulumi.Input.asOptionalInput<int>(map['httpPutResponseHopLimit']),
      httpTokens: pulumi.Input.asOptionalInput<String>(map['httpTokens']),
      instanceMetadataTags:
          pulumi.Input.asOptionalInput<String>(map['instanceMetadataTags']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
