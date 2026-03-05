// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_all_git_configuration_push_branch.dart';
import 'pipeline_trigger_all_git_configuration_push_file_path.dart';
import 'pipeline_trigger_all_git_configuration_push_tag.dart';

class PipelineTriggerAllGitConfigurationPush {
  /// The field that specifies to filter on branches for the push trigger configuration. A `branches` block is documented below.
  final pulumi.Input<List<PipelineTriggerAllGitConfigurationPushBranch>>? branches;
  /// The field that specifies to filter on file paths for the push trigger configuration. A `file_paths` block is documented below.
  final pulumi.Input<List<PipelineTriggerAllGitConfigurationPushFilePath>>? filePaths;
  /// The field that contains the details for the Git tags trigger configuration. A `tags` block is documented below.
  final pulumi.Input<List<PipelineTriggerAllGitConfigurationPushTag>>? tags;

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
      'branches': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerAllGitConfigurationPushBranch>, List<Map<String, dynamic>>>(branches, (value) => pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPushBranch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filePaths': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerAllGitConfigurationPushFilePath>, List<Map<String, dynamic>>>(filePaths, (value) => pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPushFilePath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<PipelineTriggerAllGitConfigurationPushTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<PipelineTriggerAllGitConfigurationPushTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelineTriggerAllGitConfigurationPush.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfigurationPush(
      branches: (() { final guardedValue = map['branches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPushBranch>(guardedValue, (value) => PipelineTriggerAllGitConfigurationPushBranch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filePaths: (() { final guardedValue = map['filePaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPushFilePath>(guardedValue, (value) => PipelineTriggerAllGitConfigurationPushFilePath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineTriggerAllGitConfigurationPushTag>(guardedValue, (value) => PipelineTriggerAllGitConfigurationPushTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

