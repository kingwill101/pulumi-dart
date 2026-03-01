// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_iot_hub_data_connection_iot_hub_data_connection_args_doc}
/// The set of arguments for IotHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_iot_hub_data_connection_iot_hub_data_connection_args_doc}
class IotHubDataConnectionArgs {
  /// Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterName;
  /// Specifies the IotHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String> consumerGroup;
  /// Specifies the data format of the IoTHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataFormat;
  /// Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  final pulumi.Input<String>? databaseRoutingType;
  /// Specifies the System Properties that each IoT Hub message should contain. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? eventSystemProperties;
  /// Specifies the resource id of the IotHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubId;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the Kusto IotHub Data Connection to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the date after which data should be retrieved from IoT Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the IoT Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  final pulumi.Input<String>? retrievalStartDate;
  /// Specifies the IotHub Shared Access Policy this data connection will use for ingestion, which must have read permission. Changing this forces a new resource to be created.
  final pulumi.Input<String> sharedAccessPolicyName;
  /// Specifies the target table name used for the message ingestion. Table must exist before resource is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tableName;

  /// Creates a new [IotHubDataConnectionArgs].
  /// [clusterName] Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  /// [consumerGroup] Specifies the IotHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [dataFormat] Specifies the data format of the IoTHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. Changing this forces a new resource to be created.
  /// [databaseName] Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  /// [databaseRoutingType] Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  /// [eventSystemProperties] Specifies the System Properties that each IoT Hub message should contain. Changing this forces a new resource to be created.
  /// [iothubId] Specifies the resource id of the IotHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [location] The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  /// [mappingRuleName] Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto IotHub Data Connection to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  /// [retrievalStartDate] Specifies the date after which data should be retrieved from IoT Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the IoT Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  /// [sharedAccessPolicyName] Specifies the IotHub Shared Access Policy this data connection will use for ingestion, which must have read permission. Changing this forces a new resource to be created.
  /// [tableName] Specifies the target table name used for the message ingestion. Table must exist before resource is created. Changing this forces a new resource to be created.
  IotHubDataConnectionArgs({
    required String clusterName,
    required String consumerGroup,
    String? dataFormat,
    required String databaseName,
    String? databaseRoutingType,
    List<String>? eventSystemProperties,
    required String iothubId,
    String? location,
    String? mappingRuleName,
    String? name,
    required String resourceGroupName,
    String? retrievalStartDate,
    required String sharedAccessPolicyName,
    String? tableName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      consumerGroup = pulumi.Input.asInput<String>(consumerGroup),
      dataFormat = pulumi.Input.asOptionalInput<String>(dataFormat),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      databaseRoutingType = pulumi.Input.asOptionalInput<String>(databaseRoutingType),
      eventSystemProperties = pulumi.Input.asOptionalInput<List<String>>(eventSystemProperties),
      iothubId = pulumi.Input.asInput<String>(iothubId),
      location = pulumi.Input.asOptionalInput<String>(location),
      mappingRuleName = pulumi.Input.asOptionalInput<String>(mappingRuleName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retrievalStartDate = pulumi.Input.asOptionalInput<String>(retrievalStartDate),
      sharedAccessPolicyName = pulumi.Input.asInput<String>(sharedAccessPolicyName),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'consumerGroup': consumerGroup,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'databaseRoutingType': ?databaseRoutingType,
      'eventSystemProperties': ?eventSystemProperties,
      'iothubId': iothubId,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'retrievalStartDate': ?retrievalStartDate,
      'sharedAccessPolicyName': sharedAccessPolicyName,
      'tableName': ?tableName,
    };
  }

  factory IotHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return IotHubDataConnectionArgs(
      clusterName: map['clusterName'] as String,
      consumerGroup: map['consumerGroup'] as String,
      dataFormat: map['dataFormat'] == null ? null : map['dataFormat'] as String,
      databaseName: map['databaseName'] as String,
      databaseRoutingType: map['databaseRoutingType'] == null ? null : map['databaseRoutingType'] as String,
      eventSystemProperties: map['eventSystemProperties'] == null ? null : (map['eventSystemProperties'] as List).cast<String>(),
      iothubId: map['iothubId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      mappingRuleName: map['mappingRuleName'] == null ? null : map['mappingRuleName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      retrievalStartDate: map['retrievalStartDate'] == null ? null : map['retrievalStartDate'] as String,
      sharedAccessPolicyName: map['sharedAccessPolicyName'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}

