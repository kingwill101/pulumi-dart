// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude {
  final String apiKey;

  /// The Secret Access Key portion of the credentials.
  final String secretKey;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude({
    required this.apiKey,
    required this.secretKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKey'] = apiKey;
    map['secretKey'] = secretKey;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude(
      apiKey: map['apiKey'] as String,
      secretKey: map['secretKey'] as String,
    );
  }
}
