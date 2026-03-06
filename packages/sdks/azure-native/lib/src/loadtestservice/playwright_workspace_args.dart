// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadtestservice_playwright_workspace_args_doc}
/// The set of arguments for PlaywrightWorkspace.
/// {@endtemplate}
/// {@macro pulumi_loadtestservice_playwright_workspace_args_doc}
class PlaywrightWorkspaceArgs {
  /// Enables the workspace to use local authentication through service access tokens for operations.
  final pulumi.Input<String>? localAuth;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the PlaywrightWorkspace
  final pulumi.Input<String>? playwrightWorkspaceName;
  /// Controls the connection region for client workers to cloud-hosted browsers. When enabled, workers connect to browsers in the closest Azure region for lower latency. When disabled, workers connect to browsers in the Azure region where the workspace was created.
  final pulumi.Input<String>? regionalAffinity;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PlaywrightWorkspaceArgs].
  /// [localAuth] Enables the workspace to use local authentication through service access tokens for operations.
  /// [location] The geo-location where the resource lives
  /// [playwrightWorkspaceName] The name of the PlaywrightWorkspace
  /// [regionalAffinity] Controls the connection region for client workers to cloud-hosted browsers. When enabled, workers connect to browsers in the closest Azure region for lower latency. When disabled, workers connect to browsers in the Azure region where the workspace was created.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const PlaywrightWorkspaceArgs({
    this.localAuth,
    this.location,
    this.playwrightWorkspaceName,
    this.regionalAffinity,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localAuth': ?localAuth,
      'location': ?location,
      'playwrightWorkspaceName': ?playwrightWorkspaceName,
      'regionalAffinity': ?regionalAffinity,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PlaywrightWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return PlaywrightWorkspaceArgs(
      localAuth: (() { final guardedValue = map['localAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      playwrightWorkspaceName: (() { final guardedValue = map['playwrightWorkspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalAffinity: (() { final guardedValue = map['regionalAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

