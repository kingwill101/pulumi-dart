// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro {
  final String apiSecretKey;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro({
    required this.apiSecretKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiSecretKey'] = apiSecretKey;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro(
      apiSecretKey: map['apiSecretKey'] as String,
    );
  }
}
