// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_database_account_cassandra_table_args_doc}
/// Arguments for getDatabaseAccountCassandraTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_database_account_cassandra_table_args_doc}
class GetDatabaseAccountCassandraTableArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB keyspace name.
  final pulumi.Input<String> keyspaceName;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetDatabaseAccountCassandraTableArgs].
  /// [accountName] Cosmos DB database account name.
  /// [keyspaceName] Cosmos DB keyspace name.
  /// [resourceGroupName] Name of an Azure resource group.
  /// [tableName] Cosmos DB table name.
  const GetDatabaseAccountCassandraTableArgs({
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

  factory GetDatabaseAccountCassandraTableArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountCassandraTableArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      keyspaceName: pulumi.Input.fromValue(map['keyspaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}

