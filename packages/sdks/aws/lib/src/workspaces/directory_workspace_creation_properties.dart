// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryWorkspaceCreationProperties {
  /// The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in.
  final pulumi.Input<String>? customSecurityGroupId;
  /// The default organizational unit (OU) for your WorkSpace directories. Should conform `"OU=<value>,DC=<value>,...,DC=<value>"` pattern.
  final pulumi.Input<String>? defaultOu;
  /// Indicates whether internet access is enabled for your WorkSpaces.
  final pulumi.Input<bool>? enableInternetAccess;
  /// Indicates whether maintenance mode is enabled for your WorkSpaces. Valid only if `workspace_type` is set to `PERSONAL`.
  final pulumi.Input<bool>? enableMaintenanceMode;
  /// Indicates whether users are local administrators of their WorkSpaces. Valid only if `workspace_type` is set to `PERSONAL`.
  final pulumi.Input<bool>? userEnabledAsLocalAdministrator;

  /// Creates a new [DirectoryWorkspaceCreationProperties].
  /// [customSecurityGroupId] The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in.
  /// [defaultOu] The default organizational unit (OU) for your WorkSpace directories. Should conform `"OU=<value>,DC=<value>,...,DC=<value>"` pattern.
  /// [enableInternetAccess] Indicates whether internet access is enabled for your WorkSpaces.
  /// [enableMaintenanceMode] Indicates whether maintenance mode is enabled for your WorkSpaces. Valid only if `workspace_type` is set to `PERSONAL`.
  /// [userEnabledAsLocalAdministrator] Indicates whether users are local administrators of their WorkSpaces. Valid only if `workspace_type` is set to `PERSONAL`.
  DirectoryWorkspaceCreationProperties({
    this.customSecurityGroupId,
    this.defaultOu,
    this.enableInternetAccess,
    this.enableMaintenanceMode,
    this.userEnabledAsLocalAdministrator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSecurityGroupId': ?customSecurityGroupId,
      'defaultOu': ?defaultOu,
      'enableInternetAccess': ?enableInternetAccess,
      'enableMaintenanceMode': ?enableMaintenanceMode,
      'userEnabledAsLocalAdministrator': ?userEnabledAsLocalAdministrator,
    };
  }

  factory DirectoryWorkspaceCreationProperties.fromMap(Map<String, dynamic> map) {
    return DirectoryWorkspaceCreationProperties(
      customSecurityGroupId: map['customSecurityGroupId'] == null ? null : ((map['customSecurityGroupId'] as String).input()).input(),
      defaultOu: map['defaultOu'] == null ? null : ((map['defaultOu'] as String).input()).input(),
      enableInternetAccess: map['enableInternetAccess'] == null ? null : ((map['enableInternetAccess'] as bool).input()).input(),
      enableMaintenanceMode: map['enableMaintenanceMode'] == null ? null : ((map['enableMaintenanceMode'] as bool).input()).input(),
      userEnabledAsLocalAdministrator: map['userEnabledAsLocalAdministrator'] == null ? null : ((map['userEnabledAsLocalAdministrator'] as bool).input()).input(),
    );
  }
}

