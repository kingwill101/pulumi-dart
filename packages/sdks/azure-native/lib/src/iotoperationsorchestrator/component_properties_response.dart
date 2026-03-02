// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a desired runtime component.
class ComponentPropertiesResponse {
  /// Component dependencies.
  final pulumi.Input<List<String>>? dependencies;
  /// Name of the component.
  final pulumi.Input<String> name;
  /// Properties of the component.
  final pulumi.Input<dynamic>? properties;
  /// Component type.
  final pulumi.Input<String> type;

  /// Creates a new [ComponentPropertiesResponse].
  /// [dependencies] Component dependencies.
  /// [name] Name of the component.
  /// [properties] Properties of the component.
  /// [type] Component type.
  ComponentPropertiesResponse({
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

  factory ComponentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ComponentPropertiesResponse(
      dependencies: map['dependencies'] == null ? null : ((map['dependencies'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (map['properties']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

