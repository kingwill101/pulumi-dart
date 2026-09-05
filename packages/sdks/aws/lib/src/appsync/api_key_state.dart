// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiKey resources.
class ApiKeyState {
  /// ID of the associated AppSync API
  final pulumi.Input<String?>? apiId;
  /// ID of the API key.
  final pulumi.Input<String?>? apiKeyId;
  /// API key description. Defaults to "Managed by Pulumi".
  final pulumi.Input<String?>? description;
  /// RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  final pulumi.Input<String?>? expires;
  /// API key
  final pulumi.Input<String?>? key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ApiKeyState].
  /// [apiId] ID of the associated AppSync API
  /// [apiKeyId] ID of the API key.
  /// [description] API key description. Defaults to "Managed by Pulumi".
  /// [expires] RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  /// [key] API key
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ApiKeyState({
    this.apiId,
    this.apiKeyId,
    pulumi.Input<String?>? description,
    this.expires,
    this.key,
    this.region,
  }) : description = description ?? pulumi.Input.fromValue('Managed by Pulumi');

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
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyId: (() { final guardedValue = map['apiKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
