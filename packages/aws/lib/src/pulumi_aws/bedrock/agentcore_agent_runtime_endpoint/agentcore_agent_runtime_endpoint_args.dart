// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_agent_runtime_endpoint_timeouts/agentcore_agent_runtime_endpoint_timeouts.dart';

/// The set of arguments for AgentcoreAgentRuntimeEndpoint.
class AgentcoreAgentRuntimeEndpointArgs {
  /// ID of the agent runtime this endpoint belongs to.
  ///
  /// The following arguments are optional:
  final Input<String> agentRuntimeId;

  /// Version of the agent runtime to use for this endpoint.
  final Input<String>? agentRuntimeVersion;

  /// Description of the agent runtime endpoint.
  final Input<String>? description;

  /// Name of the agent runtime endpoint.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentcoreAgentRuntimeEndpointTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<
          AgentcoreAgentRuntimeEndpointTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreAgentRuntimeEndpointArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeEndpointArgs(
      agentRuntimeId: Input.asInput<String>(map['agentRuntimeId']),
      agentRuntimeVersion:
          Input.asOptionalInput<String>(map['agentRuntimeVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<AgentcoreAgentRuntimeEndpointTimeouts>(
          map['timeouts']),
    );
  }
}
