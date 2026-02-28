// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_endpoint_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_agent_runtime_endpoint_agentcore_agent_runtime_endpoint_args_doc}
/// The set of arguments for AgentcoreAgentRuntimeEndpoint.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_agent_runtime_endpoint_agentcore_agent_runtime_endpoint_args_doc}
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

  /// Creates a new [AgentcoreAgentRuntimeEndpointArgs].
  /// [agentRuntimeId] ID of the agent runtime this endpoint belongs to.
  /// [agentRuntimeVersion] Version of the agent runtime to use for this endpoint.
  /// [description] Description of the agent runtime endpoint.
  /// [name] Name of the agent runtime endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentcoreAgentRuntimeEndpointArgs({
    required String agentRuntimeId,
    String? agentRuntimeVersion,
    String? description,
    String? name,
    String? region,
    Map<String, String>? tags,
    AgentcoreAgentRuntimeEndpointTimeouts? timeouts,
  }) :
      agentRuntimeId = pulumi.Input.asInput<String>(agentRuntimeId),
      agentRuntimeVersion = pulumi.Input.asOptionalInput<String>(agentRuntimeVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreAgentRuntimeEndpointTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentRuntimeId': agentRuntimeId,
      'agentRuntimeVersion': ?agentRuntimeVersion,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeEndpointArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeEndpointArgs(
      agentRuntimeId: map['agentRuntimeId'] as String,
      agentRuntimeVersion: map['agentRuntimeVersion'] == null ? null : map['agentRuntimeVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : AgentcoreAgentRuntimeEndpointTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

