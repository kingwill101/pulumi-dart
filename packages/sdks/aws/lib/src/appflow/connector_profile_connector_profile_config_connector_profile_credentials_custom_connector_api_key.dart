// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey {
  /// Unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
  final pulumi.Input<String> apiKey;
  /// Secret Access Key portion of the credentials.
  final pulumi.Input<String?>? apiSecretKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey].
  /// [apiKey] Unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
  /// [apiSecretKey] Secret Access Key portion of the credentials.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey({
    required this.apiKey,
    this.apiSecretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'apiSecretKey': ?apiSecretKey,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      apiSecretKey: (() { final guardedValue = map['apiSecretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
