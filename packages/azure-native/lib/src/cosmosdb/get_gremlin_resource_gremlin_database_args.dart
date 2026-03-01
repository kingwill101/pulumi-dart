// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_gremlin_resource_gremlin_database_args_doc}
/// Arguments for getGremlinResourceGremlinDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_gremlin_resource_gremlin_database_args_doc}
class GetGremlinResourceGremlinDatabaseArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGremlinResourceGremlinDatabaseArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGremlinResourceGremlinDatabaseArgs({
    required String accountName,
    required String databaseName,
    required String resourceGroupName,
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

  factory GetGremlinResourceGremlinDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetGremlinResourceGremlinDatabaseArgs(
      accountName: map['accountName'] as String,
      databaseName: map['databaseName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

