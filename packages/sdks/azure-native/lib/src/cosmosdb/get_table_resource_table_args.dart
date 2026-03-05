// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_table_resource_table_args_doc}
/// Arguments for getTableResourceTable.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_table_resource_table_args_doc}
class GetTableResourceTableArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetTableResourceTableArgs].
  /// [accountName] Cosmos DB database account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tableName] Cosmos DB table name.
  GetTableResourceTableArgs({
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

  factory GetTableResourceTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableResourceTableArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}

