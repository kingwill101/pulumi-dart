// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_agent_alias_routing_configuration/agent_agent_alias_routing_configuration.dart';
import '../agent_agent_alias_timeouts/agent_agent_alias_timeouts.dart';

/// The set of arguments for AgentAgentAlias.
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
  final pulumi.Input<List<AgentAgentAliasRoutingConfiguration>>?
      routingConfigurations;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentAgentAliasTimeouts>? timeouts;

  AgentAgentAliasArgs({
    required this.agentAliasName,
    required this.agentId,
    this.description,
    this.region,
    this.routingConfigurations,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentAliasName'] = agentAliasName;
    map['agentId'] = agentId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routingConfigurationsValue = routingConfigurations;
    if (routingConfigurationsValue != null) {
      map['routingConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<AgentAgentAliasRoutingConfiguration>,
              List<Map<String, dynamic>>>(
          routingConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              AgentAgentAliasRoutingConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentAgentAliasTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentAliasArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentAliasArgs(
      agentAliasName: pulumi.Input.asInput<String>(map['agentAliasName']),
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routingConfigurations: pulumi.Input.asOptionalInput<
              List<AgentAgentAliasRoutingConfiguration>>(
          map['routingConfigurations']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<AgentAgentAliasTimeouts>(
          map['timeouts']),
    );
  }
}
