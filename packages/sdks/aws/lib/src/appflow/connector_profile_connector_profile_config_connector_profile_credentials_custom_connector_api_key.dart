// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey {
  final pulumi.Input<String> apiKey;
  final pulumi.Input<String>? apiSecretKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey].
  /// [apiKey] Required.
  /// [apiSecretKey] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey({
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
      apiKey: (map['apiKey'] as String).input(),
      apiSecretKey: map['apiSecretKey'] == null ? null : (map['apiSecretKey'] as String).input(),
    );
  }
}

