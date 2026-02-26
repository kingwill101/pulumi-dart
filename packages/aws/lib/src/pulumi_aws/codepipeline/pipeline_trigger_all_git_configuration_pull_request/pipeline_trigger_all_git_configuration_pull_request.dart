// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_trigger_all_git_configuration_pull_request_branch/pipeline_trigger_all_git_configuration_pull_request_branch.dart';
import '../pipeline_trigger_all_git_configuration_pull_request_file_path/pipeline_trigger_all_git_configuration_pull_request_file_path.dart';

class PipelineTriggerAllGitConfigurationPullRequest {
  /// The field that specifies to filter on branches for the pull request trigger configuration. A <span pulumi-lang-nodejs="`branches`" pulumi-lang-dotnet="`Branches`" pulumi-lang-go="`branches`" pulumi-lang-python="`branches`" pulumi-lang-yaml="`branches`" pulumi-lang-java="`branches`">`branches`</span> block is documented below.
  final List<PipelineTriggerAllGitConfigurationPullRequestBranch>? branches;

  /// A list that specifies which pull request events to filter on (opened, updated, closed) for the trigger configuration. Possible values are `OPEN`, `UPDATED ` and `CLOSED`.
  final List<String>? events;

  /// The field that specifies to filter on file paths for the pull request trigger configuration. A <span pulumi-lang-nodejs="`filePaths`" pulumi-lang-dotnet="`FilePaths`" pulumi-lang-go="`filePaths`" pulumi-lang-python="`file_paths`" pulumi-lang-yaml="`filePaths`" pulumi-lang-java="`filePaths`">`file_paths`</span> block is documented below.
  final List<PipelineTriggerAllGitConfigurationPullRequestFilePath>? filePaths;

  PipelineTriggerAllGitConfigurationPullRequest({
    this.branches,
    this.events,
    this.filePaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchesValue = branches;
    if (branchesValue != null) {
      map['branches'] = Input.encodeList<
          PipelineTriggerAllGitConfigurationPullRequestBranch,
          Map<String, dynamic>>(branchesValue, (value) => value.toMap());
    }
    final eventsValue = events;
    if (eventsValue != null) {
      map['events'] = eventsValue;
    }
    final filePathsValue = filePaths;
    if (filePathsValue != null) {
      map['filePaths'] = Input.encodeList<
          PipelineTriggerAllGitConfigurationPullRequestFilePath,
          Map<String, dynamic>>(filePathsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipelineTriggerAllGitConfigurationPullRequest.fromMap(
      Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfigurationPullRequest(
      branches: map['branches'] == null
          ? null
          : Input.decodeList<
                  PipelineTriggerAllGitConfigurationPullRequestBranch>(
              map['branches'],
              (value) =>
                  PipelineTriggerAllGitConfigurationPullRequestBranch.fromMap(
                      (value as Map).cast<String, dynamic>())),
      events:
          map['events'] == null ? null : (map['events'] as List).cast<String>(),
      filePaths: map['filePaths'] == null
          ? null
          : Input.decodeList<
                  PipelineTriggerAllGitConfigurationPullRequestFilePath>(
              map['filePaths'],
              (value) =>
                  PipelineTriggerAllGitConfigurationPullRequestFilePath.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
