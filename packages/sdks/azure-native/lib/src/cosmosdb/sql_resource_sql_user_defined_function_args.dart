// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_update_options.dart';
import 'sql_user_defined_function_resource.dart';

/// {@template pulumi_cosmosdb_sql_resource_sql_user_defined_function_args_doc}
/// The set of arguments for SqlResourceSqlUserDefinedFunction.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_resource_sql_user_defined_function_args_doc}
class SqlResourceSqlUserDefinedFunctionArgs {
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
  /// The standard JSON format of a userDefinedFunction
  final pulumi.Input<SqlUserDefinedFunctionResource> resource;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;
  /// Cosmos DB userDefinedFunction name.
  final pulumi.Input<String>? userDefinedFunctionName;

  /// Creates a new [SqlResourceSqlUserDefinedFunctionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [containerName] Cosmos DB container name.
  /// [databaseName] Cosmos DB database name.
  /// [location] The location of the resource group to which the resource belongs.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a userDefinedFunction
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [userDefinedFunctionName] Cosmos DB userDefinedFunction name.
  const SqlResourceSqlUserDefinedFunctionArgs({
    required this.accountName,
    required this.containerName,
    required this.databaseName,
    this.location,
    this.options,
    required this.resource,
    required this.resourceGroupName,
    this.tags,
    this.userDefinedFunctionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'databaseName': databaseName,
      'location': ?location,
      'options': ?pulumi.Input.mapOptionalInputValue<CreateUpdateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resource': pulumi.Input.mapInputValue<SqlUserDefinedFunctionResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'userDefinedFunctionName': ?userDefinedFunctionName,
    };
  }

  factory SqlResourceSqlUserDefinedFunctionArgs.fromMap(Map<String, dynamic> map) {
    return SqlResourceSqlUserDefinedFunctionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreateUpdateOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: pulumi.Input.fromValue(SqlUserDefinedFunctionResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userDefinedFunctionName: (() { final guardedValue = map['userDefinedFunctionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
