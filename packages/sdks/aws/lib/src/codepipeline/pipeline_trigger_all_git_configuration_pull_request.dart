// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_all_git_configuration_pull_request_branch.dart';
import 'pipeline_trigger_all_git_configuration_pull_request_file_path.dart';

class PipelineTriggerAllGitConfigurationPullRequest {
  /// The field that specifies to filter on branches for the pull request trigger configuration. A `branches` block is documented below.
  final pulumi.Input<List<PipelineTriggerAllGitConfigurationPullRequestBranch>>? branches;
  /// A list that specifies which pull request events to filter on (opened, updated, closed) for the trigger configuration. Possible values are `OPEN`, `UPDATED ` and `CLOSED`.
  final pulumi.Input<List<String>>? events;
  /// The field that specifies to filter on file paths for the pull request trigger configuration. A `file_paths` block is documented below.
  final pulumi.Input<List<PipelineTriggerAllGitConfigurationPullRequestFilePath>>? filePaths;

  /// Creates a new [PipelineTriggerAllGitConfigurationPullRequest].
  /// [branches] The field that specifies to filter on branches for the pull request trigger configuration. A `branches` block is documented below.
  /// [events] A list that specifies which pull request events to filter on (opened, updated, closed) for the trigger configuration. Possible values are `OPEN`, `UPDATED ` and `CLOSED`.
  /// [filePaths] The field that specifies to filter on file paths for the pull request trigger configuration. A `file_paths` block is documented below.
  const PipelineTriggerAllGitConfigurationPullRequest({
    this.branches,
    this.events,
    this.filePaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerAllGitConfigurationPullRequestBranch>, List<Map<String, dynamic>>>(branches, (value) => pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPullRequestBranch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'events': ?events,
      'filePaths': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerAllGitConfigurationPullRequestFilePath>, List<Map<String, dynamic>>>(filePaths, (value) => pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPullRequestFilePath, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelineTriggerAllGitConfigurationPullRequest.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfigurationPullRequest(
      branches: (() { final guardedValue = map['branches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPullRequestBranch>(guardedValue, (value) => PipelineTriggerAllGitConfigurationPullRequestBranch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filePaths: (() { final guardedValue = map['filePaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPullRequestFilePath>(guardedValue, (value) => PipelineTriggerAllGitConfigurationPullRequestFilePath.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

