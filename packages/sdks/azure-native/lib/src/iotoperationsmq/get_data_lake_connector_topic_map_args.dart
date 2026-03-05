// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_data_lake_connector_topic_map_args_doc}
/// Arguments for getDataLakeConnectorTopicMap.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_data_lake_connector_topic_map_args_doc}
class GetDataLakeConnectorTopicMapArgs {
  /// Name of MQ dataLakeConnector resource
  final pulumi.Input<String> dataLakeConnectorName;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of MQ dataLakeConnector/topicMap resource
  final pulumi.Input<String> topicMapName;

  /// Creates a new [GetDataLakeConnectorTopicMapArgs].
  /// [dataLakeConnectorName] Name of MQ dataLakeConnector resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topicMapName] Name of MQ dataLakeConnector/topicMap resource
  GetDataLakeConnectorTopicMapArgs({
    required this.dataLakeConnectorName,
    required this.mqName,
    required this.resourceGroupName,
    required this.topicMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeConnectorName': dataLakeConnectorName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
      'topicMapName': topicMapName,
    };
  }

  factory GetDataLakeConnectorTopicMapArgs.fromMap(Map<String, dynamic> map) {
    return GetDataLakeConnectorTopicMapArgs(
      dataLakeConnectorName: pulumi.Input.fromValue(map['dataLakeConnectorName'] as String),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      topicMapName: pulumi.Input.fromValue(map['topicMapName'] as String),
    );
  }
}

