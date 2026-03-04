// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_database_account_table_args_doc}
/// Arguments for getDatabaseAccountTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_database_account_table_args_doc}
class GetDatabaseAccountTableArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Cosmos DB table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetDatabaseAccountTableArgs].
  /// [accountName] Cosmos DB database account name.
  /// [resourceGroupName] Name of an Azure resource group.
  /// [tableName] Cosmos DB table name.
  GetDatabaseAccountTableArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'tableName': tableName,
    };
  }

  factory GetDatabaseAccountTableArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountTableArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
