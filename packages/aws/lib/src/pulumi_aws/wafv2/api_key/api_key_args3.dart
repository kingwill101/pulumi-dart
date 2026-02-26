// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ApiKey.
class ApiKeyArgs3 {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. Changing this forces a new resource to be created. **NOTE:** WAFv2 API Keys deployed for `CLOUDFRONT` must be created within the `us-east-1` region.
  final Input<String> scope;

  /// The domains that you want to be able to use the API key with, for example `example.com`. You can specify up to 5 domains. Changing this forces a new resource to be created.
  final Input<List<String>> tokenDomains;

  ApiKeyArgs3({
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

  factory ApiKeyArgs3.fromMap(Map<String, dynamic> map) {
    return ApiKeyArgs3(
      region: Input.asOptionalInput<String>(map['region']),
      scope: Input.asInput<String>(map['scope']),
      tokenDomains: Input.asInput<List<String>>(map['tokenDomains']),
    );
  }
}
