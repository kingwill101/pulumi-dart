// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_database_args_doc}
class DatabaseArgs {
  /// Character set of the database.
  final pulumi.Input<String>? charset;

  /// Collation of the database.
  final pulumi.Input<String>? collation;

  /// Name of the database (case-sensitive). Exact database names can be retrieved by getting the list of all existing databases in a server.
  final pulumi.Input<String>? databaseName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [DatabaseArgs].
  /// [charset] Character set of the database.
  /// [collation] Collation of the database.
  /// [databaseName] Name of the database (case-sensitive). Exact database names can be retrieved by getting the list of all existing databases in a server.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  DatabaseArgs({
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

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      charset: (() {
        final guardedValue = map['charset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      collation: (() {
        final guardedValue = map['collation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
