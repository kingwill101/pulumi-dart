// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiKey resources.
class ApiKeyState {
  /// ID of the associated AppSync API
  final pulumi.Input<String>? apiId;
  final pulumi.Input<String>? apiKeyId;
  /// API key description. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;
  /// RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  final pulumi.Input<String>? expires;
  /// API key
  final pulumi.Input<String>? key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ApiKeyState].
  /// [apiId] ID of the associated AppSync API
  /// [apiKeyId] Optional.
  /// [description] API key description. Defaults to "Managed by Pulumi".
  /// [expires] RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  /// [key] API key
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ApiKeyState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? apiKeyId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expires,
    pulumi.Output<String>? key,
    pulumi.Output<String>? region,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      apiKeyId = pulumi.Input.asOptionalInput<String>(apiKeyId),
      description = pulumi.Input.asOptionalInput<String>(description),
      expires = pulumi.Input.asOptionalInput<String>(expires),
      key = pulumi.Input.asOptionalInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'apiKeyId': ?apiKeyId,
      'description': ?description,
      'expires': ?expires,
      'key': ?key,
      'region': ?region,
    };
  }

  factory ApiKeyState.fromMap(Map<String, dynamic> map) {
    return ApiKeyState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      apiKeyId: map['apiKeyId'] == null ? null : pulumi.Output.create<String>(map['apiKeyId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expires: map['expires'] == null ? null : pulumi.Output.create<String>(map['expires'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

