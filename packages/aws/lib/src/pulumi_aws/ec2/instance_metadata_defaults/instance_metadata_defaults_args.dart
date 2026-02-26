// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceMetadataDefaults.
class InstanceMetadataDefaultsArgs {
  /// Whether the metadata service is available. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  final Input<String>? httpEndpoint;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, or `-1` to indicate no preference. Default: `-1`.
  final Input<int>? httpPutResponseHopLimit;

  /// Whether the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"`, `"required"`, or `"no-preference"`. Default: `"no-preference"`.
  final Input<String>? httpTokens;

  /// Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  final Input<String>? instanceMetadataTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      httpEndpoint: Input.asOptionalInput<String>(map['httpEndpoint']),
      httpPutResponseHopLimit:
          Input.asOptionalInput<int>(map['httpPutResponseHopLimit']),
      httpTokens: Input.asOptionalInput<String>(map['httpTokens']),
      instanceMetadataTags:
          Input.asOptionalInput<String>(map['instanceMetadataTags']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
