// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthParametersApiKeyAuthParameters {
  /// The name of the API key.
  final pulumi.Input<String>? apiKeyName;
  /// The value of the API key.
  final pulumi.Input<String>? apiKeyValue;

  /// Creates a new [ConnectionAuthParametersApiKeyAuthParameters].
  /// [apiKeyName] The name of the API key.
  /// [apiKeyValue] The value of the API key.
  ConnectionAuthParametersApiKeyAuthParameters({
    this.apiKeyName,
    this.apiKeyValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyName': ?apiKeyName,
      'apiKeyValue': ?apiKeyValue,
    };
  }

  factory ConnectionAuthParametersApiKeyAuthParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersApiKeyAuthParameters(
      apiKeyName: map['apiKeyName'] == null ? null : (map['apiKeyName']! as String).input(),
      apiKeyValue: map['apiKeyValue'] == null ? null : (map['apiKeyValue']! as String).input(),
    );
  }
}

