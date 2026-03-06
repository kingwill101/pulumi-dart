// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro {
  final pulumi.Input<String> apiSecretKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro].
  /// [apiSecretKey] Required.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro({
    required this.apiSecretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSecretKey': apiSecretKey,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro(
      apiSecretKey: pulumi.Input.fromValue(map['apiSecretKey'] as String),
    );
  }
}

