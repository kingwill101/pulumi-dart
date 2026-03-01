// ignore_for_file: unused_element, unnecessary_cast


/// Defines a desired runtime component.
class ComponentPropertiesResponse {
  /// Component dependencies.
  final List<String>? dependencies;
  /// Name of the component.
  final String name;
  /// Properties of the component.
  final dynamic properties;
  /// Component type.
  final String type;

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
      dependencies: map['dependencies'] == null ? null : (map['dependencies'] as List).cast<String>(),
      name: map['name'] as String,
      properties: map['properties'] == null ? null : map['properties'],
      type: map['type'] as String,
    );
  }
}

