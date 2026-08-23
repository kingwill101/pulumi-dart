// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_iot_hub_data_connection_args_doc}
/// The set of arguments for IotHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_iot_hub_data_connection_args_doc}
class IotHubDataConnectionArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The iot hub consumer group.
  final pulumi.Input<String> consumerGroup;
  /// The name of the data connection.
  final pulumi.Input<String>? dataConnectionName;
  /// The data format of the message. Optionally the data format can be added to each message.
  final pulumi.Input<String>? dataFormat;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed
  final pulumi.Input<String>? databaseRouting;
  /// System properties of the iot hub
  final pulumi.Input<List<String>>? eventSystemProperties;
  /// The resource ID of the Iot hub to be used to create a data connection.
  final pulumi.Input<String> iotHubResourceId;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'IotHub'.
  final pulumi.Input<String> kind;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// When defined, the data connection retrieves existing Event hub events created since the Retrieval start date. It can only retrieve events retained by the Event hub, based on its retention period.
  final pulumi.Input<String>? retrievalStartDate;
  /// The name of the share access policy
  final pulumi.Input<String> sharedAccessPolicyName;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final pulumi.Input<String>? tableName;

  /// Creates a new [IotHubDataConnectionArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [consumerGroup] The iot hub consumer group.
  /// [dataConnectionName] The name of the data connection.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [databaseRouting] Indication for database routing information from the data connection, by default only database routing information is allowed
  /// [eventSystemProperties] System properties of the iot hub
  /// [iotHubResourceId] The resource ID of the Iot hub to be used to create a data connection.
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [retrievalStartDate] When defined, the data connection retrieves existing Event hub events created since the Retrieval start date. It can only retrieve events retained by the Event hub, based on its retention period.
  /// [sharedAccessPolicyName] The name of the share access policy
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  const IotHubDataConnectionArgs({
    required this.clusterName,
    required this.consumerGroup,
    this.dataConnectionName,
    this.dataFormat,
    required this.databaseName,
    this.databaseRouting,
    this.eventSystemProperties,
    required this.iotHubResourceId,
    required this.kind,
    this.location,
    this.mappingRuleName,
    required this.resourceGroupName,
    this.retrievalStartDate,
    required this.sharedAccessPolicyName,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'consumerGroup': consumerGroup,
      'dataConnectionName': ?dataConnectionName,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'databaseRouting': ?databaseRouting,
      'eventSystemProperties': ?eventSystemProperties,
      'iotHubResourceId': iotHubResourceId,
      'kind': kind,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'resourceGroupName': resourceGroupName,
      'retrievalStartDate': ?retrievalStartDate,
      'sharedAccessPolicyName': sharedAccessPolicyName,
      'tableName': ?tableName,
    };
  }

  factory IotHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return IotHubDataConnectionArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      consumerGroup: pulumi.Input.fromValue(map['consumerGroup'] as String),
      dataConnectionName: (() { final guardedValue = map['dataConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      databaseRouting: (() { final guardedValue = map['databaseRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventSystemProperties: (() { final guardedValue = map['eventSystemProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      iotHubResourceId: pulumi.Input.fromValue(map['iotHubResourceId'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retrievalStartDate: (() { final guardedValue = map['retrievalStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedAccessPolicyName: pulumi.Input.fromValue(map['sharedAccessPolicyName'] as String),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
