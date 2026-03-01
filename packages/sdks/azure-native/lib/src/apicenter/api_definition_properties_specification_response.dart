// ignore_for_file: unused_element, unnecessary_cast


/// API specification details.
class ApiDefinitionPropertiesSpecificationResponse {
  /// Specification name.
  final String? name;
  /// Specification version.
  final String? version;

  /// Creates a new [ApiDefinitionPropertiesSpecificationResponse].
  /// [name] Specification name.
  /// [version] Specification version.
  ApiDefinitionPropertiesSpecificationResponse({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory ApiDefinitionPropertiesSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return ApiDefinitionPropertiesSpecificationResponse(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

