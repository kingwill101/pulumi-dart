// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_git_configuration.dart';

class PipelineTrigger {
  /// Provides the filter criteria and the source stage for the repository event that starts the pipeline. For more information, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-filter.html). A `gitConfiguration` block is documented below.
  final pulumi.Input<PipelineTriggerGitConfiguration> gitConfiguration;
  /// The source provider for the event. Possible value is `CodeStarSourceConnection`.
  final pulumi.Input<String> providerType;

  /// Creates a new [PipelineTrigger].
  /// [gitConfiguration] Provides the filter criteria and the source stage for the repository event that starts the pipeline. For more information, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-filter.html). A `gitConfiguration` block is documented below.
  /// [providerType] The source provider for the event. Possible value is `CodeStarSourceConnection`.
  const PipelineTrigger({
    required this.gitConfiguration,
    required this.providerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitConfiguration': pulumi.Input.mapInputValue<PipelineTriggerGitConfiguration, Map<String, dynamic>>(gitConfiguration, (value) => value.toMap()),
      'providerType': providerType,
    };
  }

  factory PipelineTrigger.fromMap(Map<String, dynamic> map) {
    return PipelineTrigger(
      gitConfiguration: pulumi.Input.fromValue(PipelineTriggerGitConfiguration.fromMap((map['gitConfiguration']! as Map).cast<String, dynamic>())),
      providerType: pulumi.Input.fromValue(map['providerType'] as String),
    );
  }
}
