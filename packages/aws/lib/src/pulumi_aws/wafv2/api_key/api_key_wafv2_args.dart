// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ApiKey.
class ApiKeyWafv2Args {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. Changing this forces a new resource to be created. **NOTE:** WAFv2 API Keys deployed for `CLOUDFRONT` must be created within the `us-east-1` region.
  final pulumi.Input<String> scope;

  /// The domains that you want to be able to use the API key with, for example `example.com`. You can specify up to 5 domains. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> tokenDomains;

  ApiKeyWafv2Args({
    this.region,
    required this.scope,
    required this.tokenDomains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scope'] = scope;
    map['tokenDomains'] = tokenDomains;
    return map;
  }

  factory ApiKeyWafv2Args.fromMap(Map<String, dynamic> map) {
    return ApiKeyWafv2Args(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scope: pulumi.Input.asInput<String>(map['scope']),
      tokenDomains: pulumi.Input.asInput<List<String>>(map['tokenDomains']),
    );
  }
}
