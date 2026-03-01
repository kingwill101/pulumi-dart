// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiling_group_agent_orchestration_config.dart';

/// Input properties used for looking up and filtering ProfilingGroup resources.
class ProfilingGroupState {
  /// Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  final pulumi.Input<ProfilingGroupAgentOrchestrationConfig>? agentOrchestrationConfig;
  /// ARN of the profiling group.
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ProfilingGroupState].
  /// [agentOrchestrationConfig] Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  /// [arn] ARN of the profiling group.
  /// [computePlatform] Compute platform of the profiling group.
  /// [name] Name of the profiling group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ProfilingGroupState({
    pulumi.Output<ProfilingGroupAgentOrchestrationConfig>? agentOrchestrationConfig,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? computePlatform,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      agentOrchestrationConfig = pulumi.Input.asOptionalInput<ProfilingGroupAgentOrchestrationConfig>(agentOrchestrationConfig),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      computePlatform = pulumi.Input.asOptionalInput<String>(computePlatform),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentOrchestrationConfig': ?pulumi.Input.mapOptionalInputValue<ProfilingGroupAgentOrchestrationConfig, Map<String, dynamic>>(agentOrchestrationConfig, (value) => value.toMap()),
      'arn': ?arn,
      'computePlatform': ?computePlatform,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ProfilingGroupState.fromMap(Map<String, dynamic> map) {
    return ProfilingGroupState(
      agentOrchestrationConfig: map['agentOrchestrationConfig'] == null ? null : pulumi.Output.create<ProfilingGroupAgentOrchestrationConfig>(ProfilingGroupAgentOrchestrationConfig.fromMap((map['agentOrchestrationConfig'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      computePlatform: map['computePlatform'] == null ? null : pulumi.Output.create<String>(map['computePlatform'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

