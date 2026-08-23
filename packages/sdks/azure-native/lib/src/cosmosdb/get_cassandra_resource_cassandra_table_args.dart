// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_cassandra_resource_cassandra_table_args_doc}
/// Arguments for getCassandraResourceCassandraTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_cassandra_resource_cassandra_table_args_doc}
class GetCassandraResourceCassandraTableArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB keyspace name.
  final pulumi.Input<String> keyspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetCassandraResourceCassandraTableArgs].
  /// [accountName] Cosmos DB database account name.
  /// [keyspaceName] Cosmos DB keyspace name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tableName] Cosmos DB table name.
  const GetCassandraResourceCassandraTableArgs({
    required this.accountName,
    required this.keyspaceName,
    required this.resourceGroupName,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'keyspaceName': keyspaceName,
      'resourceGroupName': resourceGroupName,
      'tableName': tableName,
    };
  }

  factory GetCassandraResourceCassandraTableArgs.fromMap(Map<String, dynamic> map) {
    return GetCassandraResourceCassandraTableArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      keyspaceName: pulumi.Input.fromValue(map['keyspaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
