// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connector properties of a CDC table in terms of name / value pairs.
class MapperDslConnectorPropertiesResponse {
  /// Name of the property.
  final pulumi.Input<String>? name;
  /// Value of the property.
  final pulumi.Input<dynamic>? value;

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

