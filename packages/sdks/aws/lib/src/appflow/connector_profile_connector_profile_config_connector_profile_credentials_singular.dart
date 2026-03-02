// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular {
  final pulumi.Input<String> apiKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular].
  /// [apiKey] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular(
      apiKey: (map['apiKey'] as String).input(),
    );
  }
}

