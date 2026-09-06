// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_container_resource.dart';

/// {@template pulumi_cosmosdb_database_account_sql_container_args_doc}
/// The set of arguments for DatabaseAccountSqlContainer.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_sql_container_args_doc}
class DatabaseAccountSqlContainerArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB container name.
  final pulumi.Input<String?>? containerName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;
  /// The standard JSON format of a container
  final pulumi.Input<SqlContainerResource> resource;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseAccountSqlContainerArgs].
  /// [accountName] Cosmos DB database account name.
  /// [containerName] Cosmos DB container name.
  /// [databaseName] Cosmos DB database name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a container
  /// [resourceGroupName] Name of an Azure resource group.
  const DatabaseAccountSqlContainerArgs({
    required this.accountName,
    this.containerName,
    required this.databaseName,
    required this.options,
    required this.resource,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': ?containerName,
      'databaseName': databaseName,
      'options': options,
      'resource': pulumi.Input.mapInputValue<SqlContainerResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseAccountSqlContainerArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountSqlContainerArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      options: pulumi.Input.fromValue((map['options'] as Map).cast<String, String>()),
      resource: pulumi.Input.fromValue(SqlContainerResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
