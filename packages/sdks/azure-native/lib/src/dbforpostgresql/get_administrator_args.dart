// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_administrator_args_doc}
/// Arguments for getAdministrator.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_administrator_args_doc}
class GetAdministratorArgs {
  /// Object identifier of the Microsoft Entra principal.
  final pulumi.Input<String> objectId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetAdministratorArgs].
  /// [objectId] Object identifier of the Microsoft Entra principal.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetAdministratorArgs({
    required this.objectId,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return GetAdministratorArgs(
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

