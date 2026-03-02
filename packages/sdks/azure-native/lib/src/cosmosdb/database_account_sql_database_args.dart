// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_database_resource.dart';

/// {@template pulumi_cosmosdb_database_account_sql_database_args_doc}
/// The set of arguments for DatabaseAccountSqlDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_sql_database_args_doc}
class DatabaseAccountSqlDatabaseArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String>? databaseName;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;
  /// The standard JSON format of a SQL database
  final pulumi.Input<SqlDatabaseResource> resource;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseAccountSqlDatabaseArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a SQL database
  /// [resourceGroupName] Name of an Azure resource group.
  DatabaseAccountSqlDatabaseArgs({
    required this.accountName,
    this.databaseName,
    required this.options,
    required this.resource,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': ?databaseName,
      'options': options,
      'resource': pulumi.Input.mapInputValue<SqlDatabaseResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseAccountSqlDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountSqlDatabaseArgs(
      accountName: (map['accountName'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      options: ((map['options'] as Map).cast<String, String>()).input(),
      resource: (SqlDatabaseResource.fromMap((map['resource'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

