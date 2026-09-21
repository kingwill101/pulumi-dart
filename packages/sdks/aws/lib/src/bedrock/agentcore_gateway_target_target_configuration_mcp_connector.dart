// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_target_configuration_mcp_connector_configuration.dart';
import 'agentcore_gateway_target_target_configuration_mcp_connector_source.dart';

class AgentcoreGatewayTargetTargetConfigurationMcpConnector {
  /// Per-tool configurations for the connector. See `configuration` Block below.
  final pulumi.Input<List<AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration>> configurations;
  /// List of tool names to enable from this connector. If omitted, all tools provided by the connector are enabled.
  final pulumi.Input<List<String>?>? enableds;
  /// Source configuration identifying which connector to use. See `source` Block below.
  final pulumi.Input<AgentcoreGatewayTargetTargetConfigurationMcpConnectorSource> source;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationMcpConnector].
  /// [configurations] Per-tool configurations for the connector. See `configuration` Block below.
  /// [enableds] List of tool names to enable from this connector. If omitted, all tools provided by the connector are enabled.
  /// [source] Source configuration identifying which connector to use. See `source` Block below.
  const AgentcoreGatewayTargetTargetConfigurationMcpConnector({
    required this.configurations,
    this.enableds,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': pulumi.Input.mapInputValue<List<AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableds': ?enableds,
      'source': pulumi.Input.mapInputValue<AgentcoreGatewayTargetTargetConfigurationMcpConnectorSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationMcpConnector.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationMcpConnector(
      configurations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration>(map['configurations']!, (value) => AgentcoreGatewayTargetTargetConfigurationMcpConnectorConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      enableds: (() { final guardedValue = map['enableds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      source: pulumi.Input.fromValue(AgentcoreGatewayTargetTargetConfigurationMcpConnectorSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
