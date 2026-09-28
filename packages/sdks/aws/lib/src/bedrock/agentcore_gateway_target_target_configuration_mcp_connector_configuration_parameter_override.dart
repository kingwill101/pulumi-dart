// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride {
  /// Description of the gateway target.
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> path;
  /// Whether this parameter is visible to the agent. If not specified, uses the service default.
  final pulumi.Input<bool?>? visible;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride].
  /// [description] Description of the gateway target.
  /// [path] Required.
  /// [visible] Whether this parameter is visible to the agent. If not specified, uses the service default.
  const AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride({
    this.description,
    required this.path,
    this.visible,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'path': path,
      'visible': ?visible,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      visible: (() { final guardedValue = map['visible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
