// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_update_options.dart';
import 'sql_stored_procedure_resource.dart';

/// {@template pulumi_cosmosdb_sql_resource_sql_stored_procedure_args_doc}
/// The set of arguments for SqlResourceSqlStoredProcedure.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_resource_sql_stored_procedure_args_doc}
class SqlResourceSqlStoredProcedureArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB container name.
  final pulumi.Input<String> containerName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String>? location;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<CreateUpdateOptions>? options;
  /// The standard JSON format of a storedProcedure
  final pulumi.Input<SqlStoredProcedureResource> resource;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB storedProcedure name.
  final pulumi.Input<String>? storedProcedureName;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlResourceSqlStoredProcedureArgs].
  /// [accountName] Cosmos DB database account name.
  /// [containerName] Cosmos DB container name.
  /// [databaseName] Cosmos DB database name.
  /// [location] The location of the resource group to which the resource belongs.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a storedProcedure
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storedProcedureName] Cosmos DB storedProcedure name.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  SqlResourceSqlStoredProcedureArgs({
    required this.accountName,
    required this.containerName,
    required this.databaseName,
    this.location,
    this.options,
    required this.resource,
    required this.resourceGroupName,
    this.storedProcedureName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'databaseName': databaseName,
      'location': ?location,
      'options': ?pulumi.Input.mapOptionalInputValue<CreateUpdateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resource': pulumi.Input.mapInputValue<SqlStoredProcedureResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storedProcedureName': ?storedProcedureName,
      'tags': ?tags,
    };
  }

  factory SqlResourceSqlStoredProcedureArgs.fromMap(Map<String, dynamic> map) {
    return SqlResourceSqlStoredProcedureArgs(
      accountName: (map['accountName'] as String).input(),
      containerName: (map['containerName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      options: map['options'] == null ? null : (CreateUpdateOptions.fromMap((map['options']! as Map).cast<String, dynamic>())).input(),
      resource: (SqlStoredProcedureResource.fromMap((map['resource'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storedProcedureName: map['storedProcedureName'] == null ? null : (map['storedProcedureName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

