// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_event_grid_data_connection_args_doc}
/// The set of arguments for EventGridDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_event_grid_data_connection_args_doc}
class EventGridDataConnectionArgs {
  /// The name of blob storage event type to process.
  final pulumi.Input<String>? blobStorageEventType;
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The event hub consumer group.
  final pulumi.Input<String> consumerGroup;
  /// The name of the data connection.
  final pulumi.Input<String>? dataConnectionName;
  /// The data format of the message. Optionally the data format can be added to each message.
  final pulumi.Input<String>? dataFormat;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed
  final pulumi.Input<String>? databaseRouting;
  /// The resource ID of the event grid that is subscribed to the storage account events.
  final pulumi.Input<String>? eventGridResourceId;
  /// The resource ID where the event grid is configured to send events.
  final pulumi.Input<String> eventHubResourceId;
  /// A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  final pulumi.Input<bool>? ignoreFirstRecord;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventGrid'.
  final pulumi.Input<String> kind;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub and storage account.
  final pulumi.Input<String>? managedIdentityResourceId;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource ID of the storage account where the data resides.
  final pulumi.Input<String> storageAccountResourceId;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final pulumi.Input<String>? tableName;

  /// Creates a new [EventGridDataConnectionArgs].
  /// [blobStorageEventType] The name of blob storage event type to process.
  /// [clusterName] The name of the Kusto cluster.
  /// [consumerGroup] The event hub consumer group.
  /// [dataConnectionName] The name of the data connection.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [databaseRouting] Indication for database routing information from the data connection, by default only database routing information is allowed
  /// [eventGridResourceId] The resource ID of the event grid that is subscribed to the storage account events.
  /// [eventHubResourceId] The resource ID where the event grid is configured to send events.
  /// [ignoreFirstRecord] A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [managedIdentityResourceId] The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub and storage account.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccountResourceId] The resource ID of the storage account where the data resides.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  EventGridDataConnectionArgs({
    this.blobStorageEventType,
    required this.clusterName,
    required this.consumerGroup,
    this.dataConnectionName,
    this.dataFormat,
    required this.databaseName,
    this.databaseRouting,
    this.eventGridResourceId,
    required this.eventHubResourceId,
    this.ignoreFirstRecord,
    required this.kind,
    this.location,
    this.managedIdentityResourceId,
    this.mappingRuleName,
    required this.resourceGroupName,
    required this.storageAccountResourceId,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStorageEventType': ?blobStorageEventType,
      'clusterName': clusterName,
      'consumerGroup': consumerGroup,
      'dataConnectionName': ?dataConnectionName,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'databaseRouting': ?databaseRouting,
      'eventGridResourceId': ?eventGridResourceId,
      'eventHubResourceId': eventHubResourceId,
      'ignoreFirstRecord': ?ignoreFirstRecord,
      'kind': kind,
      'location': ?location,
      'managedIdentityResourceId': ?managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'resourceGroupName': resourceGroupName,
      'storageAccountResourceId': storageAccountResourceId,
      'tableName': ?tableName,
    };
  }

  factory EventGridDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EventGridDataConnectionArgs(
      blobStorageEventType: map['blobStorageEventType'] == null ? null : (map['blobStorageEventType']! as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      consumerGroup: (map['consumerGroup'] as String).input(),
      dataConnectionName: map['dataConnectionName'] == null ? null : (map['dataConnectionName']! as String).input(),
      dataFormat: map['dataFormat'] == null ? null : (map['dataFormat']! as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      databaseRouting: map['databaseRouting'] == null ? null : (map['databaseRouting']! as String).input(),
      eventGridResourceId: map['eventGridResourceId'] == null ? null : (map['eventGridResourceId']! as String).input(),
      eventHubResourceId: (map['eventHubResourceId'] as String).input(),
      ignoreFirstRecord: map['ignoreFirstRecord'] == null ? null : (map['ignoreFirstRecord']! as bool).input(),
      kind: (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedIdentityResourceId: map['managedIdentityResourceId'] == null ? null : (map['managedIdentityResourceId']! as String).input(),
      mappingRuleName: map['mappingRuleName'] == null ? null : (map['mappingRuleName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageAccountResourceId: (map['storageAccountResourceId'] as String).input(),
      tableName: map['tableName'] == null ? null : (map['tableName']! as String).input(),
    );
  }
}

