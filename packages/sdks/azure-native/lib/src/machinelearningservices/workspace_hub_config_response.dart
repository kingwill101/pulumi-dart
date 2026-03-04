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
      additionalWorkspaceStorageAccounts: (() {
        final guardedValue = map['additionalWorkspaceStorageAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      defaultWorkspaceResourceGroup: (() {
        final guardedValue = map['defaultWorkspaceResourceGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
