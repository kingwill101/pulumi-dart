// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformysql_single_server_database_args_doc}
/// The set of arguments for SingleServerDatabase.
/// {@endtemplate}
/// {@macro pulumi_dbformysql_single_server_database_args_doc}
class SingleServerDatabaseArgs {
  /// The charset of the database.
  final pulumi.Input<String>? charset;
  /// The collation of the database.
  final pulumi.Input<String>? collation;
  /// The name of the database.
  final pulumi.Input<String>? databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [SingleServerDatabaseArgs].
  /// [charset] The charset of the database.
  /// [collation] The collation of the database.
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  SingleServerDatabaseArgs({
    this.charset,
    this.collation,
    this.databaseName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collation': ?collation,
      'databaseName': ?databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory SingleServerDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return SingleServerDatabaseArgs(
      charset: map['charset'] == null ? null : (map['charset']! as String).input(),
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
    );
  }
}

