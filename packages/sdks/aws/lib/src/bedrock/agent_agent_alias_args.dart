// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_alias_routing_configuration.dart';
import 'agent_agent_alias_timeouts.dart';

/// {@template pulumi_bedrock_agent_agent_alias_agent_agent_alias_args_doc}
/// The set of arguments for AgentAgentAlias.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_agent_alias_agent_agent_alias_args_doc}
class AgentAgentAliasArgs {
  /// Name of the alias.
  final pulumi.Input<String> agentAliasName;
  /// Identifier of the agent to create an alias for.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> agentId;
  /// Description of the alias.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Details about the routing configuration of the alias. See `routingConfiguration` Block for details.
  final pulumi.Input<List<AgentAgentAliasRoutingConfiguration>>? routingConfigurations;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentAgentAliasTimeouts>? timeouts;

  /// Creates a new [AgentAgentAliasArgs].
  /// [agentAliasName] Name of the alias.
  /// [agentId] Identifier of the agent to create an alias for.
  /// [description] Description of the alias.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingConfigurations] Details about the routing configuration of the alias. See `routingConfiguration` Block for details.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AgentAgentAliasArgs({
    required this.agentAliasName,
    required this.agentId,
    this.description,
    this.region,
    this.routingConfigurations,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAliasName': agentAliasName,
      'agentId': agentId,
      'description': ?description,
      'region': ?region,
      'routingConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentAliasRoutingConfiguration>, List<Map<String, dynamic>>>(routingConfigurations, (value) => pulumi.Input.encodeList<AgentAgentAliasRoutingConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentAgentAliasTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentAliasArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentAliasArgs(
      agentAliasName: pulumi.Input.fromValue(map['agentAliasName'] as String),
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingConfigurations: (() { final guardedValue = map['routingConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentAgentAliasRoutingConfiguration>(guardedValue, (value) => AgentAgentAliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentAgentAliasTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
