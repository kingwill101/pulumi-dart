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
  /// Details about the routing configuration of the alias. See `routing_configuration` Block for details.
  final pulumi.Input<List<AgentAgentAliasRoutingConfiguration>>? routingConfigurations;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentAgentAliasTimeouts>? timeouts;

  /// Creates a new [AgentAgentAliasArgs].
  /// [agentAliasName] Name of the alias.
  /// [agentId] Identifier of the agent to create an alias for.
  /// [description] Description of the alias.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingConfigurations] Details about the routing configuration of the alias. See `routing_configuration` Block for details.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentAgentAliasArgs({
    required pulumi.Output<String> agentAliasName,
    required pulumi.Output<String> agentId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    pulumi.Output<List<AgentAgentAliasRoutingConfiguration>>? routingConfigurations,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<AgentAgentAliasTimeouts>? timeouts,
  }) :
      agentAliasName = pulumi.Input.asInput<String>(agentAliasName),
      agentId = pulumi.Input.asInput<String>(agentId),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingConfigurations = pulumi.Input.asOptionalInput<List<AgentAgentAliasRoutingConfiguration>>(routingConfigurations),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<AgentAgentAliasTimeouts>(timeouts);

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
      agentAliasName: pulumi.Output.create<String>(map['agentAliasName'] as String),
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routingConfigurations: map['routingConfigurations'] == null ? null : pulumi.Output.create<List<AgentAgentAliasRoutingConfiguration>>(pulumi.Input.decodeList<AgentAgentAliasRoutingConfiguration>(map['routingConfigurations'], (value) => AgentAgentAliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentAgentAliasTimeouts>(AgentAgentAliasTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

