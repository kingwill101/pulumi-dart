// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEventGridDataConnection.
class GetEventGridDataConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The name of blob storage event type to process.
  final String? blobStorageEventType;
  /// The event hub consumer group.
  final String consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  final String? dataFormat;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed
  final String? databaseRouting;
  /// The resource ID of the event grid that is subscribed to the storage account events.
  final String? eventGridResourceId;
  /// The resource ID where the event grid is configured to send events.
  final String eventHubResourceId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  final bool? ignoreFirstRecord;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventGrid'.
  final String kind;
  /// Resource location.
  final String? location;
  /// The object ID of managedIdentityResourceId
  final String managedIdentityObjectId;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub and storage account.
  final String? managedIdentityResourceId;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final String? mappingRuleName;
  /// The name of the resource
  final String name;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// The resource ID of the storage account where the data resides.
  final String storageAccountResourceId;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final String? tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEventGridDataConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blobStorageEventType] The name of blob storage event type to process.
  /// [consumerGroup] The event hub consumer group.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [databaseRouting] Indication for database routing information from the data connection, by default only database routing information is allowed
  /// [eventGridResourceId] The resource ID of the event grid that is subscribed to the storage account events.
  /// [eventHubResourceId] The resource ID where the event grid is configured to send events.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [ignoreFirstRecord] A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [managedIdentityObjectId] The object ID of managedIdentityResourceId
  /// [managedIdentityResourceId] The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub and storage account.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [storageAccountResourceId] The resource ID of the storage account where the data resides.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEventGridDataConnectionResult({
    required this.azureApiVersion,
    this.blobStorageEventType,
    required this.consumerGroup,
    this.dataFormat,
    this.databaseRouting,
    this.eventGridResourceId,
    required this.eventHubResourceId,
    required this.id,
    this.ignoreFirstRecord,
    required this.kind,
    this.location,
    required this.managedIdentityObjectId,
    this.managedIdentityResourceId,
    this.mappingRuleName,
    required this.name,
    required this.provisioningState,
    required this.storageAccountResourceId,
    this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blobStorageEventType': ?blobStorageEventType,
      'consumerGroup': consumerGroup,
      'dataFormat': ?dataFormat,
      'databaseRouting': ?databaseRouting,
      'eventGridResourceId': ?eventGridResourceId,
      'eventHubResourceId': eventHubResourceId,
      'id': id,
      'ignoreFirstRecord': ?ignoreFirstRecord,
      'kind': kind,
      'location': ?location,
      'managedIdentityObjectId': managedIdentityObjectId,
      'managedIdentityResourceId': ?managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'name': name,
      'provisioningState': provisioningState,
      'storageAccountResourceId': storageAccountResourceId,
      'tableName': ?tableName,
      'type': type,
    };
  }

  factory GetEventGridDataConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEventGridDataConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blobStorageEventType: (() { final guardedValue = map['blobStorageEventType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumerGroup: map['consumerGroup'] as String,
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseRouting: (() { final guardedValue = map['databaseRouting']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventGridResourceId: (() { final guardedValue = map['eventGridResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHubResourceId: map['eventHubResourceId'] as String,
      id: map['id'] as String,
      ignoreFirstRecord: (() { final guardedValue = map['ignoreFirstRecord']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: map['kind'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedIdentityObjectId: map['managedIdentityObjectId'] as String,
      managedIdentityResourceId: (() { final guardedValue = map['managedIdentityResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] as String,
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

