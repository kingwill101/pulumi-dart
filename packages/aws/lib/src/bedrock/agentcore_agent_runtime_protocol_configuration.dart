// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreAgentRuntimeProtocolConfiguration {
  /// Server protocol for the agent runtime. Valid values: `HTTP`, `MCP`, `A2A`.
  final String? serverProtocol;

  /// Creates a new [AgentcoreAgentRuntimeProtocolConfiguration].
  /// [serverProtocol] Server protocol for the agent runtime. Valid values: `HTTP`, `MCP`, `A2A`.
  AgentcoreAgentRuntimeProtocolConfiguration({
    this.serverProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverProtocol': ?serverProtocol,
    };
  }

  factory AgentcoreAgentRuntimeProtocolConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeProtocolConfiguration(
      serverProtocol: map['serverProtocol'] == null ? null : map['serverProtocol'] as String,
    );
  }
}

