// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_mqtt_bridge_connector_args_doc}
/// Arguments for getMqttBridgeConnector.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_mqtt_bridge_connector_args_doc}
class GetMqttBridgeConnectorArgs {
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// Name of MQ mqttBridgeConnector resource
  final pulumi.Input<String> mqttBridgeConnectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMqttBridgeConnectorArgs].
  /// [mqName] Name of MQ resource
  /// [mqttBridgeConnectorName] Name of MQ mqttBridgeConnector resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMqttBridgeConnectorArgs({
    required String mqName,
    required String mqttBridgeConnectorName,
    required String resourceGroupName,
  }) :
      mqName = pulumi.Input.asInput<String>(mqName),
      mqttBridgeConnectorName = pulumi.Input.asInput<String>(mqttBridgeConnectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mqName': mqName,
      'mqttBridgeConnectorName': mqttBridgeConnectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMqttBridgeConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetMqttBridgeConnectorArgs(
      mqName: map['mqName'] as String,
      mqttBridgeConnectorName: map['mqttBridgeConnectorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

