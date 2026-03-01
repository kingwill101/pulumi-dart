// ignore_for_file: unused_element, unnecessary_cast


/// Dataflow Destination Operation properties
class DataflowDestinationOperationSettings {
  /// Destination location, can be a topic or table name. Supports dynamic values with $topic, $systemProperties, $userProperties, $payload, $context, and $subscription.
  final String dataDestination;
  /// Reference to the Endpoint CR. Can be of Broker, Kafka, Fabric, ADLS, ADX type.
  final String endpointRef;

  /// Creates a new [DataflowDestinationOperationSettings].
  /// [dataDestination] Destination location, can be a topic or table name. Supports dynamic values with $topic, $systemProperties, $userProperties, $payload, $context, and $subscription.
  /// [endpointRef] Reference to the Endpoint CR. Can be of Broker, Kafka, Fabric, ADLS, ADX type.
  DataflowDestinationOperationSettings({
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
      dataDestination: map['dataDestination'] as String,
      endpointRef: map['endpointRef'] as String,
    );
  }
}

