// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_single_server_database_args_doc}
/// Arguments for getSingleServerDatabase.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_single_server_database_args_doc}
class GetSingleServerDatabaseArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetSingleServerDatabaseArgs].
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetSingleServerDatabaseArgs({
    required String databaseName,
    required String resourceGroupName,
    required String serverName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetSingleServerDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetSingleServerDatabaseArgs(
      databaseName: map['databaseName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

