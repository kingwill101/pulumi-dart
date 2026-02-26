// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayProtocolConfigurationMcp {
  /// Instructions for the MCP protocol configuration.
  final String? instructions;

  /// Search type for MCP. Valid values: `SEMANTIC`.
  final String? searchType;

  /// Set of supported MCP protocol versions.
  final List<String>? supportedVersions;

  AgentcoreGatewayProtocolConfigurationMcp({
    this.instructions,
    this.searchType,
    this.supportedVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instructionsValue = instructions;
    if (instructionsValue != null) {
      map['instructions'] = instructionsValue;
    }
    final searchTypeValue = searchType;
    if (searchTypeValue != null) {
      map['searchType'] = searchTypeValue;
    }
    final supportedVersionsValue = supportedVersions;
    if (supportedVersionsValue != null) {
      map['supportedVersions'] = supportedVersionsValue;
    }
    return map;
  }

  factory AgentcoreGatewayProtocolConfigurationMcp.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayProtocolConfigurationMcp(
      instructions:
          map['instructions'] == null ? null : map['instructions'] as String,
      searchType:
          map['searchType'] == null ? null : map['searchType'] as String,
      supportedVersions: map['supportedVersions'] == null
          ? null
          : (map['supportedVersions'] as List).cast<String>(),
    );
  }
}
