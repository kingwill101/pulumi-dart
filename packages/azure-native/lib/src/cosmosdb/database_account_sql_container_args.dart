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
  final pulumi.Input<String>? containerName;
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
  DatabaseAccountSqlContainerArgs({
    required String accountName,
    String? containerName,
    required String databaseName,
    required Map<String, String> options,
    required SqlContainerResource resource,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      options = pulumi.Input.asInput<Map<String, String>>(options),
      resource = pulumi.Input.asInput<SqlContainerResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: map['accountName'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      databaseName: map['databaseName'] as String,
      options: (map['options'] as Map).cast<String, String>(),
      resource: SqlContainerResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

