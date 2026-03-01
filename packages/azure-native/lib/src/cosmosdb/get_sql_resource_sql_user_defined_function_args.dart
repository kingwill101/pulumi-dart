// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_sql_resource_sql_user_defined_function_args_doc}
/// Arguments for getSqlResourceSqlUserDefinedFunction.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_sql_resource_sql_user_defined_function_args_doc}
class GetSqlResourceSqlUserDefinedFunctionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB container name.
  final pulumi.Input<String> containerName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB userDefinedFunction name.
  final pulumi.Input<String> userDefinedFunctionName;

  /// Creates a new [GetSqlResourceSqlUserDefinedFunctionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [containerName] Cosmos DB container name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userDefinedFunctionName] Cosmos DB userDefinedFunction name.
  GetSqlResourceSqlUserDefinedFunctionArgs({
    required String accountName,
    required String containerName,
    required String databaseName,
    required String resourceGroupName,
    required String userDefinedFunctionName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userDefinedFunctionName = pulumi.Input.asInput<String>(userDefinedFunctionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'userDefinedFunctionName': userDefinedFunctionName,
    };
  }

  factory GetSqlResourceSqlUserDefinedFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlResourceSqlUserDefinedFunctionArgs(
      accountName: map['accountName'] as String,
      containerName: map['containerName'] as String,
      databaseName: map['databaseName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      userDefinedFunctionName: map['userDefinedFunctionName'] as String,
    );
  }
}

