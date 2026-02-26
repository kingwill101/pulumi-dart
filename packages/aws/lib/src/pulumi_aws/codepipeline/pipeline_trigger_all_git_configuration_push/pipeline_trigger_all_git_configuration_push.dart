// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_trigger_all_git_configuration_push_branch/pipeline_trigger_all_git_configuration_push_branch.dart';
import '../pipeline_trigger_all_git_configuration_push_file_path/pipeline_trigger_all_git_configuration_push_file_path.dart';
import '../pipeline_trigger_all_git_configuration_push_tag/pipeline_trigger_all_git_configuration_push_tag.dart';

class PipelineTriggerAllGitConfigurationPush {
  /// The field that specifies to filter on branches for the push trigger configuration. A <span pulumi-lang-nodejs="`branches`" pulumi-lang-dotnet="`Branches`" pulumi-lang-go="`branches`" pulumi-lang-python="`branches`" pulumi-lang-yaml="`branches`" pulumi-lang-java="`branches`">`branches`</span> block is documented below.
  final List<PipelineTriggerAllGitConfigurationPushBranch>? branches;

  /// The field that specifies to filter on file paths for the push trigger configuration. A <span pulumi-lang-nodejs="`filePaths`" pulumi-lang-dotnet="`FilePaths`" pulumi-lang-go="`filePaths`" pulumi-lang-python="`file_paths`" pulumi-lang-yaml="`filePaths`" pulumi-lang-java="`filePaths`">`file_paths`</span> block is documented below.
  final List<PipelineTriggerAllGitConfigurationPushFilePath>? filePaths;

  /// The field that contains the details for the Git tags trigger configuration. A <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> block is documented below.
  final List<PipelineTriggerAllGitConfigurationPushTag>? tags;

  PipelineTriggerAllGitConfigurationPush({
    this.branches,
    this.filePaths,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchesValue = branches;
    if (branchesValue != null) {
      map['branches'] = Input.encodeList<
          PipelineTriggerAllGitConfigurationPushBranch,
          Map<String, dynamic>>(branchesValue, (value) => value.toMap());
    }
    final filePathsValue = filePaths;
    if (filePathsValue != null) {
      map['filePaths'] = Input.encodeList<
          PipelineTriggerAllGitConfigurationPushFilePath,
          Map<String, dynamic>>(filePathsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = Input.encodeList<PipelineTriggerAllGitConfigurationPushTag,
          Map<String, dynamic>>(tagsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipelineTriggerAllGitConfigurationPush.fromMap(
      Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfigurationPush(
      branches: map['branches'] == null
          ? null
          : Input.decodeList<PipelineTriggerAllGitConfigurationPushBranch>(
              map['branches'],
              (value) => PipelineTriggerAllGitConfigurationPushBranch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      filePaths: map['filePaths'] == null
          ? null
          : Input.decodeList<PipelineTriggerAllGitConfigurationPushFilePath>(
              map['filePaths'],
              (value) => PipelineTriggerAllGitConfigurationPushFilePath.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : Input.decodeList<PipelineTriggerAllGitConfigurationPushTag>(
              map['tags'],
              (value) => PipelineTriggerAllGitConfigurationPushTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
