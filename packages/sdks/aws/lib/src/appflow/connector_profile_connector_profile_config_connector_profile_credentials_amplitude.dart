// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude {
  final pulumi.Input<String> apiKey;

  /// The Secret Access Key portion of the credentials.
  final pulumi.Input<String> secretKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude].
  /// [apiKey] Required.
  /// [secretKey] The Secret Access Key portion of the credentials.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude({
    required this.apiKey,
    required this.secretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiKey': apiKey, 'secretKey': secretKey};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      secretKey: pulumi.Input.fromValue(map['secretKey'] as String),
    );
  }
}
