// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafv2_api_key_api_key_args_doc}
/// The set of arguments for ApiKey.
/// {@endtemplate}
/// {@macro pulumi_wafv2_api_key_api_key_args_doc}
class ApiKeyArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. Changing this forces a new resource to be created. **NOTE:** WAFv2 API Keys deployed for `CLOUDFRONT` must be created within the `us-east-1` region.
  final pulumi.Input<String> scope;
  /// The domains that you want to be able to use the API key with, for example `example.com`. You can specify up to 5 domains. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> tokenDomains;

  /// Creates a new [ApiKeyArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. Changing this forces a new resource to be created. **NOTE:** WAFv2 API Keys deployed for `CLOUDFRONT` must be created within the `us-east-1` region.
  /// [tokenDomains] The domains that you want to be able to use the API key with, for example `example.com`. You can specify up to 5 domains. Changing this forces a new resource to be created.
  ApiKeyArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> scope,
    required pulumi.Output<List<String>> tokenDomains,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      scope = pulumi.Input.asInput<String>(scope),
      tokenDomains = pulumi.Input.asInput<List<String>>(tokenDomains);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'scope': scope,
      'tokenDomains': tokenDomains,
    };
  }

  factory ApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return ApiKeyArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      tokenDomains: pulumi.Output.create<List<String>>((map['tokenDomains'] as List).cast<String>()),
    );
  }
}

