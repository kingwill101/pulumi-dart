// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a desired runtime component.
class ComponentProperties {
  /// Component dependencies.
  final pulumi.Input<List<String>>? dependencies;

  /// Name of the component.
  final pulumi.Input<String> name;

  /// Properties of the component.
  final pulumi.Input<dynamic>? properties;

  /// Component type.
  final pulumi.Input<String> type;

  /// Creates a new [ComponentProperties].
  /// [dependencies] Component dependencies.
  /// [name] Name of the component.
  /// [properties] Properties of the component.
  /// [type] Component type.
  ComponentProperties({
    this.dependencies,
    required this.name,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependencies': ?dependencies,
      'name': name,
      'properties': ?properties,
      'type': type,
    };
  }

  factory ComponentProperties.fromMap(Map<String, dynamic> map) {
    return ComponentProperties(
      dependencies: (() {
        final guardedValue = map['dependencies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
