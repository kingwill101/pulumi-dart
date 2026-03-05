// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_git_configuration_pull_request.dart';
import 'pipeline_trigger_git_configuration_push.dart';

class PipelineTriggerGitConfiguration {
  /// The field where the repository event that will start the pipeline is specified as pull requests. A `pull_request` block is documented below.
  final pulumi.Input<List<PipelineTriggerGitConfigurationPullRequest>>? pullRequests;
  /// The field where the repository event that will start the pipeline, such as pushing Git tags, is specified with details. A `push` block is documented below.
  final pulumi.Input<List<PipelineTriggerGitConfigurationPush>>? pushes;
  /// The name of the pipeline source action where the trigger configuration, such as Git tags, is specified. The trigger configuration will start the pipeline upon the specified change only.
  final pulumi.Input<String> sourceActionName;

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
    return <String, dynamic>{
      'pullRequests': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerGitConfigurationPullRequest>, List<Map<String, dynamic>>>(pullRequests, (value) => pulumi.Input.encodeList<PipelineTriggerGitConfigurationPullRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pushes': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerGitConfigurationPush>, List<Map<String, dynamic>>>(pushes, (value) => pulumi.Input.encodeList<PipelineTriggerGitConfigurationPush, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceActionName': sourceActionName,
    };
  }

  factory PipelineTriggerGitConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerGitConfiguration(
      pullRequests: (() { final guardedValue = map['pullRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerGitConfigurationPullRequest>(guardedValue, (value) => PipelineTriggerGitConfigurationPullRequest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pushes: (() { final guardedValue = map['pushes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerGitConfigurationPush>(guardedValue, (value) => PipelineTriggerGitConfigurationPush.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceActionName: pulumi.Input.fromValue(map['sourceActionName'] as String),
    );
  }
}

