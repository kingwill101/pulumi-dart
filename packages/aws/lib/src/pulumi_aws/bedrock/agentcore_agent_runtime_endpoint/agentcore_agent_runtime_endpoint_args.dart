// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_agent_runtime_endpoint_timeouts/agentcore_agent_runtime_endpoint_timeouts.dart';

/// The set of arguments for AgentcoreAgentRuntimeEndpoint.
class AgentcoreAgentRuntimeEndpointArgs {
  /// ID of the agent runtime this endpoint belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> agentRuntimeId;

  /// Version of the agent runtime to use for this endpoint.
  final pulumi.Input<String>? agentRuntimeVersion;

  /// Description of the agent runtime endpoint.
  final pulumi.Input<String>? description;

  /// Name of the agent runtime endpoint.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentcoreAgentRuntimeEndpointTimeouts>? timeouts;

  AgentcoreAgentRuntimeEndpointArgs({
    required this.agentRuntimeId,
    this.agentRuntimeVersion,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentRuntimeId'] = agentRuntimeId;
    final agentRuntimeVersionValue = agentRuntimeVersion;
    if (agentRuntimeVersionValue != null) {
      map['agentRuntimeVersion'] = agentRuntimeVersionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreAgentRuntimeEndpointTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreAgentRuntimeEndpointArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeEndpointArgs(
      agentRuntimeId: pulumi.Input.asInput<String>(map['agentRuntimeId']),
      agentRuntimeVersion:
          pulumi.Input.asOptionalInput<String>(map['agentRuntimeVersion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeEndpointTimeouts>(
              map['timeouts']),
    );
  }
}
