// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular {
  /// Unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
  final pulumi.Input<String> apiKey;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular].
  /// [apiKey] Unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
    );
  }
}
