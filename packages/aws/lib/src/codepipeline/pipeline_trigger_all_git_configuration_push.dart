// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_all_git_configuration_push_branch.dart';
import 'pipeline_trigger_all_git_configuration_push_file_path.dart';
import 'pipeline_trigger_all_git_configuration_push_tag.dart';

class PipelineTriggerAllGitConfigurationPush {
  /// The field that specifies to filter on branches for the push trigger configuration. A `branches` block is documented below.
  final List<PipelineTriggerAllGitConfigurationPushBranch>? branches;
  /// The field that specifies to filter on file paths for the push trigger configuration. A `file_paths` block is documented below.
  final List<PipelineTriggerAllGitConfigurationPushFilePath>? filePaths;
  /// The field that contains the details for the Git tags trigger configuration. A `tags` block is documented below.
  final List<PipelineTriggerAllGitConfigurationPushTag>? tags;

  /// Creates a new [PipelineTriggerAllGitConfigurationPush].
  /// [branches] The field that specifies to filter on branches for the push trigger configuration. A `branches` block is documented below.
  /// [filePaths] The field that specifies to filter on file paths for the push trigger configuration. A `file_paths` block is documented below.
  /// [tags] The field that contains the details for the Git tags trigger configuration. A `tags` block is documented below.
  PipelineTriggerAllGitConfigurationPush({
    this.branches,
    this.filePaths,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': ?branches == null ? null : pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPushBranch, Map<String, dynamic>>(branches!, (value) => value.toMap()),
      'filePaths': ?filePaths == null ? null : pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPushFilePath, Map<String, dynamic>>(filePaths!, (value) => value.toMap()),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPushTag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory PipelineTriggerAllGitConfigurationPush.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfigurationPush(
      branches: map['branches'] == null ? null : pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPushBranch>(map['branches'], (value) => PipelineTriggerAllGitConfigurationPushBranch.fromMap((value as Map).cast<String, dynamic>())),
      filePaths: map['filePaths'] == null ? null : pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPushFilePath>(map['filePaths'], (value) => PipelineTriggerAllGitConfigurationPushFilePath.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPushTag>(map['tags'], (value) => PipelineTriggerAllGitConfigurationPushTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

