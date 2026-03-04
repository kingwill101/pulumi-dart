// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiling_group_agent_orchestration_config.dart';

/// Input properties used for looking up and filtering ProfilingGroup resources.
class ProfilingGroupState {
  /// Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  final pulumi.Input<ProfilingGroupAgentOrchestrationConfig>?
  agentOrchestrationConfig;

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
    this.agentOrchestrationConfig,
    this.arn,
    this.computePlatform,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentOrchestrationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ProfilingGroupAgentOrchestrationConfig,
            Map<String, dynamic>
          >(agentOrchestrationConfig, (value) => value.toMap()),
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
      agentOrchestrationConfig: (() {
        final guardedValue = map['agentOrchestrationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProfilingGroupAgentOrchestrationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computePlatform: (() {
        final guardedValue = map['computePlatform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
