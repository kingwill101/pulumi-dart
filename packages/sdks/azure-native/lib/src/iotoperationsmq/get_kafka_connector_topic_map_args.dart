// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_kafka_connector_topic_map_args_doc}
/// Arguments for getKafkaConnectorTopicMap.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_kafka_connector_topic_map_args_doc}
class GetKafkaConnectorTopicMapArgs {
  /// Name of MQ kafkaConnector resource
  final pulumi.Input<String> kafkaConnectorName;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of MQ kafka/topicMap resource
  final pulumi.Input<String> topicMapName;

  /// Creates a new [GetKafkaConnectorTopicMapArgs].
  /// [kafkaConnectorName] Name of MQ kafkaConnector resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topicMapName] Name of MQ kafka/topicMap resource
  GetKafkaConnectorTopicMapArgs({
    required pulumi.Output<String> kafkaConnectorName,
    required pulumi.Output<String> mqName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> topicMapName,
  }) :
      kafkaConnectorName = pulumi.Input.asInput<String>(kafkaConnectorName),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicMapName = pulumi.Input.asInput<String>(topicMapName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaConnectorName': kafkaConnectorName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
      'topicMapName': topicMapName,
    };
  }

  factory GetKafkaConnectorTopicMapArgs.fromMap(Map<String, dynamic> map) {
    return GetKafkaConnectorTopicMapArgs(
      kafkaConnectorName: pulumi.Output.create<String>(map['kafkaConnectorName'] as String),
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicMapName: pulumi.Output.create<String>(map['topicMapName'] as String),
    );
  }
}

