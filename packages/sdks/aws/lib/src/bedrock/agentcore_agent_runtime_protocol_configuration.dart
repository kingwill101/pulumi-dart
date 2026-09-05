// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreAgentRuntimeProtocolConfiguration {
  /// Server protocol for the agent runtime. Valid values: `HTTP`, `MCP`, `A2A`, `AGUI`.
  final pulumi.Input<String?>? serverProtocol;

  /// Creates a new [AgentcoreAgentRuntimeProtocolConfiguration].
  /// [serverProtocol] Server protocol for the agent runtime. Valid values: `HTTP`, `MCP`, `A2A`, `AGUI`.
  const AgentcoreAgentRuntimeProtocolConfiguration({
    this.serverProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverProtocol': ?serverProtocol,
    };
  }

  factory AgentcoreAgentRuntimeProtocolConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeProtocolConfiguration(
      serverProtocol: (() { final guardedValue = map['serverProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
