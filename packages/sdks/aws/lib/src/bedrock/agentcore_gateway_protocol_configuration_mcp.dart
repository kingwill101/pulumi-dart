// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreGatewayProtocolConfigurationMcp {
  /// Instructions for the MCP protocol configuration.
  final String? instructions;
  /// Search type for MCP. Valid values: `SEMANTIC`.
  final String? searchType;
  /// Set of supported MCP protocol versions.
  final List<String>? supportedVersions;

  /// Creates a new [AgentcoreGatewayProtocolConfigurationMcp].
  /// [instructions] Instructions for the MCP protocol configuration.
  /// [searchType] Search type for MCP. Valid values: `SEMANTIC`.
  /// [supportedVersions] Set of supported MCP protocol versions.
  AgentcoreGatewayProtocolConfigurationMcp({
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
      instructions: map['instructions'] == null ? null : map['instructions'] as String,
      searchType: map['searchType'] == null ? null : map['searchType'] as String,
      supportedVersions: map['supportedVersions'] == null ? null : (map['supportedVersions'] as List).cast<String>(),
    );
  }
}

