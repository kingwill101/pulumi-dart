// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_event_hub_connection_args_doc}
/// The set of arguments for EventHubConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_event_hub_connection_args_doc}
class EventHubConnectionArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;

  /// The event hub consumer group.
  final pulumi.Input<String> consumerGroup;

  /// The data format of the message. Optionally the data format can be added to each message.
  final pulumi.Input<String>? dataFormat;

  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;

  /// The name of the event hub connection.
  final pulumi.Input<String>? eventHubConnectionName;

  /// The resource ID of the event hub to be used to create a data connection.
  final pulumi.Input<String> eventHubResourceId;

  /// Resource location.
  final pulumi.Input<String>? location;

  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final pulumi.Input<String>? mappingRuleName;

  /// The name of the resource group containing the Kusto cluster.
  final pulumi.Input<String> resourceGroupName;

  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final pulumi.Input<String>? tableName;

  /// Creates a new [EventHubConnectionArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [consumerGroup] The event hub consumer group.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [eventHubConnectionName] The name of the event hub connection.
  /// [eventHubResourceId] The resource ID of the event hub to be used to create a data connection.
  /// [location] Resource location.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [resourceGroupName] The name of the resource group containing the Kusto cluster.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  EventHubConnectionArgs({
    required this.clusterName,
    required this.consumerGroup,
    this.dataFormat,
    required this.databaseName,
    this.eventHubConnectionName,
    required this.eventHubResourceId,
    this.location,
    this.mappingRuleName,
    required this.resourceGroupName,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'consumerGroup': consumerGroup,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'eventHubConnectionName': ?eventHubConnectionName,
      'eventHubResourceId': eventHubResourceId,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'resourceGroupName': resourceGroupName,
      'tableName': ?tableName,
    };
  }

  factory EventHubConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EventHubConnectionArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      consumerGroup: pulumi.Input.fromValue(map['consumerGroup'] as String),
      dataFormat: (() {
        final guardedValue = map['dataFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      eventHubConnectionName: (() {
        final guardedValue = map['eventHubConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventHubResourceId: pulumi.Input.fromValue(
        map['eventHubResourceId'] as String,
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mappingRuleName: (() {
        final guardedValue = map['mappingRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
