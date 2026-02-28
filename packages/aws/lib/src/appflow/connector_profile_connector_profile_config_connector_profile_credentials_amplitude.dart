// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude {
  final String apiKey;
  /// The Secret Access Key portion of the credentials.
  final String secretKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude].
  /// [apiKey] Required.
  /// [secretKey] The Secret Access Key portion of the credentials.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude({
    required this.apiKey,
    required this.secretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'secretKey': secretKey,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude(
      apiKey: map['apiKey'] as String,
      secretKey: map['secretKey'] as String,
    );
  }
}

