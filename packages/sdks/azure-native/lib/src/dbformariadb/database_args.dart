// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformariadb_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_dbformariadb_database_args_doc}
class DatabaseArgs {
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

  /// Creates a new [DatabaseArgs].
  /// [charset] The charset of the database.
  /// [collation] The collation of the database.
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  DatabaseArgs({
    pulumi.Output<String>? charset,
    pulumi.Output<String>? collation,
    pulumi.Output<String>? databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
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

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      charset: map['charset'] == null ? null : pulumi.Output.create<String>(map['charset'] as String),
      collation: map['collation'] == null ? null : pulumi.Output.create<String>(map['collation'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

