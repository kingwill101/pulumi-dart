// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_protocol_configuration_mcp_session_configuration.dart';
import 'agentcore_gateway_protocol_configuration_mcp_streaming_configuration.dart';

class AgentcoreGatewayProtocolConfigurationMcp {
  /// Instructions for the MCP protocol configuration.
  final pulumi.Input<String?>? instructions;
  /// Search type for MCP. Valid values: `SEMANTIC`.
  final pulumi.Input<String?>? searchType;
  /// Configuration block for session settings of the MCP gateway. See `sessionConfiguration` below.
  final pulumi.Input<AgentcoreGatewayProtocolConfigurationMcpSessionConfiguration?>? sessionConfiguration;
  /// Configuration block for streaming settings of the MCP gateway. See `streamingConfiguration` below.
  final pulumi.Input<AgentcoreGatewayProtocolConfigurationMcpStreamingConfiguration?>? streamingConfiguration;
  /// Set of supported MCP protocol versions.
  final pulumi.Input<List<String>?>? supportedVersions;

  /// Creates a new [AgentcoreGatewayProtocolConfigurationMcp].
  /// [instructions] Instructions for the MCP protocol configuration.
  /// [searchType] Search type for MCP. Valid values: `SEMANTIC`.
  /// [sessionConfiguration] Configuration block for session settings of the MCP gateway. See `sessionConfiguration` below.
  /// [streamingConfiguration] Configuration block for streaming settings of the MCP gateway. See `streamingConfiguration` below.
  /// [supportedVersions] Set of supported MCP protocol versions.
  const AgentcoreGatewayProtocolConfigurationMcp({
    this.instructions,
    this.searchType,
    this.sessionConfiguration,
    this.streamingConfiguration,
    this.supportedVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instructions': ?instructions,
      'searchType': ?searchType,
      'sessionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayProtocolConfigurationMcpSessionConfiguration, Map<String, dynamic>>(sessionConfiguration, (value) => value.toMap()),
      'streamingConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayProtocolConfigurationMcpStreamingConfiguration, Map<String, dynamic>>(streamingConfiguration, (value) => value.toMap()),
      'supportedVersions': ?supportedVersions,
    };
  }

  factory AgentcoreGatewayProtocolConfigurationMcp.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayProtocolConfigurationMcp(
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchType: (() { final guardedValue = map['searchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionConfiguration: (() { final guardedValue = map['sessionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayProtocolConfigurationMcpSessionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      streamingConfiguration: (() { final guardedValue = map['streamingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayProtocolConfigurationMcpStreamingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportedVersions: (() { final guardedValue = map['supportedVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
