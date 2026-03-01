// ignore_for_file: unused_element, unnecessary_cast


/// The status detail properties of the connected registry.
class StatusDetailPropertiesResponse {
  /// The code of the status.
  final String code;
  /// The correlation ID of the status.
  final String correlationId;
  /// The description of the status.
  final String description;
  /// The timestamp of the status.
  final String timestamp;
  /// The component of the connected registry corresponding to the status.
  final String type;

  /// Creates a new [StatusDetailPropertiesResponse].
  /// [code] The code of the status.
  /// [correlationId] The correlation ID of the status.
  /// [description] The description of the status.
  /// [timestamp] The timestamp of the status.
  /// [type] The component of the connected registry corresponding to the status.
  StatusDetailPropertiesResponse({
    required this.code,
    required this.correlationId,
    required this.description,
    required this.timestamp,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'correlationId': correlationId,
      'description': description,
      'timestamp': timestamp,
      'type': type,
    };
  }

  factory StatusDetailPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StatusDetailPropertiesResponse(
      code: map['code'] as String,
      correlationId: map['correlationId'] as String,
      description: map['description'] as String,
      timestamp: map['timestamp'] as String,
      type: map['type'] as String,
    );
  }
}

