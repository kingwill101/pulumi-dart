// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_table_resource.dart';

/// {@template pulumi_cosmosdb_database_account_cassandra_table_args_doc}
/// The set of arguments for DatabaseAccountCassandraTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_cassandra_table_args_doc}
class DatabaseAccountCassandraTableArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB keyspace name.
  final pulumi.Input<String> keyspaceName;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;
  /// The standard JSON format of a Cassandra table
  final pulumi.Input<CassandraTableResource> resource;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB table name.
  final pulumi.Input<String?>? tableName;

  /// Creates a new [DatabaseAccountCassandraTableArgs].
  /// [accountName] Cosmos DB database account name.
  /// [keyspaceName] Cosmos DB keyspace name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Cassandra table
  /// [resourceGroupName] Name of an Azure resource group.
  /// [tableName] Cosmos DB table name.
  const DatabaseAccountCassandraTableArgs({
    required this.accountName,
    required this.keyspaceName,
    required this.options,
    required this.resource,
    required this.resourceGroupName,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'keyspaceName': keyspaceName,
      'options': options,
      'resource': pulumi.Input.mapInputValue<CassandraTableResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tableName': ?tableName,
    };
  }

  factory DatabaseAccountCassandraTableArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountCassandraTableArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      keyspaceName: pulumi.Input.fromValue(map['keyspaceName'] as String),
      options: pulumi.Input.fromValue((map['options'] as Map).cast<String, String>()),
      resource: pulumi.Input.fromValue(CassandraTableResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
