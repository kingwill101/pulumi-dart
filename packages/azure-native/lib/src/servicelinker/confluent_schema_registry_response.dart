// ignore_for_file: unused_element, unnecessary_cast


/// The service properties when target service type is ConfluentSchemaRegistry
class ConfluentSchemaRegistryResponse {
  /// The endpoint of service.
  final String? endpoint;
  /// The target service type.
  /// Expected value is 'ConfluentSchemaRegistry'.
  final String type;

  /// Creates a new [ConfluentSchemaRegistryResponse].
  /// [endpoint] The endpoint of service.
  /// [type] The target service type.
  ConfluentSchemaRegistryResponse({
    this.endpoint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'type': type,
    };
  }

  factory ConfluentSchemaRegistryResponse.fromMap(Map<String, dynamic> map) {
    return ConfluentSchemaRegistryResponse(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      type: map['type'] as String,
    );
  }
}

