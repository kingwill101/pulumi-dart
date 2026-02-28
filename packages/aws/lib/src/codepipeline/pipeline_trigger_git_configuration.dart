// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_git_configuration_pull_request.dart';
import 'pipeline_trigger_git_configuration_push.dart';

class PipelineTriggerGitConfiguration {
  /// The field where the repository event that will start the pipeline is specified as pull requests. A `pull_request` block is documented below.
  final List<PipelineTriggerGitConfigurationPullRequest>? pullRequests;

  /// The field where the repository event that will start the pipeline, such as pushing Git tags, is specified with details. A `push` block is documented below.
  final List<PipelineTriggerGitConfigurationPush>? pushes;

  /// The name of the pipeline source action where the trigger configuration, such as Git tags, is specified. The trigger configuration will start the pipeline upon the specified change only.
  final String sourceActionName;

  /// Creates a new [PipelineTriggerGitConfiguration].
  /// [pullRequests] The field where the repository event that will start the pipeline is specified as pull requests. A `pull_request` block is documented below.
  /// [pushes] The field where the repository event that will start the pipeline, such as pushing Git tags, is specified with details. A `push` block is documented below.
  /// [sourceActionName] The name of the pipeline source action where the trigger configuration, such as Git tags, is specified. The trigger configuration will start the pipeline upon the specified change only.
  PipelineTriggerGitConfiguration({
    this.pullRequests,
    this.pushes,
    required this.sourceActionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pullRequestsValue = pullRequests;
    if (pullRequestsValue != null) {
      map['pullRequests'] = pulumi.Input.encodeList<
          PipelineTriggerGitConfigurationPullRequest,
          Map<String, dynamic>>(pullRequestsValue, (value) => value.toMap());
    }
    final pushesValue = pushes;
    if (pushesValue != null) {
      map['pushes'] = pulumi.Input.encodeList<
          PipelineTriggerGitConfigurationPush,
          Map<String, dynamic>>(pushesValue, (value) => value.toMap());
    }
    map['sourceActionName'] = sourceActionName;
    return map;
  }

  factory PipelineTriggerGitConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerGitConfiguration(
      pullRequests: map['pullRequests'] == null
          ? null
          : pulumi.Input.decodeList<PipelineTriggerGitConfigurationPullRequest>(
              map['pullRequests'],
              (value) => PipelineTriggerGitConfigurationPullRequest.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pushes: map['pushes'] == null
          ? null
          : pulumi.Input.decodeList<PipelineTriggerGitConfigurationPush>(
              map['pushes'],
              (value) => PipelineTriggerGitConfigurationPush.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceActionName: map['sourceActionName'] as String,
    );
  }
}
