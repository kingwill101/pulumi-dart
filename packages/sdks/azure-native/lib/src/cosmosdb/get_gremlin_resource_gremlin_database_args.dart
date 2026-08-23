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
  const GetGremlinResourceGremlinDatabaseArgs({
    required this.accountName,
    required this.databaseName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGremlinResourceGremlinDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetGremlinResourceGremlinDatabaseArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
