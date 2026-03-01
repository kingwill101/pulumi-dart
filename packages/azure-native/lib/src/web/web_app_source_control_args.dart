// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_action_configuration.dart';

/// {@template pulumi_web_web_app_source_control_args_doc}
/// The set of arguments for WebAppSourceControl.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_source_control_args_doc}
class WebAppSourceControlArgs {
  /// Name of branch to use for deployment.
  final pulumi.Input<String>? branch;
  /// <code>true</code> to enable deployment rollback; otherwise, <code>false</code>.
  final pulumi.Input<bool>? deploymentRollbackEnabled;
  /// If GitHub Action is selected, than the associated configuration.
  final pulumi.Input<GitHubActionConfiguration>? gitHubActionConfiguration;
  /// <code>true</code> if this is deployed via GitHub action.
  final pulumi.Input<bool>? isGitHubAction;
  /// <code>true</code> to limit to manual integration; <code>false</code> to enable continuous integration (which configures webhooks into online repos like GitHub).
  final pulumi.Input<bool>? isManualIntegration;
  /// <code>true</code> for a Mercurial repository; <code>false</code> for a Git repository.
  final pulumi.Input<bool>? isMercurial;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Repository or source control URL.
  final pulumi.Input<String>? repoUrl;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppSourceControlArgs].
  /// [branch] Name of branch to use for deployment.
  /// [deploymentRollbackEnabled] <code>true</code> to enable deployment rollback; otherwise, <code>false</code>.
  /// [gitHubActionConfiguration] If GitHub Action is selected, than the associated configuration.
  /// [isGitHubAction] <code>true</code> if this is deployed via GitHub action.
  /// [isManualIntegration] <code>true</code> to limit to manual integration; <code>false</code> to enable continuous integration (which configures webhooks into online repos like GitHub).
  /// [isMercurial] <code>true</code> for a Mercurial repository; <code>false</code> for a Git repository.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [repoUrl] Repository or source control URL.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppSourceControlArgs({
    String? branch,
    bool? deploymentRollbackEnabled,
    GitHubActionConfiguration? gitHubActionConfiguration,
    bool? isGitHubAction,
    bool? isManualIntegration,
    bool? isMercurial,
    String? kind,
    required String name,
    String? repoUrl,
    required String resourceGroupName,
  }) :
      branch = pulumi.Input.asOptionalInput<String>(branch),
      deploymentRollbackEnabled = pulumi.Input.asOptionalInput<bool>(deploymentRollbackEnabled),
      gitHubActionConfiguration = pulumi.Input.asOptionalInput<GitHubActionConfiguration>(gitHubActionConfiguration),
      isGitHubAction = pulumi.Input.asOptionalInput<bool>(isGitHubAction),
      isManualIntegration = pulumi.Input.asOptionalInput<bool>(isManualIntegration),
      isMercurial = pulumi.Input.asOptionalInput<bool>(isMercurial),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      repoUrl = pulumi.Input.asOptionalInput<String>(repoUrl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'deploymentRollbackEnabled': ?deploymentRollbackEnabled,
      'gitHubActionConfiguration': ?pulumi.Input.mapOptionalInputValue<GitHubActionConfiguration, Map<String, dynamic>>(gitHubActionConfiguration, (value) => value.toMap()),
      'isGitHubAction': ?isGitHubAction,
      'isManualIntegration': ?isManualIntegration,
      'isMercurial': ?isMercurial,
      'kind': ?kind,
      'name': name,
      'repoUrl': ?repoUrl,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppSourceControlArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSourceControlArgs(
      branch: map['branch'] == null ? null : map['branch'] as String,
      deploymentRollbackEnabled: map['deploymentRollbackEnabled'] == null ? null : map['deploymentRollbackEnabled'] as bool,
      gitHubActionConfiguration: map['gitHubActionConfiguration'] == null ? null : GitHubActionConfiguration.fromMap((map['gitHubActionConfiguration'] as Map).cast<String, dynamic>()),
      isGitHubAction: map['isGitHubAction'] == null ? null : map['isGitHubAction'] as bool,
      isManualIntegration: map['isManualIntegration'] == null ? null : map['isManualIntegration'] as bool,
      isMercurial: map['isMercurial'] == null ? null : map['isMercurial'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      repoUrl: map['repoUrl'] == null ? null : map['repoUrl'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

