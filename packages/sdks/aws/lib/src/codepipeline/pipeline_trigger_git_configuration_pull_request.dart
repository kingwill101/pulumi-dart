// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_git_configuration_pull_request_branches.dart';
import 'pipeline_trigger_git_configuration_pull_request_file_paths.dart';

class PipelineTriggerGitConfigurationPullRequest {
  /// The field that specifies to filter on branches for the pull request trigger configuration. A `branches` block is documented below.
  final pulumi.Input<PipelineTriggerGitConfigurationPullRequestBranches>?
  branches;

  /// A list that specifies which pull request events to filter on (opened, updated, closed) for the trigger configuration. Possible values are `OPEN`, `UPDATED ` and `CLOSED`.
  final pulumi.Input<List<String>>? events;

  /// The field that specifies to filter on file paths for the pull request trigger configuration. A `file_paths` block is documented below.
  final pulumi.Input<PipelineTriggerGitConfigurationPullRequestFilePaths>?
  filePaths;

  /// Creates a new [PipelineTriggerGitConfigurationPullRequest].
  /// [branches] The field that specifies to filter on branches for the pull request trigger configuration. A `branches` block is documented below.
  /// [events] A list that specifies which pull request events to filter on (opened, updated, closed) for the trigger configuration. Possible values are `OPEN`, `UPDATED ` and `CLOSED`.
  /// [filePaths] The field that specifies to filter on file paths for the pull request trigger configuration. A `file_paths` block is documented below.
  PipelineTriggerGitConfigurationPullRequest({
    this.branches,
    this.events,
    this.filePaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineTriggerGitConfigurationPullRequestBranches,
            Map<String, dynamic>
          >(branches, (value) => value.toMap()),
      'events': ?events,
      'filePaths':
          ?pulumi.Input.mapOptionalInputValue<
            PipelineTriggerGitConfigurationPullRequestFilePaths,
            Map<String, dynamic>
          >(filePaths, (value) => value.toMap()),
    };
  }

  factory PipelineTriggerGitConfigurationPullRequest.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipelineTriggerGitConfigurationPullRequest(
      branches: (() {
        final guardedValue = map['branches'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineTriggerGitConfigurationPullRequestBranches.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      events: (() {
        final guardedValue = map['events'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      filePaths: (() {
        final guardedValue = map['filePaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipelineTriggerGitConfigurationPullRequestFilePaths.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
