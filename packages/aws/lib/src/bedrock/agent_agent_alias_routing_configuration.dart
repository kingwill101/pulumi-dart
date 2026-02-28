// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentAliasRoutingConfiguration {
  /// Version of the agent with which the alias is associated.
  final String agentVersion;

  /// ARN of the Provisioned Throughput assigned to the agent alias.
  final String provisionedThroughput;

  /// Creates a new [AgentAgentAliasRoutingConfiguration].
  /// [agentVersion] Version of the agent with which the alias is associated.
  /// [provisionedThroughput] ARN of the Provisioned Throughput assigned to the agent alias.
  AgentAgentAliasRoutingConfiguration({
    required this.agentVersion,
    required this.provisionedThroughput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentVersion'] = agentVersion;
    map['provisionedThroughput'] = provisionedThroughput;
    return map;
  }

  factory AgentAgentAliasRoutingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentAliasRoutingConfiguration(
      agentVersion: map['agentVersion'] as String,
      provisionedThroughput: map['provisionedThroughput'] as String,
    );
  }
}
