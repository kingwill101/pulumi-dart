// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_update_options.dart';
import 'table_resource.dart';

/// {@template pulumi_cosmosdb_table_resource_table_args_doc}
/// The set of arguments for TableResourceTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_table_resource_table_args_doc}
class TableResourceTableArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String>? location;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<CreateUpdateOptions>? options;
  /// The standard JSON format of a Table
  final pulumi.Input<TableResource> resource;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB table name.
  final pulumi.Input<String>? tableName;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TableResourceTableArgs].
  /// [accountName] Cosmos DB database account name.
  /// [location] The location of the resource group to which the resource belongs.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Table
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tableName] Cosmos DB table name.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  TableResourceTableArgs({
    required String accountName,
    String? location,
    CreateUpdateOptions? options,
    required TableResource resource,
    required String resourceGroupName,
    String? tableName,
    Map<String, String>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      options = pulumi.Input.asOptionalInput<CreateUpdateOptions>(options),
      resource = pulumi.Input.asInput<TableResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableName = pulumi.Input.asOptionalInput<String>(tableName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'options': ?pulumi.Input.mapOptionalInputValue<CreateUpdateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resource': pulumi.Input.mapInputValue<TableResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tableName': ?tableName,
      'tags': ?tags,
    };
  }

  factory TableResourceTableArgs.fromMap(Map<String, dynamic> map) {
    return TableResourceTableArgs(
      accountName: map['accountName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      options: map['options'] == null ? null : CreateUpdateOptions.fromMap((map['options'] as Map).cast<String, dynamic>()),
      resource: TableResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

