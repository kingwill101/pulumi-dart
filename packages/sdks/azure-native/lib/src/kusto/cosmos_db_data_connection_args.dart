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
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> cosmosDbAccountResourceId,
    required pulumi.Output<String> cosmosDbContainer,
    required pulumi.Output<String> cosmosDbDatabase,
    pulumi.Output<String>? dataConnectionName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> managedIdentityResourceId,
    pulumi.Output<String>? mappingRuleName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? retrievalStartDate,
    required pulumi.Output<String> tableName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      cosmosDbAccountResourceId = pulumi.Input.asInput<String>(cosmosDbAccountResourceId),
      cosmosDbContainer = pulumi.Input.asInput<String>(cosmosDbContainer),
      cosmosDbDatabase = pulumi.Input.asInput<String>(cosmosDbDatabase),
      dataConnectionName = pulumi.Input.asOptionalInput<String>(dataConnectionName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedIdentityResourceId = pulumi.Input.asInput<String>(managedIdentityResourceId),
      mappingRuleName = pulumi.Input.asOptionalInput<String>(mappingRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retrievalStartDate = pulumi.Input.asOptionalInput<String>(retrievalStartDate),
      tableName = pulumi.Input.asInput<String>(tableName);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      cosmosDbAccountResourceId: pulumi.Output.create<String>(map['cosmosDbAccountResourceId'] as String),
      cosmosDbContainer: pulumi.Output.create<String>(map['cosmosDbContainer'] as String),
      cosmosDbDatabase: pulumi.Output.create<String>(map['cosmosDbDatabase'] as String),
      dataConnectionName: map['dataConnectionName'] == null ? null : pulumi.Output.create<String>(map['dataConnectionName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedIdentityResourceId: pulumi.Output.create<String>(map['managedIdentityResourceId'] as String),
      mappingRuleName: map['mappingRuleName'] == null ? null : pulumi.Output.create<String>(map['mappingRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retrievalStartDate: map['retrievalStartDate'] == null ? null : pulumi.Output.create<String>(map['retrievalStartDate'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

