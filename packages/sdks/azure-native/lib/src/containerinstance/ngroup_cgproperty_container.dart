// ignore_for_file: unused_element, unnecessary_cast

import 'ngroup_cgproperty_container_properties.dart';

/// Container properties that can be provided with NGroups object.
class NGroupCGPropertyContainer {
  /// container name
  final String? name;
  /// container properties
  final NGroupCGPropertyContainerProperties? properties;

  /// Creates a new [NGroupCGPropertyContainer].
  /// [name] container name
  /// [properties] container properties
  NGroupCGPropertyContainer({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory NGroupCGPropertyContainer.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyContainer(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : NGroupCGPropertyContainerProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

