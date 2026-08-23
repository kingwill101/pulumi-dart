// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataflow Destination Operation properties
class DataflowDestinationOperationSettings {
  /// Destination location, can be a topic or table name. Supports dynamic values with $topic, $systemProperties, $userProperties, $payload, $context, and $subscription.
  final pulumi.Input<String> dataDestination;
  /// Reference to the Endpoint CR. Can be of Broker, Kafka, Fabric, ADLS, ADX type.
  final pulumi.Input<String> endpointRef;

  /// Creates a new [DataflowDestinationOperationSettings].
  /// [dataDestination] Destination location, can be a topic or table name. Supports dynamic values with $topic, $systemProperties, $userProperties, $payload, $context, and $subscription.
  /// [endpointRef] Reference to the Endpoint CR. Can be of Broker, Kafka, Fabric, ADLS, ADX type.
  const DataflowDestinationOperationSettings({
    required this.dataDestination,
    required this.endpointRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDestination': dataDestination,
      'endpointRef': endpointRef,
    };
  }

  factory DataflowDestinationOperationSettings.fromMap(Map<String, dynamic> map) {
    return DataflowDestinationOperationSettings(
      dataDestination: pulumi.Input.fromValue(map['dataDestination'] as String),
      endpointRef: pulumi.Input.fromValue(map['endpointRef'] as String),
    );
  }
}
