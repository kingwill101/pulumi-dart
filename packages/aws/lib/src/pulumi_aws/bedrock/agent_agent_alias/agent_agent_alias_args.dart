// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_agent_alias_routing_configuration/agent_agent_alias_routing_configuration.dart';
import '../agent_agent_alias_timeouts/agent_agent_alias_timeouts.dart';

/// The set of arguments for AgentAgentAlias.
class AgentAgentAliasArgs {
  /// Name of the alias.
  final Input<String> agentAliasName;

  /// Identifier of the agent to create an alias for.
  ///
  /// The following arguments are optional:
  final Input<String> agentId;

  /// Description of the alias.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Details about the routing configuration of the alias. See <span pulumi-lang-nodejs="`routingConfiguration`" pulumi-lang-dotnet="`RoutingConfiguration`" pulumi-lang-go="`routingConfiguration`" pulumi-lang-python="`routing_configuration`" pulumi-lang-yaml="`routingConfiguration`" pulumi-lang-java="`routingConfiguration`">`routing_configuration`</span> Block for details.
  final Input<List<AgentAgentAliasRoutingConfiguration>>? routingConfigurations;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentAgentAliasTimeouts>? timeouts;

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
      map['routingConfigurations'] = Input.mapOptionalInputValue<
              List<AgentAgentAliasRoutingConfiguration>,
              List<Map<String, dynamic>>>(
          routingConfigurationsValue,
          (value) => Input.encodeList<AgentAgentAliasRoutingConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<AgentAgentAliasTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentAliasArgs.fromMap(Map<String, dynamic> map) {
    return AgentAgentAliasArgs(
      agentAliasName: Input.asInput<String>(map['agentAliasName']),
      agentId: Input.asInput<String>(map['agentId']),
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
      routingConfigurations:
          Input.asOptionalInput<List<AgentAgentAliasRoutingConfiguration>>(
              map['routingConfigurations']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<AgentAgentAliasTimeouts>(map['timeouts']),
    );
  }
}
