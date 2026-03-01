// ignore_for_file: unused_element, unnecessary_cast


/// Connector properties of a CDC table in terms of name / value pairs.
class MapperDslConnectorPropertiesResponse {
  /// Name of the property.
  final String? name;
  /// Value of the property.
  final dynamic value;

  /// Creates a new [MapperDslConnectorPropertiesResponse].
  /// [name] Name of the property.
  /// [value] Value of the property.
  MapperDslConnectorPropertiesResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MapperDslConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MapperDslConnectorPropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

