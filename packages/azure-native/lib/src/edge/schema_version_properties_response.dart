// ignore_for_file: unused_element, unnecessary_cast


/// Schema Version Properties
class SchemaVersionPropertiesResponse {
  /// Provisioning state of resource
  final String provisioningState;
  /// Value of schema version
  final String value;

  /// Creates a new [SchemaVersionPropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [value] Value of schema version
  SchemaVersionPropertiesResponse({
    required this.provisioningState,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'value': value,
    };
  }

  factory SchemaVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchemaVersionPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      value: map['value'] as String,
    );
  }
}

