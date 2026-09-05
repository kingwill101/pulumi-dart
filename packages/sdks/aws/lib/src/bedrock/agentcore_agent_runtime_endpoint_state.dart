// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_endpoint_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreAgentRuntimeEndpoint resources.
class AgentcoreAgentRuntimeEndpointState {
  /// ARN of the associated Agent Runtime.
  final pulumi.Input<String?>? agentRuntimeArn;
  /// ARN of the Agent Runtime Endpoint.
  final pulumi.Input<String?>? agentRuntimeEndpointArn;
  /// ID of the agent runtime this endpoint belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? agentRuntimeId;
  /// Version of the agent runtime to use for this endpoint.
  final pulumi.Input<String?>? agentRuntimeVersion;
  /// Description of the agent runtime endpoint.
  final pulumi.Input<String?>? description;
  /// Name of the agent runtime endpoint.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<AgentcoreAgentRuntimeEndpointTimeouts?>? timeouts;

  /// Creates a new [AgentcoreAgentRuntimeEndpointState].
  /// [agentRuntimeArn] ARN of the associated Agent Runtime.
  /// [agentRuntimeEndpointArn] ARN of the Agent Runtime Endpoint.
  /// [agentRuntimeId] ID of the agent runtime this endpoint belongs to.
  /// [agentRuntimeVersion] Version of the agent runtime to use for this endpoint.
  /// [description] Description of the agent runtime endpoint.
  /// [name] Name of the agent runtime endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const AgentcoreAgentRuntimeEndpointState({
    this.agentRuntimeArn,
    this.agentRuntimeEndpointArn,
    this.agentRuntimeId,
    this.agentRuntimeVersion,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentRuntimeArn': ?agentRuntimeArn,
      'agentRuntimeEndpointArn': ?agentRuntimeEndpointArn,
      'agentRuntimeId': ?agentRuntimeId,
      'agentRuntimeVersion': ?agentRuntimeVersion,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeEndpointState.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeEndpointState(
      agentRuntimeArn: (() { final guardedValue = map['agentRuntimeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentRuntimeEndpointArn: (() { final guardedValue = map['agentRuntimeEndpointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentRuntimeId: (() { final guardedValue = map['agentRuntimeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentRuntimeVersion: (() { final guardedValue = map['agentRuntimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
