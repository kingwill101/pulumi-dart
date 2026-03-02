// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API specification details.
class ApiDefinitionPropertiesSpecificationResponse {
  /// Specification name.
  final pulumi.Input<String>? name;
  /// Specification version.
  final pulumi.Input<String>? version;

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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

