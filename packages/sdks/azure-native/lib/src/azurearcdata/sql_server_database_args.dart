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
  SqlServerDatabaseArgs({
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
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: (SqlServerDatabaseResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlServerInstanceName: (map['sqlServerInstanceName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

