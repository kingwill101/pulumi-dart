// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpConnectorSource {
  /// Identifier for the connector integration (for example, `bedrock-knowledge-bases`).
  final pulumi.Input<String> connectorId;
  /// Version of the connector to use (for example, `1.2.0`).
  final pulumi.Input<String?>? version;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpConnectorSource].
  /// [connectorId] Identifier for the connector integration (for example, `bedrock-knowledge-bases`).
  /// [version] Version of the connector to use (for example, `1.2.0`).
  const AgentcoreGatewayTargetTargetConfigurationMcpConnectorSource({
    required this.connectorId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': connectorId,
      'version': ?version,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpConnectorSource.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpConnectorSource(
      connectorId: pulumi.Input.fromValue(map['connectorId'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
