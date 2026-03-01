// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCosmosDbDataConnection.
class GetCosmosDbDataConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID of the Cosmos DB account used to create the data connection.
  final String cosmosDbAccountResourceId;
  /// The name of an existing container in the Cosmos DB database.
  final String cosmosDbContainer;
  /// The name of an existing database in the Cosmos DB account.
  final String cosmosDbDatabase;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'CosmosDb'.
  final String kind;
  /// Resource location.
  final String? location;
  /// The object ID of the managed identity resource.
  final String managedIdentityObjectId;
  /// The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB.
  final String managedIdentityResourceId;
  /// The name of an existing mapping rule to use when ingesting the retrieved data.
  final String? mappingRuleName;
  /// The name of the resource
  final String name;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// Optional. If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date.
  final String? retrievalStartDate;
  /// The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table.
  final String tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCosmosDbDataConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cosmosDbAccountResourceId] The resource ID of the Cosmos DB account used to create the data connection.
  /// [cosmosDbContainer] The name of an existing container in the Cosmos DB database.
  /// [cosmosDbDatabase] The name of an existing database in the Cosmos DB account.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [managedIdentityObjectId] The object ID of the managed identity resource.
  /// [managedIdentityResourceId] The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB.
  /// [mappingRuleName] The name of an existing mapping rule to use when ingesting the retrieved data.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [retrievalStartDate] Optional. If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date.
  /// [tableName] The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCosmosDbDataConnectionResult({
    required this.azureApiVersion,
    required this.cosmosDbAccountResourceId,
    required this.cosmosDbContainer,
    required this.cosmosDbDatabase,
    required this.id,
    required this.kind,
    this.location,
    required this.managedIdentityObjectId,
    required this.managedIdentityResourceId,
    this.mappingRuleName,
    required this.name,
    required this.provisioningState,
    this.retrievalStartDate,
    required this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cosmosDbAccountResourceId': cosmosDbAccountResourceId,
      'cosmosDbContainer': cosmosDbContainer,
      'cosmosDbDatabase': cosmosDbDatabase,
      'id': id,
      'kind': kind,
      'location': ?location,
      'managedIdentityObjectId': managedIdentityObjectId,
      'managedIdentityResourceId': managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'name': name,
      'provisioningState': provisioningState,
      'retrievalStartDate': ?retrievalStartDate,
      'tableName': tableName,
      'type': type,
    };
  }

  factory GetCosmosDbDataConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetCosmosDbDataConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cosmosDbAccountResourceId: map['cosmosDbAccountResourceId'] as String,
      cosmosDbContainer: map['cosmosDbContainer'] as String,
      cosmosDbDatabase: map['cosmosDbDatabase'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedIdentityObjectId: map['managedIdentityObjectId'] as String,
      managedIdentityResourceId: map['managedIdentityResourceId'] as String,
      mappingRuleName: map['mappingRuleName'] == null ? null : map['mappingRuleName'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      retrievalStartDate: map['retrievalStartDate'] == null ? null : map['retrievalStartDate'] as String,
      tableName: map['tableName'] as String,
      type: map['type'] as String,
    );
  }
}

