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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? databaseName,
    required pulumi.Output<Map<String, String>> options,
    required pulumi.Output<SqlDatabaseResource> resource,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      options = pulumi.Input.asInput<Map<String, String>>(options),
      resource = pulumi.Input.asInput<SqlDatabaseResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      options: pulumi.Output.create<Map<String, String>>((map['options'] as Map).cast<String, String>()),
      resource: pulumi.Output.create<SqlDatabaseResource>(SqlDatabaseResource.fromMap((map['resource'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

