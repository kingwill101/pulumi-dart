// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_event_hub_data_connection_args_doc}
/// The set of arguments for EventHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_event_hub_data_connection_args_doc}
class EventHubDataConnectionArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The event hub messages compression type
  final pulumi.Input<String>? compression;
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
  /// The resource ID of the event hub to be used to create a data connection.
  final pulumi.Input<String> eventHubResourceId;
  /// System properties of the event hub
  final pulumi.Input<List<String>>? eventSystemProperties;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventHub'.
  final pulumi.Input<String> kind;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  final pulumi.Input<String>? managedIdentityResourceId;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// When defined, the data connection retrieves existing Event hub events created since the Retrieval start date. It can only retrieve events retained by the Event hub, based on its retention period.
  final pulumi.Input<String>? retrievalStartDate;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final pulumi.Input<String>? tableName;

  /// Creates a new [EventHubDataConnectionArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [compression] The event hub messages compression type
  /// [consumerGroup] The event hub consumer group.
  /// [dataConnectionName] The name of the data connection.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [databaseRouting] Indication for database routing information from the data connection, by default only database routing information is allowed
  /// [eventHubResourceId] The resource ID of the event hub to be used to create a data connection.
  /// [eventSystemProperties] System properties of the event hub
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [managedIdentityResourceId] The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [retrievalStartDate] When defined, the data connection retrieves existing Event hub events created since the Retrieval start date. It can only retrieve events retained by the Event hub, based on its retention period.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  EventHubDataConnectionArgs({
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? compression,
    required pulumi.Output<String> consumerGroup,
    pulumi.Output<String>? dataConnectionName,
    pulumi.Output<String>? dataFormat,
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? databaseRouting,
    required pulumi.Output<String> eventHubResourceId,
    pulumi.Output<List<String>>? eventSystemProperties,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedIdentityResourceId,
    pulumi.Output<String>? mappingRuleName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? retrievalStartDate,
    pulumi.Output<String>? tableName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      compression = pulumi.Input.asOptionalInput<String>(compression),
      consumerGroup = pulumi.Input.asInput<String>(consumerGroup),
      dataConnectionName = pulumi.Input.asOptionalInput<String>(dataConnectionName),
      dataFormat = pulumi.Input.asOptionalInput<String>(dataFormat),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      databaseRouting = pulumi.Input.asOptionalInput<String>(databaseRouting),
      eventHubResourceId = pulumi.Input.asInput<String>(eventHubResourceId),
      eventSystemProperties = pulumi.Input.asOptionalInput<List<String>>(eventSystemProperties),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedIdentityResourceId = pulumi.Input.asOptionalInput<String>(managedIdentityResourceId),
      mappingRuleName = pulumi.Input.asOptionalInput<String>(mappingRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retrievalStartDate = pulumi.Input.asOptionalInput<String>(retrievalStartDate),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'compression': ?compression,
      'consumerGroup': consumerGroup,
      'dataConnectionName': ?dataConnectionName,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'databaseRouting': ?databaseRouting,
      'eventHubResourceId': eventHubResourceId,
      'eventSystemProperties': ?eventSystemProperties,
      'kind': kind,
      'location': ?location,
      'managedIdentityResourceId': ?managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'resourceGroupName': resourceGroupName,
      'retrievalStartDate': ?retrievalStartDate,
      'tableName': ?tableName,
    };
  }

  factory EventHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EventHubDataConnectionArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      compression: map['compression'] == null ? null : pulumi.Output.create<String>(map['compression'] as String),
      consumerGroup: pulumi.Output.create<String>(map['consumerGroup'] as String),
      dataConnectionName: map['dataConnectionName'] == null ? null : pulumi.Output.create<String>(map['dataConnectionName'] as String),
      dataFormat: map['dataFormat'] == null ? null : pulumi.Output.create<String>(map['dataFormat'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      databaseRouting: map['databaseRouting'] == null ? null : pulumi.Output.create<String>(map['databaseRouting'] as String),
      eventHubResourceId: pulumi.Output.create<String>(map['eventHubResourceId'] as String),
      eventSystemProperties: map['eventSystemProperties'] == null ? null : pulumi.Output.create<List<String>>((map['eventSystemProperties'] as List).cast<String>()),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedIdentityResourceId: map['managedIdentityResourceId'] == null ? null : pulumi.Output.create<String>(map['managedIdentityResourceId'] as String),
      mappingRuleName: map['mappingRuleName'] == null ? null : pulumi.Output.create<String>(map['mappingRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retrievalStartDate: map['retrievalStartDate'] == null ? null : pulumi.Output.create<String>(map['retrievalStartDate'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

