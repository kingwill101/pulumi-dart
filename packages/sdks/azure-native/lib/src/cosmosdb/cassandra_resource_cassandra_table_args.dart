// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_table_resource.dart';
import 'create_update_options.dart';

/// {@template pulumi_cosmosdb_cassandra_resource_cassandra_table_args_doc}
/// The set of arguments for CassandraResourceCassandraTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_resource_cassandra_table_args_doc}
class CassandraResourceCassandraTableArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB keyspace name.
  final pulumi.Input<String> keyspaceName;
  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String>? location;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<CreateUpdateOptions>? options;
  /// The standard JSON format of a Cassandra table
  final pulumi.Input<CassandraTableResource> resource;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB table name.
  final pulumi.Input<String>? tableName;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CassandraResourceCassandraTableArgs].
  /// [accountName] Cosmos DB database account name.
  /// [keyspaceName] Cosmos DB keyspace name.
  /// [location] The location of the resource group to which the resource belongs.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Cassandra table
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tableName] Cosmos DB table name.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  CassandraResourceCassandraTableArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> keyspaceName,
    pulumi.Output<String>? location,
    pulumi.Output<CreateUpdateOptions>? options,
    required pulumi.Output<CassandraTableResource> resource,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? tableName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      keyspaceName = pulumi.Input.asInput<String>(keyspaceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      options = pulumi.Input.asOptionalInput<CreateUpdateOptions>(options),
      resource = pulumi.Input.asInput<CassandraTableResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableName = pulumi.Input.asOptionalInput<String>(tableName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'keyspaceName': keyspaceName,
      'location': ?location,
      'options': ?pulumi.Input.mapOptionalInputValue<CreateUpdateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resource': pulumi.Input.mapInputValue<CassandraTableResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tableName': ?tableName,
      'tags': ?tags,
    };
  }

  factory CassandraResourceCassandraTableArgs.fromMap(Map<String, dynamic> map) {
    return CassandraResourceCassandraTableArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      keyspaceName: pulumi.Output.create<String>(map['keyspaceName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<CreateUpdateOptions>(CreateUpdateOptions.fromMap((map['options'] as Map).cast<String, dynamic>())),
      resource: pulumi.Output.create<CassandraTableResource>(CassandraTableResource.fromMap((map['resource'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

