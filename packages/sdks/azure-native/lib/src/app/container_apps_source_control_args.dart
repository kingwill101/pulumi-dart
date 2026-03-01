// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'github_action_configuration.dart';

/// {@template pulumi_app_container_apps_source_control_args_doc}
/// The set of arguments for ContainerAppsSourceControl.
/// {@endtemplate}
/// {@macro pulumi_app_container_apps_source_control_args_doc}
class ContainerAppsSourceControlArgs {
  /// The branch which will trigger the auto deployment
  final pulumi.Input<String>? branch;
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// Container App Revision Template with all possible settings and the
  /// defaults if user did not provide them. The defaults are populated
  /// as they were at the creation time
  final pulumi.Input<GithubActionConfiguration>? githubActionConfiguration;
  /// The repo url which will be integrated to ContainerApp.
  final pulumi.Input<String>? repoUrl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Container App SourceControl.
  final pulumi.Input<String>? sourceControlName;

  /// Creates a new [ContainerAppsSourceControlArgs].
  /// [branch] The branch which will trigger the auto deployment
  /// [containerAppName] Name of the Container App.
  /// [githubActionConfiguration] Container App Revision Template with all possible settings and the
  /// [repoUrl] The repo url which will be integrated to ContainerApp.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceControlName] Name of the Container App SourceControl.
  ContainerAppsSourceControlArgs({
    pulumi.Output<String>? branch,
    required pulumi.Output<String> containerAppName,
    pulumi.Output<GithubActionConfiguration>? githubActionConfiguration,
    pulumi.Output<String>? repoUrl,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceControlName,
  }) :
      branch = pulumi.Input.asOptionalInput<String>(branch),
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      githubActionConfiguration = pulumi.Input.asOptionalInput<GithubActionConfiguration>(githubActionConfiguration),
      repoUrl = pulumi.Input.asOptionalInput<String>(repoUrl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceControlName = pulumi.Input.asOptionalInput<String>(sourceControlName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'containerAppName': containerAppName,
      'githubActionConfiguration': ?pulumi.Input.mapOptionalInputValue<GithubActionConfiguration, Map<String, dynamic>>(githubActionConfiguration, (value) => value.toMap()),
      'repoUrl': ?repoUrl,
      'resourceGroupName': resourceGroupName,
      'sourceControlName': ?sourceControlName,
    };
  }

  factory ContainerAppsSourceControlArgs.fromMap(Map<String, dynamic> map) {
    return ContainerAppsSourceControlArgs(
      branch: map['branch'] == null ? null : pulumi.Output.create<String>(map['branch'] as String),
      containerAppName: pulumi.Output.create<String>(map['containerAppName'] as String),
      githubActionConfiguration: map['githubActionConfiguration'] == null ? null : pulumi.Output.create<GithubActionConfiguration>(GithubActionConfiguration.fromMap((map['githubActionConfiguration'] as Map).cast<String, dynamic>())),
      repoUrl: map['repoUrl'] == null ? null : pulumi.Output.create<String>(map['repoUrl'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceControlName: map['sourceControlName'] == null ? null : pulumi.Output.create<String>(map['sourceControlName'] as String),
    );
  }
}

