// ignore_for_file: unused_element, unnecessary_cast


/// WorkspaceHub's configuration object.
class WorkspaceHubConfig {
  final List<String>? additionalWorkspaceStorageAccounts;
  final String? defaultWorkspaceResourceGroup;

  /// Creates a new [WorkspaceHubConfig].
  /// [additionalWorkspaceStorageAccounts] Optional.
  /// [defaultWorkspaceResourceGroup] Optional.
  WorkspaceHubConfig({
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
      additionalWorkspaceStorageAccounts: map['additionalWorkspaceStorageAccounts'] == null ? null : (map['additionalWorkspaceStorageAccounts'] as List).cast<String>(),
      defaultWorkspaceResourceGroup: map['defaultWorkspaceResourceGroup'] == null ? null : map['defaultWorkspaceResourceGroup'] as String,
    );
  }
}

