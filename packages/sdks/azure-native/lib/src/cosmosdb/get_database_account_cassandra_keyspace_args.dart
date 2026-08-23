// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_database_account_cassandra_keyspace_args_doc}
/// Arguments for getDatabaseAccountCassandraKeyspace.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_database_account_cassandra_keyspace_args_doc}
class GetDatabaseAccountCassandraKeyspaceArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB keyspace name.
  final pulumi.Input<String> keyspaceName;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatabaseAccountCassandraKeyspaceArgs].
  /// [accountName] Cosmos DB database account name.
  /// [keyspaceName] Cosmos DB keyspace name.
  /// [resourceGroupName] Name of an Azure resource group.
  const GetDatabaseAccountCassandraKeyspaceArgs({
    required this.accountName,
    required this.keyspaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'keyspaceName': keyspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabaseAccountCassandraKeyspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountCassandraKeyspaceArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      keyspaceName: pulumi.Input.fromValue(map['keyspaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
