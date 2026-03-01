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
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? location,
    required pulumi.Output<SqlServerDatabaseResourceProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlServerInstanceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<SqlServerDatabaseResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerInstanceName = pulumi.Input.asInput<String>(sqlServerInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<SqlServerDatabaseResourceProperties>(SqlServerDatabaseResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerInstanceName: pulumi.Output.create<String>(map['sqlServerInstanceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

