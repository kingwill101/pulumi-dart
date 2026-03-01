// ignore_for_file: unused_element, unnecessary_cast


/// The tracking event definition.
class TrackingEventDefinitionResponse {
  /// The operation name.
  final String? operationName;
  /// The operation type.
  final String? operationType;
  /// The properties to be collected for event.
  final Map<String, dynamic>? properties;

  /// Creates a new [TrackingEventDefinitionResponse].
  /// [operationName] The operation name.
  /// [operationType] The operation type.
  /// [properties] The properties to be collected for event.
  TrackingEventDefinitionResponse({
    this.operationName,
    this.operationType,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationName': ?operationName,
      'operationType': ?operationType,
      'properties': ?properties,
    };
  }

  factory TrackingEventDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return TrackingEventDefinitionResponse(
      operationName: map['operationName'] == null ? null : map['operationName'] as String,
      operationType: map['operationType'] == null ? null : map['operationType'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, dynamic>(),
    );
  }
}

