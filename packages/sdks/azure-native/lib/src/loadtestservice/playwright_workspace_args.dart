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
  PlaywrightWorkspaceArgs({
    pulumi.Output<String>? localAuth,
    pulumi.Output<String>? location,
    pulumi.Output<String>? playwrightWorkspaceName,
    pulumi.Output<String>? regionalAffinity,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      localAuth = pulumi.Input.asOptionalInput<String>(localAuth),
      location = pulumi.Input.asOptionalInput<String>(location),
      playwrightWorkspaceName = pulumi.Input.asOptionalInput<String>(playwrightWorkspaceName),
      regionalAffinity = pulumi.Input.asOptionalInput<String>(regionalAffinity),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      localAuth: map['localAuth'] == null ? null : pulumi.Output.create<String>(map['localAuth'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      playwrightWorkspaceName: map['playwrightWorkspaceName'] == null ? null : pulumi.Output.create<String>(map['playwrightWorkspaceName'] as String),
      regionalAffinity: map['regionalAffinity'] == null ? null : pulumi.Output.create<String>(map['regionalAffinity'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

