// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_slot_github_action_configuration.dart';

/// {@template pulumi_appservice_source_control_slot_source_control_slot_args_doc}
/// The set of arguments for SourceControlSlot.
/// {@endtemplate}
/// {@macro pulumi_appservice_source_control_slot_source_control_slot_args_doc}
class SourceControlSlotArgs {
  /// The URL for the repository. Changing this forces a new resource to be created.
  final pulumi.Input<String>? branch;
  /// A `github_action_configuration` block as detailed below. Changing this forces a new resource to be created.
  final pulumi.Input<SourceControlSlotGithubActionConfiguration>? githubActionConfiguration;
  /// The branch name to use for deployments. Changing this forces a new resource to be created.
  final pulumi.Input<String>? repoUrl;
  /// Should the Deployment Rollback be enabled? Defaults to `false` Changing this forces a new resource to be created.
  final pulumi.Input<bool>? rollbackEnabled;
  /// The ID of the Linux or Windows Web App Slot. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Function App Slots are not supported at this time.
  final pulumi.Input<String> slotId;
  /// Should the Slot use local Git configuration. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useLocalGit;
  /// Should code be deployed manually. Set to `true` to disable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useManualIntegration;
  /// The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useMercurial;

  /// Creates a new [SourceControlSlotArgs].
  /// [branch] The URL for the repository. Changing this forces a new resource to be created.
  /// [githubActionConfiguration] A `github_action_configuration` block as detailed below. Changing this forces a new resource to be created.
  /// [repoUrl] The branch name to use for deployments. Changing this forces a new resource to be created.
  /// [rollbackEnabled] Should the Deployment Rollback be enabled? Defaults to `false` Changing this forces a new resource to be created.
  /// [slotId] The ID of the Linux or Windows Web App Slot. Changing this forces a new resource to be created.
  /// [useLocalGit] Should the Slot use local Git configuration. Changing this forces a new resource to be created.
  /// [useManualIntegration] Should code be deployed manually. Set to `true` to disable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  /// [useMercurial] The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  SourceControlSlotArgs({
    String? branch,
    SourceControlSlotGithubActionConfiguration? githubActionConfiguration,
    String? repoUrl,
    bool? rollbackEnabled,
    required String slotId,
    bool? useLocalGit,
    bool? useManualIntegration,
    bool? useMercurial,
  }) :
      branch = pulumi.Input.asOptionalInput<String>(branch),
      githubActionConfiguration = pulumi.Input.asOptionalInput<SourceControlSlotGithubActionConfiguration>(githubActionConfiguration),
      repoUrl = pulumi.Input.asOptionalInput<String>(repoUrl),
      rollbackEnabled = pulumi.Input.asOptionalInput<bool>(rollbackEnabled),
      slotId = pulumi.Input.asInput<String>(slotId),
      useLocalGit = pulumi.Input.asOptionalInput<bool>(useLocalGit),
      useManualIntegration = pulumi.Input.asOptionalInput<bool>(useManualIntegration),
      useMercurial = pulumi.Input.asOptionalInput<bool>(useMercurial);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'githubActionConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceControlSlotGithubActionConfiguration, Map<String, dynamic>>(githubActionConfiguration, (value) => value.toMap()),
      'repoUrl': ?repoUrl,
      'rollbackEnabled': ?rollbackEnabled,
      'slotId': slotId,
      'useLocalGit': ?useLocalGit,
      'useManualIntegration': ?useManualIntegration,
      'useMercurial': ?useMercurial,
    };
  }

  factory SourceControlSlotArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlSlotArgs(
      branch: map['branch'] == null ? null : map['branch'] as String,
      githubActionConfiguration: map['githubActionConfiguration'] == null ? null : SourceControlSlotGithubActionConfiguration.fromMap((map['githubActionConfiguration'] as Map).cast<String, dynamic>()),
      repoUrl: map['repoUrl'] == null ? null : map['repoUrl'] as String,
      rollbackEnabled: map['rollbackEnabled'] == null ? null : map['rollbackEnabled'] as bool,
      slotId: map['slotId'] as String,
      useLocalGit: map['useLocalGit'] == null ? null : map['useLocalGit'] as bool,
      useManualIntegration: map['useManualIntegration'] == null ? null : map['useManualIntegration'] as bool,
      useMercurial: map['useMercurial'] == null ? null : map['useMercurial'] as bool,
    );
  }
}

