// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEventHubConnection.
class GetEventHubConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The event hub consumer group.
  final String consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  final String? dataFormat;
  /// The resource ID of the event hub to be used to create a data connection.
  final String eventHubResourceId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Resource location.
  final String? location;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final String? mappingRuleName;
  /// The name of the resource
  final String name;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final String? tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEventHubConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [consumerGroup] The event hub consumer group.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [eventHubResourceId] The resource ID of the event hub to be used to create a data connection.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] Resource location.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [name] The name of the resource
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEventHubConnectionResult({
    required this.azureApiVersion,
    required this.consumerGroup,
    this.dataFormat,
    required this.eventHubResourceId,
    required this.id,
    this.location,
    this.mappingRuleName,
    required this.name,
    this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'consumerGroup': consumerGroup,
      'dataFormat': ?dataFormat,
      'eventHubResourceId': eventHubResourceId,
      'id': id,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'name': name,
      'tableName': ?tableName,
      'type': type,
    };
  }

  factory GetEventHubConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEventHubConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      consumerGroup: map['consumerGroup'] as String,
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHubResourceId: map['eventHubResourceId'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

