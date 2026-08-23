// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryWorkspaceCreationProperties {
  /// The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in.
  final pulumi.Input<String>? customSecurityGroupId;
  /// The default organizational unit (OU) for your WorkSpace directories. Should conform `"OU=&lt;value&gt;,DC=&lt;value&gt;,...,DC=&lt;value&gt;"` pattern.
  final pulumi.Input<String>? defaultOu;
  /// Indicates whether internet access is enabled for your WorkSpaces.
  final pulumi.Input<bool>? enableInternetAccess;
  /// Indicates whether maintenance mode is enabled for your WorkSpaces. Valid only if `workspaceType` is set to `PERSONAL`.
  final pulumi.Input<bool>? enableMaintenanceMode;
  /// Indicates whether users are local administrators of their WorkSpaces. Valid only if `workspaceType` is set to `PERSONAL`.
  final pulumi.Input<bool>? userEnabledAsLocalAdministrator;

  /// Creates a new [DirectoryWorkspaceCreationProperties].
  /// [customSecurityGroupId] The identifier of your custom security group. Should relate to the same VPC, where workspaces reside in.
  /// [defaultOu] The default organizational unit (OU) for your WorkSpace directories. Should conform `"OU=&lt;value&gt;,DC=&lt;value&gt;,...,DC=&lt;value&gt;"` pattern.
  /// [enableInternetAccess] Indicates whether internet access is enabled for your WorkSpaces.
  /// [enableMaintenanceMode] Indicates whether maintenance mode is enabled for your WorkSpaces. Valid only if `workspaceType` is set to `PERSONAL`.
  /// [userEnabledAsLocalAdministrator] Indicates whether users are local administrators of their WorkSpaces. Valid only if `workspaceType` is set to `PERSONAL`.
  const DirectoryWorkspaceCreationProperties({
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
      customSecurityGroupId: (() { final guardedValue = map['customSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultOu: (() { final guardedValue = map['defaultOu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableInternetAccess: (() { final guardedValue = map['enableInternetAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableMaintenanceMode: (() { final guardedValue = map['enableMaintenanceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userEnabledAsLocalAdministrator: (() { final guardedValue = map['userEnabledAsLocalAdministrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
