// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../profiling_group_agent_orchestration_config/profiling_group_agent_orchestration_config.dart';

/// The set of arguments for ProfilingGroup.
class ProfilingGroupArgs {
  /// Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  final pulumi.Input<ProfilingGroupAgentOrchestrationConfig>
      agentOrchestrationConfig;

  /// Compute platform of the profiling group.
  final pulumi.Input<String>? computePlatform;

  /// Name of the profiling group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ProfilingGroupArgs({
    required this.agentOrchestrationConfig,
    this.computePlatform,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentOrchestrationConfig'] = pulumi.Input.mapInputValue<
            ProfilingGroupAgentOrchestrationConfig, Map<String, dynamic>>(
        agentOrchestrationConfig, (value) => value.toMap());
    final computePlatformValue = computePlatform;
    if (computePlatformValue != null) {
      map['computePlatform'] = computePlatformValue;
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
    return map;
  }

  factory ProfilingGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProfilingGroupArgs(
      agentOrchestrationConfig:
          pulumi.Input.asInput<ProfilingGroupAgentOrchestrationConfig>(
              map['agentOrchestrationConfig']),
      computePlatform:
          pulumi.Input.asOptionalInput<String>(map['computePlatform']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
