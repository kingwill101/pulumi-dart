// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_database_account_sql_container_args_doc}
/// Arguments for getDatabaseAccountSqlContainer.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_database_account_sql_container_args_doc}
class GetDatabaseAccountSqlContainerArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB container name.
  final pulumi.Input<String> containerName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatabaseAccountSqlContainerArgs].
  /// [accountName] Cosmos DB database account name.
  /// [containerName] Cosmos DB container name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] Name of an Azure resource group.
  GetDatabaseAccountSqlContainerArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> containerName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabaseAccountSqlContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountSqlContainerArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

