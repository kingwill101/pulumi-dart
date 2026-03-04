// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_all_git_configuration.dart';

class PipelineTriggerAll {
  /// Provides the filter criteria and the source stage for the repository event that starts the pipeline. For more information, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-filter.html). A `git_configuration` block is documented below.
  final pulumi.Input<List<PipelineTriggerAllGitConfiguration>>?
  gitConfigurations;

  /// The source provider for the event. Possible value is `CodeStarSourceConnection`.
  final pulumi.Input<String>? providerType;

  /// Creates a new [PipelineTriggerAll].
  /// [gitConfigurations] Provides the filter criteria and the source stage for the repository event that starts the pipeline. For more information, refer to the [AWS documentation](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-filter.html). A `git_configuration` block is documented below.
  /// [providerType] The source provider for the event. Possible value is `CodeStarSourceConnection`.
  PipelineTriggerAll({this.gitConfigurations, this.providerType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineTriggerAllGitConfiguration>,
            List<Map<String, dynamic>>
          >(
            gitConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  PipelineTriggerAllGitConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'providerType': ?providerType,
    };
  }

  factory PipelineTriggerAll.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerAll(
      gitConfigurations: (() {
        final guardedValue = map['gitConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PipelineTriggerAllGitConfiguration>(
            guardedValue,
            (value) => PipelineTriggerAllGitConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      providerType: (() {
        final guardedValue = map['providerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
