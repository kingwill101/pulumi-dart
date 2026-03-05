// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom {
  /// A map that holds custom authentication credentials.
  final pulumi.Input<Map<String, String>>? credentialsMap;
  /// The custom authentication type that the connector uses.
  final pulumi.Input<String> customAuthenticationType;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom].
  /// [credentialsMap] A map that holds custom authentication credentials.
  /// [customAuthenticationType] The custom authentication type that the connector uses.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom({
    this.credentialsMap,
    required this.customAuthenticationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsMap': ?credentialsMap,
      'customAuthenticationType': customAuthenticationType,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom(
      credentialsMap: (() { final guardedValue = map['credentialsMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customAuthenticationType: pulumi.Input.fromValue(map['customAuthenticationType'] as String),
    );
  }
}

