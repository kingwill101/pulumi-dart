// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro {
  final String apiSecretKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro].
  /// [apiSecretKey] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro({
    required this.apiSecretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiSecretKey': apiSecretKey};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro(
      apiSecretKey: map['apiSecretKey'] as String,
    );
  }
}
