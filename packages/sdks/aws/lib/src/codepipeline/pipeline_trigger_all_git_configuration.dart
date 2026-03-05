// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_all_git_configuration_pull_request.dart';
import 'pipeline_trigger_all_git_configuration_push.dart';

class PipelineTriggerAllGitConfiguration {
  /// The field where the repository event that will start the pipeline is specified as pull requests. A `pull_request` block is documented below.
  final pulumi.Input<List<PipelineTriggerAllGitConfigurationPullRequest>>? pullRequests;
  /// The field where the repository event that will start the pipeline, such as pushing Git tags, is specified with details. A `push` block is documented below.
  final pulumi.Input<List<PipelineTriggerAllGitConfigurationPush>>? pushes;
  /// The name of the pipeline source action where the trigger configuration, such as Git tags, is specified. The trigger configuration will start the pipeline upon the specified change only.
  final pulumi.Input<String>? sourceActionName;

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
      'pullRequests': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerAllGitConfigurationPullRequest>, List<Map<String, dynamic>>>(pullRequests, (value) => pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPullRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pushes': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerAllGitConfigurationPush>, List<Map<String, dynamic>>>(pushes, (value) => pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPush, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceActionName': ?sourceActionName,
    };
  }

  factory PipelineTriggerAllGitConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfiguration(
      pullRequests: (() { final guardedValue = map['pullRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPullRequest>(guardedValue, (value) => PipelineTriggerAllGitConfigurationPullRequest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pushes: (() { final guardedValue = map['pushes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPush>(guardedValue, (value) => PipelineTriggerAllGitConfigurationPush.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceActionName: (() { final guardedValue = map['sourceActionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

