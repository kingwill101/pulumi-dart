// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkspaceHub's configuration object.
class WorkspaceHubConfig {
  final pulumi.Input<List<String>?>? additionalWorkspaceStorageAccounts;
  final pulumi.Input<String?>? defaultWorkspaceResourceGroup;

  /// Creates a new [WorkspaceHubConfig].
  /// [additionalWorkspaceStorageAccounts] Optional.
  /// [defaultWorkspaceResourceGroup] Optional.
  const WorkspaceHubConfig({
    this.additionalWorkspaceStorageAccounts,
    this.defaultWorkspaceResourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalWorkspaceStorageAccounts': ?additionalWorkspaceStorageAccounts,
      'defaultWorkspaceResourceGroup': ?defaultWorkspaceResourceGroup,
    };
  }

  factory WorkspaceHubConfig.fromMap(Map<String, dynamic> map) {
    return WorkspaceHubConfig(
      additionalWorkspaceStorageAccounts: (() { final guardedValue = map['additionalWorkspaceStorageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultWorkspaceResourceGroup: (() { final guardedValue = map['defaultWorkspaceResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
