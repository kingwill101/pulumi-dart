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
    pulumi.Output<String>? agentAliasArn,
    pulumi.Output<String>? agentAliasId,
    pulumi.Output<String>? agentAliasName,
    pulumi.Output<String>? agentId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    pulumi.Output<List<AgentAgentAliasRoutingConfiguration>>? routingConfigurations,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AgentAgentAliasTimeouts>? timeouts,
  }) :
      agentAliasArn = pulumi.Input.asOptionalInput<String>(agentAliasArn),
      agentAliasId = pulumi.Input.asOptionalInput<String>(agentAliasId),
      agentAliasName = pulumi.Input.asOptionalInput<String>(agentAliasName),
      agentId = pulumi.Input.asOptionalInput<String>(agentId),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingConfigurations = pulumi.Input.asOptionalInput<List<AgentAgentAliasRoutingConfiguration>>(routingConfigurations),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AgentAgentAliasTimeouts>(timeouts);

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
      agentAliasArn: map['agentAliasArn'] == null ? null : pulumi.Output.create<String>(map['agentAliasArn'] as String),
      agentAliasId: map['agentAliasId'] == null ? null : pulumi.Output.create<String>(map['agentAliasId'] as String),
      agentAliasName: map['agentAliasName'] == null ? null : pulumi.Output.create<String>(map['agentAliasName'] as String),
      agentId: map['agentId'] == null ? null : pulumi.Output.create<String>(map['agentId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routingConfigurations: map['routingConfigurations'] == null ? null : pulumi.Output.create<List<AgentAgentAliasRoutingConfiguration>>(pulumi.Input.decodeList<AgentAgentAliasRoutingConfiguration>(map['routingConfigurations'], (value) => AgentAgentAliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentAgentAliasTimeouts>(AgentAgentAliasTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

