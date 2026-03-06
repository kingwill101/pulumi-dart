// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadtestservice_get_playwright_workspace_args_doc}
/// Arguments for getPlaywrightWorkspace.
/// {@endtemplate}
/// {@macro pulumi_loadtestservice_get_playwright_workspace_args_doc}
class GetPlaywrightWorkspaceArgs {
  /// The name of the PlaywrightWorkspace
  final pulumi.Input<String> playwrightWorkspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPlaywrightWorkspaceArgs].
  /// [playwrightWorkspaceName] The name of the PlaywrightWorkspace
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPlaywrightWorkspaceArgs({
    required this.playwrightWorkspaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'playwrightWorkspaceName': playwrightWorkspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPlaywrightWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetPlaywrightWorkspaceArgs(
      playwrightWorkspaceName: pulumi.Input.fromValue(map['playwrightWorkspaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

