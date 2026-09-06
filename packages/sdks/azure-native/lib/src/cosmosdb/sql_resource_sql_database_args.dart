// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_update_options.dart';
import 'sql_database_resource.dart';

/// {@template pulumi_cosmosdb_sql_resource_sql_database_args_doc}
/// The set of arguments for SqlResourceSqlDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_resource_sql_database_args_doc}
class SqlResourceSqlDatabaseArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String?>? databaseName;
  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String?>? location;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<CreateUpdateOptions?>? options;
  /// The standard JSON format of a SQL database
  final pulumi.Input<SqlDatabaseResource> resource;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SqlResourceSqlDatabaseArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [location] The location of the resource group to which the resource belongs.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a SQL database
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  const SqlResourceSqlDatabaseArgs({
    required this.accountName,
    this.databaseName,
    this.location,
    this.options,
    required this.resource,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': ?databaseName,
      'location': ?location,
      'options': ?pulumi.Input.mapOptionalInputValue<CreateUpdateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resource': pulumi.Input.mapInputValue<SqlDatabaseResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SqlResourceSqlDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return SqlResourceSqlDatabaseArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreateUpdateOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: pulumi.Input.fromValue(SqlDatabaseResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
