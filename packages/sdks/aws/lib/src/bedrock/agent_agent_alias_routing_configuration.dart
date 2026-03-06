// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentAgentAliasRoutingConfiguration {
  /// Version of the agent with which the alias is associated.
  final pulumi.Input<String> agentVersion;
  /// ARN of the Provisioned Throughput assigned to the agent alias.
  final pulumi.Input<String> provisionedThroughput;

  /// Creates a new [AgentAgentAliasRoutingConfiguration].
  /// [agentVersion] Version of the agent with which the alias is associated.
  /// [provisionedThroughput] ARN of the Provisioned Throughput assigned to the agent alias.
  const AgentAgentAliasRoutingConfiguration({
    required this.agentVersion,
    required this.provisionedThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': agentVersion,
      'provisionedThroughput': provisionedThroughput,
    };
  }

  factory AgentAgentAliasRoutingConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentAgentAliasRoutingConfiguration(
      agentVersion: pulumi.Input.fromValue(map['agentVersion'] as String),
      provisionedThroughput: pulumi.Input.fromValue(map['provisionedThroughput'] as String),
    );
  }
}

