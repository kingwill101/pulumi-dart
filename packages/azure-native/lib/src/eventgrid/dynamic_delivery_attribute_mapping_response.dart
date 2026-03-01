// ignore_for_file: unused_element, unnecessary_cast


/// Dynamic delivery attribute mapping details.
class DynamicDeliveryAttributeMappingResponse {
  /// Name of the delivery attribute or header.
  final String? name;
  /// JSON path in the event which contains attribute value.
  final String? sourceField;
  /// Type of the delivery attribute or header name.
  /// Expected value is 'Dynamic'.
  final String type;

  /// Creates a new [DynamicDeliveryAttributeMappingResponse].
  /// [name] Name of the delivery attribute or header.
  /// [sourceField] JSON path in the event which contains attribute value.
  /// [type] Type of the delivery attribute or header name.
  DynamicDeliveryAttributeMappingResponse({
    this.name,
    this.sourceField,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceField': ?sourceField,
      'type': type,
    };
  }

  factory DynamicDeliveryAttributeMappingResponse.fromMap(Map<String, dynamic> map) {
    return DynamicDeliveryAttributeMappingResponse(
      name: map['name'] == null ? null : map['name'] as String,
      sourceField: map['sourceField'] == null ? null : map['sourceField'] as String,
      type: map['type'] as String,
    );
  }
}

