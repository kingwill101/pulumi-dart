// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_flexible_server_active_directory_administrator_flexible_server_active_directory_administrator_args_doc}
/// The set of arguments for FlexibleServerActiveDirectoryAdministrator.
/// {@endtemplate}
/// {@macro pulumi_postgresql_flexible_server_active_directory_administrator_flexible_server_active_directory_administrator_args_doc}
class FlexibleServerActiveDirectoryAdministratorArgs {
  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created.
  final pulumi.Input<String> objectId;
  /// The name of Azure Active Directory principal. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalName;
  /// The type of Azure Active Directory principal. Possible values are `Group`, `ServicePrincipal` and `User`. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalType;
  /// The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverName;
  /// The Azure Tenant ID. Changing this forces a new resource to be created.
  final pulumi.Input<String> tenantId;

  /// Creates a new [FlexibleServerActiveDirectoryAdministratorArgs].
  /// [objectId] The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created.
  /// [principalName] The name of Azure Active Directory principal. Changing this forces a new resource to be created.
  /// [principalType] The type of Azure Active Directory principal. Possible values are `Group`, `ServicePrincipal` and `User`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created.
  /// [serverName] The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created.
  /// [tenantId] The Azure Tenant ID. Changing this forces a new resource to be created.
  FlexibleServerActiveDirectoryAdministratorArgs({
    required String objectId,
    required String principalName,
    required String principalType,
    required String resourceGroupName,
    required String serverName,
    required String tenantId,
  }) :
      objectId = pulumi.Input.asInput<String>(objectId),
      principalName = pulumi.Input.asInput<String>(principalName),
      principalType = pulumi.Input.asInput<String>(principalType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'principalName': principalName,
      'principalType': principalType,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'tenantId': tenantId,
    };
  }

  factory FlexibleServerActiveDirectoryAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerActiveDirectoryAdministratorArgs(
      objectId: map['objectId'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

