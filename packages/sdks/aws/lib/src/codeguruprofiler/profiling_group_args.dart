// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiling_group_agent_orchestration_config.dart';

/// {@template pulumi_codeguruprofiler_profiling_group_profiling_group_args_doc}
/// The set of arguments for ProfilingGroup.
/// {@endtemplate}
/// {@macro pulumi_codeguruprofiler_profiling_group_profiling_group_args_doc}
class ProfilingGroupArgs {
  /// Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  final pulumi.Input<ProfilingGroupAgentOrchestrationConfig> agentOrchestrationConfig;
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

  /// Creates a new [ProfilingGroupArgs].
  /// [agentOrchestrationConfig] Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  /// [computePlatform] Compute platform of the profiling group.
  /// [name] Name of the profiling group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ProfilingGroupArgs({
    required this.agentOrchestrationConfig,
    this.computePlatform,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentOrchestrationConfig': pulumi.Input.mapInputValue<ProfilingGroupAgentOrchestrationConfig, Map<String, dynamic>>(agentOrchestrationConfig, (value) => value.toMap()),
      'computePlatform': ?computePlatform,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ProfilingGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProfilingGroupArgs(
      agentOrchestrationConfig: (ProfilingGroupAgentOrchestrationConfig.fromMap((map['agentOrchestrationConfig']! as Map).cast<String, dynamic>())).input(),
      computePlatform: map['computePlatform'] == null ? null : ((map['computePlatform'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

