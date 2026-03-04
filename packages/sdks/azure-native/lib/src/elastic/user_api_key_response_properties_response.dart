// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserApiKeyResponsePropertiesResponse {
  /// The User Api Key Generated based on GenerateApiKey flag. This is applicable for non-Portal clients only.
  final pulumi.Input<String>? apiKey;

  /// Creates a new [UserApiKeyResponsePropertiesResponse].
  /// [apiKey] The User Api Key Generated based on GenerateApiKey flag. This is applicable for non-Portal clients only.
  UserApiKeyResponsePropertiesResponse({this.apiKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiKey': ?apiKey};
  }

  factory UserApiKeyResponsePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserApiKeyResponsePropertiesResponse(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
