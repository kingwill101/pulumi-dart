// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkspaceHub's configuration object.
class WorkspaceHubConfigResponse {
  final pulumi.Input<List<String>>? additionalWorkspaceStorageAccounts;
  final pulumi.Input<String>? defaultWorkspaceResourceGroup;

  /// Creates a new [WorkspaceHubConfigResponse].
  /// [additionalWorkspaceStorageAccounts] Optional.
  /// [defaultWorkspaceResourceGroup] Optional.
  WorkspaceHubConfigResponse({
    this.additionalWorkspaceStorageAccounts,
    this.defaultWorkspaceResourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalWorkspaceStorageAccounts': ?additionalWorkspaceStorageAccounts,
      'defaultWorkspaceResourceGroup': ?defaultWorkspaceResourceGroup,
    };
  }

  factory WorkspaceHubConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceHubConfigResponse(
      additionalWorkspaceStorageAccounts: map['additionalWorkspaceStorageAccounts'] == null ? null : ((map['additionalWorkspaceStorageAccounts'] as List).cast<String>()).input(),
      defaultWorkspaceResourceGroup: map['defaultWorkspaceResourceGroup'] == null ? null : (map['defaultWorkspaceResourceGroup'] as String).input(),
    );
  }
}

