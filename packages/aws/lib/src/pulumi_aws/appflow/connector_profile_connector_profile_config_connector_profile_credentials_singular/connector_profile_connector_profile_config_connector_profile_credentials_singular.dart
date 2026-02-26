// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular {
  final String apiKey;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKey'] = apiKey;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular(
      apiKey: map['apiKey'] as String,
    );
  }
}
