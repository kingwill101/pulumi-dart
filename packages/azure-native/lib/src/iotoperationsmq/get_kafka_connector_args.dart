// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_kafka_connector_args_doc}
/// Arguments for getKafkaConnector.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_kafka_connector_args_doc}
class GetKafkaConnectorArgs {
  /// Name of MQ kafkaConnector resource
  final pulumi.Input<String> kafkaConnectorName;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKafkaConnectorArgs].
  /// [kafkaConnectorName] Name of MQ kafkaConnector resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetKafkaConnectorArgs({
    required String kafkaConnectorName,
    required String mqName,
    required String resourceGroupName,
  }) :
      kafkaConnectorName = pulumi.Input.asInput<String>(kafkaConnectorName),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaConnectorName': kafkaConnectorName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKafkaConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetKafkaConnectorArgs(
      kafkaConnectorName: map['kafkaConnectorName'] as String,
      mqName: map['mqName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

