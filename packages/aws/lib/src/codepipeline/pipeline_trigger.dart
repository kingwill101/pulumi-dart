// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_trigger_git_configuration.dart';

class PipelineTrigger {
  /// Provides the filter criteria and the source stage for the repository event that starts the pipeline. For more information, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-filter.html). A `git_configuration` block is documented below.
  final PipelineTriggerGitConfiguration gitConfiguration;

  /// The source provider for the event. Possible value is `CodeStarSourceConnection`.
  final String providerType;

  /// Creates a new [PipelineTrigger].
  /// [gitConfiguration] Provides the filter criteria and the source stage for the repository event that starts the pipeline. For more information, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-filter.html). A `git_configuration` block is documented below.
  /// [providerType] The source provider for the event. Possible value is `CodeStarSourceConnection`.
  PipelineTrigger({required this.gitConfiguration, required this.providerType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitConfiguration': gitConfiguration.toMap(),
      'providerType': providerType,
    };
  }

  factory PipelineTrigger.fromMap(Map<String, dynamic> map) {
    return PipelineTrigger(
      gitConfiguration: PipelineTriggerGitConfiguration.fromMap(
        (map['gitConfiguration'] as Map).cast<String, dynamic>(),
      ),
      providerType: map['providerType'] as String,
    );
  }
}
