// ignore_for_file: unused_element, unnecessary_cast

import '../pipeline_trigger_git_configuration/pipeline_trigger_git_configuration.dart';

class PipelineTrigger {
  /// Provides the filter criteria and the source stage for the repository event that starts the pipeline. For more information, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-filter.html). A <span pulumi-lang-nodejs="`gitConfiguration`" pulumi-lang-dotnet="`GitConfiguration`" pulumi-lang-go="`gitConfiguration`" pulumi-lang-python="`git_configuration`" pulumi-lang-yaml="`gitConfiguration`" pulumi-lang-java="`gitConfiguration`">`git_configuration`</span> block is documented below.
  final PipelineTriggerGitConfiguration gitConfiguration;

  /// The source provider for the event. Possible value is `CodeStarSourceConnection`.
  final String providerType;

  PipelineTrigger({
    required this.gitConfiguration,
    required this.providerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gitConfiguration'] = gitConfiguration.toMap();
    map['providerType'] = providerType;
    return map;
  }

  factory PipelineTrigger.fromMap(Map<String, dynamic> map) {
    return PipelineTrigger(
      gitConfiguration: PipelineTriggerGitConfiguration.fromMap(
          (map['gitConfiguration'] as Map).cast<String, dynamic>()),
      providerType: map['providerType'] as String,
    );
  }
}
