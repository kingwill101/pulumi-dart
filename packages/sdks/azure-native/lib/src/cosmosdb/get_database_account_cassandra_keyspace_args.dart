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
  GetDatabaseAccountCassandraKeyspaceArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> keyspaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      keyspaceName = pulumi.Input.asInput<String>(keyspaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'keyspaceName': keyspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabaseAccountCassandraKeyspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountCassandraKeyspaceArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      keyspaceName: pulumi.Output.create<String>(map['keyspaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

