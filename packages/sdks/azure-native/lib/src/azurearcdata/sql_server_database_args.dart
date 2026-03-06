// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_database_resource_properties.dart';

/// {@template pulumi_azurearcdata_sql_server_database_args_doc}
/// The set of arguments for SqlServerDatabase.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_sql_server_database_args_doc}
class SqlServerDatabaseArgs {
  /// Name of the database
  final pulumi.Input<String>? databaseName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of Arc Sql Server database
  final pulumi.Input<SqlServerDatabaseResourceProperties> properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String> sqlServerInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlServerDatabaseArgs].
  /// [databaseName] Name of the database
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of Arc Sql Server database
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  /// [tags] Resource tags.
  const SqlServerDatabaseArgs({
    this.databaseName,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    required this.sqlServerInstanceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<SqlServerDatabaseResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': sqlServerInstanceName,
      'tags': ?tags,
    };
  }

  factory SqlServerDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseArgs(
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(SqlServerDatabaseResourceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlServerInstanceName: pulumi.Input.fromValue(map['sqlServerInstanceName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

