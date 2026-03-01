// ignore_for_file: unused_element, unnecessary_cast

import 'ngroup_cgproperty_container_response_properties.dart';

/// Container properties that can be provided with NGroups object.
class NGroupCGPropertyContainerResponse {
  /// container name
  final String? name;
  /// container properties
  final NGroupCGPropertyContainerResponseProperties? properties;

  /// Creates a new [NGroupCGPropertyContainerResponse].
  /// [name] container name
  /// [properties] container properties
  NGroupCGPropertyContainerResponse({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory NGroupCGPropertyContainerResponse.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyContainerResponse(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : NGroupCGPropertyContainerResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

