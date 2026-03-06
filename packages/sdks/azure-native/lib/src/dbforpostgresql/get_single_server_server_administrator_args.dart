// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_single_server_server_administrator_args_doc}
/// Arguments for getSingleServerServerAdministrator.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_single_server_server_administrator_args_doc}
class GetSingleServerServerAdministratorArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetSingleServerServerAdministratorArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  const GetSingleServerServerAdministratorArgs({
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetSingleServerServerAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return GetSingleServerServerAdministratorArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

