// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_service_extension_properties_response.dart';

/// Describes a cloud service Extension.
class ExtensionResponse {
  /// The name of the extension.
  final String? name;
  /// Extension Properties.
  final CloudServiceExtensionPropertiesResponse? properties;

  /// Creates a new [ExtensionResponse].
  /// [name] The name of the extension.
  /// [properties] Extension Properties.
  ExtensionResponse({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory ExtensionResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionResponse(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : CloudServiceExtensionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

