// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_database_account_gremlin_database_args_doc}
/// Arguments for getDatabaseAccountGremlinDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_database_account_gremlin_database_args_doc}
class GetDatabaseAccountGremlinDatabaseArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatabaseAccountGremlinDatabaseArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] Name of an Azure resource group.
  GetDatabaseAccountGremlinDatabaseArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabaseAccountGremlinDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountGremlinDatabaseArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

