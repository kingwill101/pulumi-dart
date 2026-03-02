// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_alias_routing_configuration.dart';
import 'agent_agent_alias_timeouts.dart';

/// Input properties used for looking up and filtering AgentAgentAlias resources.
class AgentAgentAliasState {
  /// ARN of the alias.
  final pulumi.Input<String>? agentAliasArn;
  /// Unique identifier of the alias.
  final pulumi.Input<String>? agentAliasId;
  /// Name of the alias.
  final pulumi.Input<String>? agentAliasName;
  /// Identifier of the agent to create an alias for.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? agentId;
  /// Description of the alias.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Details about the routing configuration of the alias. See `routing_configuration` Block for details.
  final pulumi.Input<List<AgentAgentAliasRoutingConfiguration>>? routingConfigurations;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentAgentAliasTimeouts>? timeouts;

  /// Creates a new [AgentAgentAliasState].
  /// [agentAliasArn] ARN of the alias.
  /// [agentAliasId] Unique identifier of the alias.
  /// [agentAliasName] Name of the alias.
  /// [agentId] Identifier of the agent to create an alias for.
  /// [description] Description of the alias.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingConfigurations] Details about the routing configuration of the alias. See `routing_configuration` Block for details.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  AgentAgentAliasState({
    this.agentAliasArn,
    this.agentAliasId,
    this.agentAliasName,
    this.agentId,
    this.description,
    this.region,
    this.routingConfigurations,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAliasArn': ?agentAliasArn,
      'agentAliasId': ?agentAliasId,
      'agentAliasName': ?agentAliasName,
      'agentId': ?agentId,
      'description': ?description,
      'region': ?region,
      'routingConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AgentAgentAliasRoutingConfiguration>, List<Map<String, dynamic>>>(routingConfigurations, (value) => pulumi.Input.encodeList<AgentAgentAliasRoutingConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentAgentAliasTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentAliasState.fromMap(Map<String, dynamic> map) {
    return AgentAgentAliasState(
      agentAliasArn: map['agentAliasArn'] == null ? null : (map['agentAliasArn'] as String).input(),
      agentAliasId: map['agentAliasId'] == null ? null : (map['agentAliasId'] as String).input(),
      agentAliasName: map['agentAliasName'] == null ? null : (map['agentAliasName'] as String).input(),
      agentId: map['agentId'] == null ? null : (map['agentId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routingConfigurations: map['routingConfigurations'] == null ? null : (pulumi.Input.decodeList<AgentAgentAliasRoutingConfiguration>(map['routingConfigurations'], (value) => AgentAgentAliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (AgentAgentAliasTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

