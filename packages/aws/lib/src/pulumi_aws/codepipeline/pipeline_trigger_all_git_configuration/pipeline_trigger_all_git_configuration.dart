// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_trigger_all_git_configuration_pull_request/pipeline_trigger_all_git_configuration_pull_request.dart';
import '../pipeline_trigger_all_git_configuration_push/pipeline_trigger_all_git_configuration_push.dart';

class PipelineTriggerAllGitConfiguration {
  /// The field where the repository event that will start the pipeline is specified as pull requests. A <span pulumi-lang-nodejs="`pullRequest`" pulumi-lang-dotnet="`PullRequest`" pulumi-lang-go="`pullRequest`" pulumi-lang-python="`pull_request`" pulumi-lang-yaml="`pullRequest`" pulumi-lang-java="`pullRequest`">`pull_request`</span> block is documented below.
  final List<PipelineTriggerAllGitConfigurationPullRequest>? pullRequests;

  /// The field where the repository event that will start the pipeline, such as pushing Git tags, is specified with details. A <span pulumi-lang-nodejs="`push`" pulumi-lang-dotnet="`Push`" pulumi-lang-go="`push`" pulumi-lang-python="`push`" pulumi-lang-yaml="`push`" pulumi-lang-java="`push`">`push`</span> block is documented below.
  final List<PipelineTriggerAllGitConfigurationPush>? pushes;

  /// The name of the pipeline source action where the trigger configuration, such as Git tags, is specified. The trigger configuration will start the pipeline upon the specified change only.
  final String? sourceActionName;

  PipelineTriggerAllGitConfiguration({
    this.pullRequests,
    this.pushes,
    this.sourceActionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pullRequestsValue = pullRequests;
    if (pullRequestsValue != null) {
      map['pullRequests'] = Input.encodeList<
          PipelineTriggerAllGitConfigurationPullRequest,
          Map<String, dynamic>>(pullRequestsValue, (value) => value.toMap());
    }
    final pushesValue = pushes;
    if (pushesValue != null) {
      map['pushes'] = Input.encodeList<PipelineTriggerAllGitConfigurationPush,
          Map<String, dynamic>>(pushesValue, (value) => value.toMap());
    }
    final sourceActionNameValue = sourceActionName;
    if (sourceActionNameValue != null) {
      map['sourceActionName'] = sourceActionNameValue;
    }
    return map;
  }

  factory PipelineTriggerAllGitConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfiguration(
      pullRequests: map['pullRequests'] == null
          ? null
          : Input.decodeList<PipelineTriggerAllGitConfigurationPullRequest>(
              map['pullRequests'],
              (value) => PipelineTriggerAllGitConfigurationPullRequest.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pushes: map['pushes'] == null
          ? null
          : Input.decodeList<PipelineTriggerAllGitConfigurationPush>(
              map['pushes'],
              (value) => PipelineTriggerAllGitConfigurationPush.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceActionName: map['sourceActionName'] == null
          ? null
          : map['sourceActionName'] as String,
    );
  }
}
