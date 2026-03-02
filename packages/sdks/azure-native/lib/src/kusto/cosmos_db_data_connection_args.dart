// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_cosmos_db_data_connection_args_doc}
/// The set of arguments for CosmosDbDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_cosmos_db_data_connection_args_doc}
class CosmosDbDataConnectionArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The resource ID of the Cosmos DB account used to create the data connection.
  final pulumi.Input<String> cosmosDbAccountResourceId;
  /// The name of an existing container in the Cosmos DB database.
  final pulumi.Input<String> cosmosDbContainer;
  /// The name of an existing database in the Cosmos DB account.
  final pulumi.Input<String> cosmosDbDatabase;
  /// The name of the data connection.
  final pulumi.Input<String>? dataConnectionName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'CosmosDb'.
  final pulumi.Input<String> kind;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB.
  final pulumi.Input<String> managedIdentityResourceId;
  /// The name of an existing mapping rule to use when ingesting the retrieved data.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Optional. If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date.
  final pulumi.Input<String>? retrievalStartDate;
  /// The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table.
  final pulumi.Input<String> tableName;

  /// Creates a new [CosmosDbDataConnectionArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [cosmosDbAccountResourceId] The resource ID of the Cosmos DB account used to create the data connection.
  /// [cosmosDbContainer] The name of an existing container in the Cosmos DB database.
  /// [cosmosDbDatabase] The name of an existing database in the Cosmos DB account.
  /// [dataConnectionName] The name of the data connection.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [managedIdentityResourceId] The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB.
  /// [mappingRuleName] The name of an existing mapping rule to use when ingesting the retrieved data.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [retrievalStartDate] Optional. If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date.
  /// [tableName] The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table.
  CosmosDbDataConnectionArgs({
    required this.clusterName,
    required this.cosmosDbAccountResourceId,
    required this.cosmosDbContainer,
    required this.cosmosDbDatabase,
    this.dataConnectionName,
    required this.databaseName,
    required this.kind,
    this.location,
    required this.managedIdentityResourceId,
    this.mappingRuleName,
    required this.resourceGroupName,
    this.retrievalStartDate,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'cosmosDbAccountResourceId': cosmosDbAccountResourceId,
      'cosmosDbContainer': cosmosDbContainer,
      'cosmosDbDatabase': cosmosDbDatabase,
      'dataConnectionName': ?dataConnectionName,
      'databaseName': databaseName,
      'kind': kind,
      'location': ?location,
      'managedIdentityResourceId': managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'resourceGroupName': resourceGroupName,
      'retrievalStartDate': ?retrievalStartDate,
      'tableName': tableName,
    };
  }

  factory CosmosDbDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return CosmosDbDataConnectionArgs(
      clusterName: (map['clusterName'] as String).input(),
      cosmosDbAccountResourceId: (map['cosmosDbAccountResourceId'] as String).input(),
      cosmosDbContainer: (map['cosmosDbContainer'] as String).input(),
      cosmosDbDatabase: (map['cosmosDbDatabase'] as String).input(),
      dataConnectionName: map['dataConnectionName'] == null ? null : (map['dataConnectionName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      kind: (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedIdentityResourceId: (map['managedIdentityResourceId'] as String).input(),
      mappingRuleName: map['mappingRuleName'] == null ? null : (map['mappingRuleName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      retrievalStartDate: map['retrievalStartDate'] == null ? null : (map['retrievalStartDate'] as String).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}

