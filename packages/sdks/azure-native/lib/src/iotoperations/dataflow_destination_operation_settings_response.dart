// ignore_for_file: unused_element, unnecessary_cast


/// Dataflow Destination Operation properties
class DataflowDestinationOperationSettingsResponse {
  /// Destination location, can be a topic or table name. Supports dynamic values with $topic, $systemProperties, $userProperties, $payload, $context, and $subscription.
  final String dataDestination;
  /// Reference to the Endpoint CR. Can be of Broker, Kafka, Fabric, ADLS, ADX type.
  final String endpointRef;

  /// Creates a new [DataflowDestinationOperationSettingsResponse].
  /// [dataDestination] Destination location, can be a topic or table name. Supports dynamic values with $topic, $systemProperties, $userProperties, $payload, $context, and $subscription.
  /// [endpointRef] Reference to the Endpoint CR. Can be of Broker, Kafka, Fabric, ADLS, ADX type.
  DataflowDestinationOperationSettingsResponse({
    required this.dataDestination,
    required this.endpointRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDestination': dataDestination,
      'endpointRef': endpointRef,
    };
  }

  factory DataflowDestinationOperationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DataflowDestinationOperationSettingsResponse(
      dataDestination: map['dataDestination'] as String,
      endpointRef: map['endpointRef'] as String,
    );
  }
}

