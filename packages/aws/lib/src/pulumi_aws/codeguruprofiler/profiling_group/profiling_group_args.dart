// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../profiling_group_agent_orchestration_config/profiling_group_agent_orchestration_config.dart';

/// The set of arguments for ProfilingGroup.
class ProfilingGroupArgs {
  /// Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  final Input<ProfilingGroupAgentOrchestrationConfig> agentOrchestrationConfig;

  /// Compute platform of the profiling group.
  final Input<String>? computePlatform;

  /// Name of the profiling group.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ProfilingGroupArgs({
    required this.agentOrchestrationConfig,
    this.computePlatform,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentOrchestrationConfig'] = Input.mapInputValue<
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
          Input.asInput<ProfilingGroupAgentOrchestrationConfig>(
              map['agentOrchestrationConfig']),
      computePlatform: Input.asOptionalInput<String>(map['computePlatform']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
