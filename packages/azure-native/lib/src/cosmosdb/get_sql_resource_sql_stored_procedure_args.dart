// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_sql_resource_sql_stored_procedure_args_doc}
/// Arguments for getSqlResourceSqlStoredProcedure.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_sql_resource_sql_stored_procedure_args_doc}
class GetSqlResourceSqlStoredProcedureArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB container name.
  final pulumi.Input<String> containerName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cosmos DB storedProcedure name.
  final pulumi.Input<String> storedProcedureName;

  /// Creates a new [GetSqlResourceSqlStoredProcedureArgs].
  /// [accountName] Cosmos DB database account name.
  /// [containerName] Cosmos DB container name.
  /// [databaseName] Cosmos DB database name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storedProcedureName] Cosmos DB storedProcedure name.
  GetSqlResourceSqlStoredProcedureArgs({
    required String accountName,
    required String containerName,
    required String databaseName,
    required String resourceGroupName,
    required String storedProcedureName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storedProcedureName = pulumi.Input.asInput<String>(storedProcedureName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'storedProcedureName': storedProcedureName,
    };
  }

  factory GetSqlResourceSqlStoredProcedureArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlResourceSqlStoredProcedureArgs(
      accountName: map['accountName'] as String,
      containerName: map['containerName'] as String,
      databaseName: map['databaseName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storedProcedureName: map['storedProcedureName'] as String,
    );
  }
}

