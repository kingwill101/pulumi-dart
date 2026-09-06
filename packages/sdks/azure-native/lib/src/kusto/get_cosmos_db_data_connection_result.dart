// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCosmosDbDataConnection.
class GetCosmosDbDataConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource ID of the Cosmos DB account used to create the data connection.
  final String? cosmosDbAccountResourceId;
  /// The name of an existing container in the Cosmos DB database.
  final String? cosmosDbContainer;
  /// The name of an existing database in the Cosmos DB account.
  final String? cosmosDbDatabase;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'CosmosDb'.
  final String? kind;
  /// Resource location.
  final String? location;
  /// The object ID of the managed identity resource.
  final String? managedIdentityObjectId;
  /// The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB.
  final String? managedIdentityResourceId;
  /// The name of an existing mapping rule to use when ingesting the retrieved data.
  final String? mappingRuleName;
  /// The name of the resource
  final String? name;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// Optional. If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date.
  final String? retrievalStartDate;
  /// The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table.
  final String? tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetCosmosDbDataConnectionResult({
    this.azureApiVersion,
    this.cosmosDbAccountResourceId,
    this.cosmosDbContainer,
    this.cosmosDbDatabase,
    this.id,
    this.kind,
    this.location,
    this.managedIdentityObjectId,
    this.managedIdentityResourceId,
    this.mappingRuleName,
    this.name,
    this.provisioningState,
    this.retrievalStartDate,
    this.tableName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'cosmosDbAccountResourceId': ?cosmosDbAccountResourceId,
      'cosmosDbContainer': ?cosmosDbContainer,
      'cosmosDbDatabase': ?cosmosDbDatabase,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'managedIdentityObjectId': ?managedIdentityObjectId,
      'managedIdentityResourceId': ?managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'retrievalStartDate': ?retrievalStartDate,
      'tableName': ?tableName,
      'type': ?type,
    };
  }

  factory GetCosmosDbDataConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetCosmosDbDataConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cosmosDbAccountResourceId: (() { final guardedValue = map['cosmosDbAccountResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cosmosDbContainer: (() { final guardedValue = map['cosmosDbContainer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cosmosDbDatabase: (() { final guardedValue = map['cosmosDbDatabase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedIdentityObjectId: (() { final guardedValue = map['managedIdentityObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedIdentityResourceId: (() { final guardedValue = map['managedIdentityResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retrievalStartDate: (() { final guardedValue = map['retrievalStartDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
