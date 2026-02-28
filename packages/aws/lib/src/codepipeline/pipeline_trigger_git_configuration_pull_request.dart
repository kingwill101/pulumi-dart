// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_trigger_git_configuration_pull_request_branches.dart';
import 'pipeline_trigger_git_configuration_pull_request_file_paths.dart';

class PipelineTriggerGitConfigurationPullRequest {
  /// The field that specifies to filter on branches for the pull request trigger configuration. A `branches` block is documented below.
  final PipelineTriggerGitConfigurationPullRequestBranches? branches;

  /// A list that specifies which pull request events to filter on (opened, updated, closed) for the trigger configuration. Possible values are `OPEN`, `UPDATED ` and `CLOSED`.
  final List<String>? events;

  /// The field that specifies to filter on file paths for the pull request trigger configuration. A `file_paths` block is documented below.
  final PipelineTriggerGitConfigurationPullRequestFilePaths? filePaths;

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
    final map = <String, dynamic>{};
    final branchesValue = branches;
    if (branchesValue != null) {
      map['branches'] = branchesValue.toMap();
    }
    final eventsValue = events;
    if (eventsValue != null) {
      map['events'] = eventsValue;
    }
    final filePathsValue = filePaths;
    if (filePathsValue != null) {
      map['filePaths'] = filePathsValue.toMap();
    }
    return map;
  }

  factory PipelineTriggerGitConfigurationPullRequest.fromMap(
      Map<String, dynamic> map) {
    return PipelineTriggerGitConfigurationPullRequest(
      branches: map['branches'] == null
          ? null
          : PipelineTriggerGitConfigurationPullRequestBranches.fromMap(
              (map['branches'] as Map).cast<String, dynamic>()),
      events:
          map['events'] == null ? null : (map['events'] as List).cast<String>(),
      filePaths: map['filePaths'] == null
          ? null
          : PipelineTriggerGitConfigurationPullRequestFilePaths.fromMap(
              (map['filePaths'] as Map).cast<String, dynamic>()),
    );
  }
}
