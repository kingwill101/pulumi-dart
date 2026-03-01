// ignore_for_file: unused_element, unnecessary_cast


/// Schema Reference Properties
class SchemaReferencePropertiesResponse {
  /// Provisioning state of resource
  final String provisioningState;
  /// Schema Id of schema reference
  final String schemaId;

  /// Creates a new [SchemaReferencePropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [schemaId] Schema Id of schema reference
  SchemaReferencePropertiesResponse({
    required this.provisioningState,
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'schemaId': schemaId,
    };
  }

  factory SchemaReferencePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchemaReferencePropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      schemaId: map['schemaId'] as String,
    );
  }
}

