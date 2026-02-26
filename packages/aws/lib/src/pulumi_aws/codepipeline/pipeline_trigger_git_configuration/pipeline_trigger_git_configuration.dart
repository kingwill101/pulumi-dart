// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_trigger_git_configuration_pull_request/pipeline_trigger_git_configuration_pull_request.dart';
import '../pipeline_trigger_git_configuration_push/pipeline_trigger_git_configuration_push.dart';

class PipelineTriggerGitConfiguration {
  /// The field where the repository event that will start the pipeline is specified as pull requests. A <span pulumi-lang-nodejs="`pullRequest`" pulumi-lang-dotnet="`PullRequest`" pulumi-lang-go="`pullRequest`" pulumi-lang-python="`pull_request`" pulumi-lang-yaml="`pullRequest`" pulumi-lang-java="`pullRequest`">`pull_request`</span> block is documented below.
  final List<PipelineTriggerGitConfigurationPullRequest>? pullRequests;

  /// The field where the repository event that will start the pipeline, such as pushing Git tags, is specified with details. A <span pulumi-lang-nodejs="`push`" pulumi-lang-dotnet="`Push`" pulumi-lang-go="`push`" pulumi-lang-python="`push`" pulumi-lang-yaml="`push`" pulumi-lang-java="`push`">`push`</span> block is documented below.
  final List<PipelineTriggerGitConfigurationPush>? pushes;

  /// The name of the pipeline source action where the trigger configuration, such as Git tags, is specified. The trigger configuration will start the pipeline upon the specified change only.
  final String sourceActionName;

  PipelineTriggerGitConfiguration({
    this.pullRequests,
    this.pushes,
    required this.sourceActionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pullRequestsValue = pullRequests;
    if (pullRequestsValue != null) {
      map['pullRequests'] = Input.encodeList<
          PipelineTriggerGitConfigurationPullRequest,
          Map<String, dynamic>>(pullRequestsValue, (value) => value.toMap());
    }
    final pushesValue = pushes;
    if (pushesValue != null) {
      map['pushes'] = Input.encodeList<PipelineTriggerGitConfigurationPush,
          Map<String, dynamic>>(pushesValue, (value) => value.toMap());
    }
    map['sourceActionName'] = sourceActionName;
    return map;
  }

  factory PipelineTriggerGitConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerGitConfiguration(
      pullRequests: map['pullRequests'] == null
          ? null
          : Input.decodeList<PipelineTriggerGitConfigurationPullRequest>(
              map['pullRequests'],
              (value) => PipelineTriggerGitConfigurationPullRequest.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pushes: map['pushes'] == null
          ? null
          : Input.decodeList<PipelineTriggerGitConfigurationPush>(
              map['pushes'],
              (value) => PipelineTriggerGitConfigurationPush.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceActionName: map['sourceActionName'] as String,
    );
  }
}
