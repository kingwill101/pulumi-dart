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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudServiceExtensionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

