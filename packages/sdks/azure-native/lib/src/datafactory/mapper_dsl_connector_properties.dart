// ignore_for_file: unused_element, unnecessary_cast


/// Connector properties of a CDC table in terms of name / value pairs.
class MapperDslConnectorProperties {
  /// Name of the property.
  final String? name;
  /// Value of the property.
  final dynamic value;

  /// Creates a new [MapperDslConnectorProperties].
  /// [name] Name of the property.
  /// [value] Value of the property.
  MapperDslConnectorProperties({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MapperDslConnectorProperties.fromMap(Map<String, dynamic> map) {
    return MapperDslConnectorProperties(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

