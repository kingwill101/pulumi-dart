// ignore_for_file: unused_element, unnecessary_cast


class GetDirectoryWorkspaceCreationProperty {
  /// The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in.
  final String customSecurityGroupId;
  /// The default organizational unit (OU) for your WorkSpace directories.
  final String defaultOu;
  /// Indicates whether internet access is enabled for your WorkSpaces.
  final bool enableInternetAccess;
  /// Indicates whether maintenance mode is enabled for your WorkSpaces. For more information, see [WorkSpace Maintenance](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html).
  final bool enableMaintenanceMode;
  /// Indicates whether users are local administrators of their WorkSpaces.
  final bool userEnabledAsLocalAdministrator;

  /// Creates a new [GetDirectoryWorkspaceCreationProperty].
  /// [customSecurityGroupId] The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in.
  /// [defaultOu] The default organizational unit (OU) for your WorkSpace directories.
  /// [enableInternetAccess] Indicates whether internet access is enabled for your WorkSpaces.
  /// [enableMaintenanceMode] Indicates whether maintenance mode is enabled for your WorkSpaces. For more information, see [WorkSpace Maintenance](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html).
  /// [userEnabledAsLocalAdministrator] Indicates whether users are local administrators of their WorkSpaces.
  GetDirectoryWorkspaceCreationProperty({
    required this.customSecurityGroupId,
    required this.defaultOu,
    required this.enableInternetAccess,
    required this.enableMaintenanceMode,
    required this.userEnabledAsLocalAdministrator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSecurityGroupId': customSecurityGroupId,
      'defaultOu': defaultOu,
      'enableInternetAccess': enableInternetAccess,
      'enableMaintenanceMode': enableMaintenanceMode,
      'userEnabledAsLocalAdministrator': userEnabledAsLocalAdministrator,
    };
  }

  factory GetDirectoryWorkspaceCreationProperty.fromMap(Map<String, dynamic> map) {
    return GetDirectoryWorkspaceCreationProperty(
      customSecurityGroupId: map['customSecurityGroupId'] as String,
      defaultOu: map['defaultOu'] as String,
      enableInternetAccess: map['enableInternetAccess'] as bool,
      enableMaintenanceMode: map['enableMaintenanceMode'] as bool,
      userEnabledAsLocalAdministrator: map['userEnabledAsLocalAdministrator'] as bool,
    );
  }
}

