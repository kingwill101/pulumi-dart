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
  IotHubDataConnectionArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> consumerGroup,
    pulumi.Output<String>? dataConnectionName,
    pulumi.Output<String>? dataFormat,
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? databaseRouting,
    pulumi.Output<List<String>>? eventSystemProperties,
    required pulumi.Output<String> iotHubResourceId,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mappingRuleName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? retrievalStartDate,
    required pulumi.Output<String> sharedAccessPolicyName,
    pulumi.Output<String>? tableName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      consumerGroup = pulumi.Input.asInput<String>(consumerGroup),
      dataConnectionName = pulumi.Input.asOptionalInput<String>(dataConnectionName),
      dataFormat = pulumi.Input.asOptionalInput<String>(dataFormat),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      databaseRouting = pulumi.Input.asOptionalInput<String>(databaseRouting),
      eventSystemProperties = pulumi.Input.asOptionalInput<List<String>>(eventSystemProperties),
      iotHubResourceId = pulumi.Input.asInput<String>(iotHubResourceId),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      mappingRuleName = pulumi.Input.asOptionalInput<String>(mappingRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retrievalStartDate = pulumi.Input.asOptionalInput<String>(retrievalStartDate),
      sharedAccessPolicyName = pulumi.Input.asInput<String>(sharedAccessPolicyName),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      consumerGroup: pulumi.Output.create<String>(map['consumerGroup'] as String),
      dataConnectionName: map['dataConnectionName'] == null ? null : pulumi.Output.create<String>(map['dataConnectionName'] as String),
      dataFormat: map['dataFormat'] == null ? null : pulumi.Output.create<String>(map['dataFormat'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      databaseRouting: map['databaseRouting'] == null ? null : pulumi.Output.create<String>(map['databaseRouting'] as String),
      eventSystemProperties: map['eventSystemProperties'] == null ? null : pulumi.Output.create<List<String>>((map['eventSystemProperties'] as List).cast<String>()),
      iotHubResourceId: pulumi.Output.create<String>(map['iotHubResourceId'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mappingRuleName: map['mappingRuleName'] == null ? null : pulumi.Output.create<String>(map['mappingRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retrievalStartDate: map['retrievalStartDate'] == null ? null : pulumi.Output.create<String>(map['retrievalStartDate'] as String),
      sharedAccessPolicyName: pulumi.Output.create<String>(map['sharedAccessPolicyName'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

