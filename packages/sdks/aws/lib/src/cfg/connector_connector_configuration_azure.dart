// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorConnectorConfigurationAzure {
  /// Azure application (client) identifier that AWS uses to authenticate to the Azure environment.
  final pulumi.Input<String> clientIdentifier;
  /// Azure (Microsoft Entra ID) tenant identifier.
  final pulumi.Input<String> tenantIdentifier;

  /// Creates a new [ConnectorConnectorConfigurationAzure].
  /// [clientIdentifier] Azure application (client) identifier that AWS uses to authenticate to the Azure environment.
  /// [tenantIdentifier] Azure (Microsoft Entra ID) tenant identifier.
  const ConnectorConnectorConfigurationAzure({
    required this.clientIdentifier,
    required this.tenantIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIdentifier': clientIdentifier,
      'tenantIdentifier': tenantIdentifier,
    };
  }

  factory ConnectorConnectorConfigurationAzure.fromMap(Map<String, dynamic> map) {
    return ConnectorConnectorConfigurationAzure(
      clientIdentifier: pulumi.Input.fromValue(map['clientIdentifier'] as String),
      tenantIdentifier: pulumi.Input.fromValue(map['tenantIdentifier'] as String),
    );
  }
}
