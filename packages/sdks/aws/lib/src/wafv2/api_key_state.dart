// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiKey resources.
class ApiKeyState {
  /// The generated API key. This value is sensitive.
  final pulumi.Input<String>? apiKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. Changing this forces a new resource to be created. **NOTE:** WAFv2 API Keys deployed for `CLOUDFRONT` must be created within the `us-east-1` region.
  final pulumi.Input<String>? scope;
  /// The domains that you want to be able to use the API key with, for example `example.com`. You can specify up to 5 domains. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? tokenDomains;

  /// Creates a new [ApiKeyState].
  /// [apiKey] The generated API key. This value is sensitive.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. Changing this forces a new resource to be created. **NOTE:** WAFv2 API Keys deployed for `CLOUDFRONT` must be created within the `us-east-1` region.
  /// [tokenDomains] The domains that you want to be able to use the API key with, for example `example.com`. You can specify up to 5 domains. Changing this forces a new resource to be created.
  ApiKeyState({
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scope,
    pulumi.Output<List<String>>? tokenDomains,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      tokenDomains = pulumi.Input.asOptionalInput<List<String>>(tokenDomains);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'region': ?region,
      'scope': ?scope,
      'tokenDomains': ?tokenDomains,
    };
  }

  factory ApiKeyState.fromMap(Map<String, dynamic> map) {
    return ApiKeyState(
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      tokenDomains: map['tokenDomains'] == null ? null : pulumi.Output.create<List<String>>((map['tokenDomains'] as List).cast<String>()),
    );
  }
}

