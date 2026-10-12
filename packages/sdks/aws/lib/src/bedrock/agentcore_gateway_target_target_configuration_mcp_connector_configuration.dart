// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_connector_configuration_parameter_override.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration {
  /// Agent-facing description override for this tool.
  final pulumi.Input<String?>? description;
  /// Tool or operation name (for example, `retrieve` or `webSearch`).
  final pulumi.Input<String> name;
  /// Parameter overrides to control parameter visibility and descriptions. See `parameterOverride` Block below.
  final pulumi.Input<List<AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride>?>? parameterOverrides;
  /// JSON-encoded parameters to set as fixed or default values when provisioning this tool. Free-form JSON whose schema is defined by the connector.
  final pulumi.Input<String?>? parameterValues;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration].
  /// [description] Agent-facing description override for this tool.
  /// [name] Tool or operation name (for example, `retrieve` or `webSearch`).
  /// [parameterOverrides] Parameter overrides to control parameter visibility and descriptions. See `parameterOverride` Block below.
  /// [parameterValues] JSON-encoded parameters to set as fixed or default values when provisioning this tool. Free-form JSON whose schema is defined by the connector.
  const AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration({
    this.description,
    required this.name,
    this.parameterOverrides,
    this.parameterValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'parameterOverrides': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride>, List<Map<String, dynamic>>>(parameterOverrides, (value) => pulumi.Input.encodeList<AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameterValues': ?parameterValues,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterOverrides: (() { final guardedValue = map['parameterOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride>(guardedValue, (value) => AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfigurationParameterOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
