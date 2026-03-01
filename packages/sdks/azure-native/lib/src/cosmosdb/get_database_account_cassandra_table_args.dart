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
  GetDatabaseAccountCassandraTableArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> keyspaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> tableName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      keyspaceName = pulumi.Input.asInput<String>(keyspaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableName = pulumi.Input.asInput<String>(tableName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      keyspaceName: pulumi.Output.create<String>(map['keyspaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

