// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_single_server_database_args_doc}
/// The set of arguments for SingleServerDatabase.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_single_server_database_args_doc}
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
    String? charset,
    String? collation,
    String? databaseName,
    required String resourceGroupName,
    required String serverName,
  }) :
      charset = pulumi.Input.asOptionalInput<String>(charset),
      collation = pulumi.Input.asOptionalInput<String>(collation),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

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
      charset: map['charset'] == null ? null : map['charset'] as String,
      collation: map['collation'] == null ? null : map['collation'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

