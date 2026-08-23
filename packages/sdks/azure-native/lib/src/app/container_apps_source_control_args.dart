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
  const ContainerAppsSourceControlArgs({
    this.branch,
    required this.containerAppName,
    this.githubActionConfiguration,
    this.repoUrl,
    required this.resourceGroupName,
    this.sourceControlName,
  });

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
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppName: pulumi.Input.fromValue(map['containerAppName'] as String),
      githubActionConfiguration: (() { final guardedValue = map['githubActionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GithubActionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceControlName: (() { final guardedValue = map['sourceControlName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
