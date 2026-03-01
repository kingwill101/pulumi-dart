// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_all_git_configuration_pull_request.dart';
import 'pipeline_trigger_all_git_configuration_push.dart';

class PipelineTriggerAllGitConfiguration {
  /// The field where the repository event that will start the pipeline is specified as pull requests. A `pull_request` block is documented below.
  final List<PipelineTriggerAllGitConfigurationPullRequest>? pullRequests;
  /// The field where the repository event that will start the pipeline, such as pushing Git tags, is specified with details. A `push` block is documented below.
  final List<PipelineTriggerAllGitConfigurationPush>? pushes;
  /// The name of the pipeline source action where the trigger configuration, such as Git tags, is specified. The trigger configuration will start the pipeline upon the specified change only.
  final String? sourceActionName;

  /// Creates a new [PipelineTriggerAllGitConfiguration].
  /// [pullRequests] The field where the repository event that will start the pipeline is specified as pull requests. A `pull_request` block is documented below.
  /// [pushes] The field where the repository event that will start the pipeline, such as pushing Git tags, is specified with details. A `push` block is documented below.
  /// [sourceActionName] The name of the pipeline source action where the trigger configuration, such as Git tags, is specified. The trigger configuration will start the pipeline upon the specified change only.
  PipelineTriggerAllGitConfiguration({
    this.pullRequests,
    this.pushes,
    this.sourceActionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullRequests': ?pullRequests == null ? null : pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPullRequest, Map<String, dynamic>>(pullRequests!, (value) => value.toMap()),
      'pushes': ?pushes == null ? null : pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPush, Map<String, dynamic>>(pushes!, (value) => value.toMap()),
      'sourceActionName': ?sourceActionName,
    };
  }

  factory PipelineTriggerAllGitConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfiguration(
      pullRequests: map['pullRequests'] == null ? null : pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPullRequest>(map['pullRequests'], (value) => PipelineTriggerAllGitConfigurationPullRequest.fromMap((value as Map).cast<String, dynamic>())),
      pushes: map['pushes'] == null ? null : pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPush>(map['pushes'], (value) => PipelineTriggerAllGitConfigurationPush.fromMap((value as Map).cast<String, dynamic>())),
      sourceActionName: map['sourceActionName'] == null ? null : map['sourceActionName'] as String,
    );
  }
}

