// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_sql_resource_sql_database_args_doc}
/// Arguments for getSqlResourceSqlDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_sql_resource_sql_database_args_doc}
class GetSqlResourceSqlDatabaseArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSqlResourceSqlDatabaseArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSqlResourceSqlDatabaseArgs({
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

  factory GetSqlResourceSqlDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlResourceSqlDatabaseArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
