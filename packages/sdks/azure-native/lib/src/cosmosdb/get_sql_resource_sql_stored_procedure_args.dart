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
    required this.accountName,
    required this.containerName,
    required this.databaseName,
    required this.resourceGroupName,
    required this.storedProcedureName,
  });

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
      accountName: (map['accountName'] as String).input(),
      containerName: (map['containerName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storedProcedureName: (map['storedProcedureName'] as String).input(),
    );
  }
}

