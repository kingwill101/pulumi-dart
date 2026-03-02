// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_mqtt_bridge_topic_map_args_doc}
/// Arguments for getMqttBridgeTopicMap.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_mqtt_bridge_topic_map_args_doc}
class GetMqttBridgeTopicMapArgs {
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// Name of MQ mqttBridgeConnector resource
  final pulumi.Input<String> mqttBridgeConnectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of MQ mqttBridgeTopicMap resource
  final pulumi.Input<String> topicMapName;

  /// Creates a new [GetMqttBridgeTopicMapArgs].
  /// [mqName] Name of MQ resource
  /// [mqttBridgeConnectorName] Name of MQ mqttBridgeConnector resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topicMapName] Name of MQ mqttBridgeTopicMap resource
  GetMqttBridgeTopicMapArgs({
    required this.mqName,
    required this.mqttBridgeConnectorName,
    required this.resourceGroupName,
    required this.topicMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mqName': mqName,
      'mqttBridgeConnectorName': mqttBridgeConnectorName,
      'resourceGroupName': resourceGroupName,
      'topicMapName': topicMapName,
    };
  }

  factory GetMqttBridgeTopicMapArgs.fromMap(Map<String, dynamic> map) {
    return GetMqttBridgeTopicMapArgs(
      mqName: (map['mqName'] as String).input(),
      mqttBridgeConnectorName: (map['mqttBridgeConnectorName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      topicMapName: (map['topicMapName'] as String).input(),
    );
  }
}

