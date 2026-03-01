// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_database_resource.dart';

/// {@template pulumi_cosmosdb_database_account_gremlin_database_args_doc}
/// The set of arguments for DatabaseAccountGremlinDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_gremlin_database_args_doc}
class DatabaseAccountGremlinDatabaseArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String>? databaseName;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;
  /// The standard JSON format of a Gremlin database
  final pulumi.Input<GremlinDatabaseResource> resource;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseAccountGremlinDatabaseArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Gremlin database
  /// [resourceGroupName] Name of an Azure resource group.
  DatabaseAccountGremlinDatabaseArgs({
    required String accountName,
    String? databaseName,
    required Map<String, String> options,
    required GremlinDatabaseResource resource,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      options = pulumi.Input.asInput<Map<String, String>>(options),
      resource = pulumi.Input.asInput<GremlinDatabaseResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': ?databaseName,
      'options': options,
      'resource': pulumi.Input.mapInputValue<GremlinDatabaseResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseAccountGremlinDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountGremlinDatabaseArgs(
      accountName: map['accountName'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      options: (map['options'] as Map).cast<String, String>(),
      resource: GremlinDatabaseResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

