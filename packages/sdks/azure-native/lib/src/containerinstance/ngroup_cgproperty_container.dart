// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ngroup_cgproperty_container_properties.dart';

/// Container properties that can be provided with NGroups object.
class NGroupCGPropertyContainer {
  /// container name
  final pulumi.Input<String>? name;
  /// container properties
  final pulumi.Input<NGroupCGPropertyContainerProperties>? properties;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<NGroupCGPropertyContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory NGroupCGPropertyContainer.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyContainer(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NGroupCGPropertyContainerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

