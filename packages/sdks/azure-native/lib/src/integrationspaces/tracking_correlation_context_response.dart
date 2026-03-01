// ignore_for_file: unused_element, unnecessary_cast


/// The tracking correlation context.
class TrackingCorrelationContextResponse {
  /// The operation name for correlation context.
  final String? operationName;
  /// The operation type for correlation context.
  final String? operationType;
  /// The name of the correlation property.
  final String? propertyName;
  /// The template expression for correlation context property value.
  final String? value;

  /// Creates a new [TrackingCorrelationContextResponse].
  /// [operationName] The operation name for correlation context.
  /// [operationType] The operation type for correlation context.
  /// [propertyName] The name of the correlation property.
  /// [value] The template expression for correlation context property value.
  TrackingCorrelationContextResponse({
    this.operationName,
    this.operationType,
    this.propertyName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationName': ?operationName,
      'operationType': ?operationType,
      'propertyName': ?propertyName,
      'value': ?value,
    };
  }

  factory TrackingCorrelationContextResponse.fromMap(Map<String, dynamic> map) {
    return TrackingCorrelationContextResponse(
      operationName: map['operationName'] == null ? null : map['operationName'] as String,
      operationType: map['operationType'] == null ? null : map['operationType'] as String,
      propertyName: map['propertyName'] == null ? null : map['propertyName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

