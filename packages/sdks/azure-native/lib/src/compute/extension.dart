// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_service_extension_properties.dart';

/// Describes a cloud service Extension.
class Extension {
  /// The name of the extension.
  final String? name;
  /// Extension Properties.
  final CloudServiceExtensionProperties? properties;

  /// Creates a new [Extension].
  /// [name] The name of the extension.
  /// [properties] Extension Properties.
  Extension({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory Extension.fromMap(Map<String, dynamic> map) {
    return Extension(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : CloudServiceExtensionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

