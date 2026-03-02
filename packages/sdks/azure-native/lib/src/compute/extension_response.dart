// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_extension_properties_response.dart';

/// Describes a cloud service Extension.
class ExtensionResponse {
  /// The name of the extension.
  final pulumi.Input<String>? name;
  /// Extension Properties.
  final pulumi.Input<CloudServiceExtensionPropertiesResponse>? properties;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudServiceExtensionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ExtensionResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (CloudServiceExtensionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

