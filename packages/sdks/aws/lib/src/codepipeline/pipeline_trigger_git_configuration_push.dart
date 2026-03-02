// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_trigger_git_configuration_push_branches.dart';
import 'pipeline_trigger_git_configuration_push_file_paths.dart';
import 'pipeline_trigger_git_configuration_push_tags.dart';

class PipelineTriggerGitConfigurationPush {
  /// The field that specifies to filter on branches for the push trigger configuration. A `branches` block is documented below.
  final pulumi.Input<PipelineTriggerGitConfigurationPushBranches>? branches;
  /// The field that specifies to filter on file paths for the push trigger configuration. A `file_paths` block is documented below.
  final pulumi.Input<PipelineTriggerGitConfigurationPushFilePaths>? filePaths;
  /// The field that contains the details for the Git tags trigger configuration. A `tags` block is documented below.
  final pulumi.Input<PipelineTriggerGitConfigurationPushTags>? tags;

  /// Creates a new [PipelineTriggerGitConfigurationPush].
  /// [branches] The field that specifies to filter on branches for the push trigger configuration. A `branches` block is documented below.
  /// [filePaths] The field that specifies to filter on file paths for the push trigger configuration. A `file_paths` block is documented below.
  /// [tags] The field that contains the details for the Git tags trigger configuration. A `tags` block is documented below.
  PipelineTriggerGitConfigurationPush({
    this.branches,
    this.filePaths,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': ?pulumi.Input.mapOptionalInputValue<PipelineTriggerGitConfigurationPushBranches, Map<String, dynamic>>(branches, (value) => value.toMap()),
      'filePaths': ?pulumi.Input.mapOptionalInputValue<PipelineTriggerGitConfigurationPushFilePaths, Map<String, dynamic>>(filePaths, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<PipelineTriggerGitConfigurationPushTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory PipelineTriggerGitConfigurationPush.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerGitConfigurationPush(
      branches: map['branches'] == null ? null : ((PipelineTriggerGitConfigurationPushBranches.fromMap((map['branches']! as Map).cast<String, dynamic>())).input()).input(),
      filePaths: map['filePaths'] == null ? null : ((PipelineTriggerGitConfigurationPushFilePaths.fromMap((map['filePaths']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : ((PipelineTriggerGitConfigurationPushTags.fromMap((map['tags']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

