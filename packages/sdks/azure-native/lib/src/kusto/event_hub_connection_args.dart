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
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> consumerGroup,
    pulumi.Output<String>? dataFormat,
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? eventHubConnectionName,
    required pulumi.Output<String> eventHubResourceId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mappingRuleName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? tableName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      consumerGroup = pulumi.Input.asInput<String>(consumerGroup),
      dataFormat = pulumi.Input.asOptionalInput<String>(dataFormat),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      eventHubConnectionName = pulumi.Input.asOptionalInput<String>(eventHubConnectionName),
      eventHubResourceId = pulumi.Input.asInput<String>(eventHubResourceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      mappingRuleName = pulumi.Input.asOptionalInput<String>(mappingRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      consumerGroup: pulumi.Output.create<String>(map['consumerGroup'] as String),
      dataFormat: map['dataFormat'] == null ? null : pulumi.Output.create<String>(map['dataFormat'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      eventHubConnectionName: map['eventHubConnectionName'] == null ? null : pulumi.Output.create<String>(map['eventHubConnectionName'] as String),
      eventHubResourceId: pulumi.Output.create<String>(map['eventHubResourceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mappingRuleName: map['mappingRuleName'] == null ? null : pulumi.Output.create<String>(map['mappingRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

