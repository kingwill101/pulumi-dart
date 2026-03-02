// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_extension_properties.dart';

/// Describes a cloud service Extension.
class Extension {
  /// The name of the extension.
  final pulumi.Input<String>? name;
  /// Extension Properties.
  final pulumi.Input<CloudServiceExtensionProperties>? properties;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudServiceExtensionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory Extension.fromMap(Map<String, dynamic> map) {
    return Extension(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (CloudServiceExtensionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

