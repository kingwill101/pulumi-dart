import 'package:pulumi/pulumi.dart';
import '../profiling_group_agent_orchestration_config/profiling_group_agent_orchestration_config.dart';
import 'profiling_group_args.dart';

/// Resource for managing an AWS CodeGuru Profiler Profiling Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeGuru Profiler Profiling Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:codeguruprofiler/profilingGroup:ProfilingGroup example profiling_group-name-12345678
/// ```
class ProfilingGroup extends CustomResource {
  /// Specifies whether profiling is enabled or disabled for the created profiling. See Agent Orchestration Config for more details.
  late final Output<ProfilingGroupAgentOrchestrationConfig>
      agentOrchestrationConfig;

  /// ARN of the profiling group.
  late final Output<String> arn;

  /// Compute platform of the profiling group.
  late final Output<String> computePlatform;

  /// Name of the profiling group.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ProfilingGroup(
    String name, {
    ProfilingGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codeguruprofiler/profilingGroup:ProfilingGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentOrchestrationConfig =
        registerOutput<ProfilingGroupAgentOrchestrationConfig>(
            'agentOrchestrationConfig');
    this.arn = registerOutput<String>('arn');
    this.computePlatform = registerOutput<String>('computePlatform');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
