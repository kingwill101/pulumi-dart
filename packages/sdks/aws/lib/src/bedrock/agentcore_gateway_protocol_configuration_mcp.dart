// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayProtocolConfigurationMcp {
  /// Instructions for the MCP protocol configuration.
  final pulumi.Input<String>? instructions;
  /// Search type for MCP. Valid values: `SEMANTIC`.
  final pulumi.Input<String>? searchType;
  /// Set of supported MCP protocol versions.
  final pulumi.Input<List<String>>? supportedVersions;

  /// Creates a new [AgentcoreGatewayProtocolConfigurationMcp].
  /// [instructions] Instructions for the MCP protocol configuration.
  /// [searchType] Search type for MCP. Valid values: `SEMANTIC`.
  /// [supportedVersions] Set of supported MCP protocol versions.
  const AgentcoreGatewayProtocolConfigurationMcp({
    this.instructions,
    this.searchType,
    this.supportedVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instructions': ?instructions,
      'searchType': ?searchType,
      'supportedVersions': ?supportedVersions,
    };
  }

  factory AgentcoreGatewayProtocolConfigurationMcp.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayProtocolConfigurationMcp(
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchType: (() { final guardedValue = map['searchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedVersions: (() { final guardedValue = map['supportedVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

