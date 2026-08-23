// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ngroup_cgproperty_container_properties_response.dart';

/// Container properties that can be provided with NGroups object.
class NGroupCGPropertyContainerResponse {
  /// container name
  final pulumi.Input<String>? name;
  /// container properties
  final pulumi.Input<NGroupCGPropertyContainerPropertiesResponse>? properties;

  /// Creates a new [NGroupCGPropertyContainerResponse].
  /// [name] container name
  /// [properties] container properties
  const NGroupCGPropertyContainerResponse({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<NGroupCGPropertyContainerPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory NGroupCGPropertyContainerResponse.fromMap(Map<String, dynamic> map) {
    return NGroupCGPropertyContainerResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NGroupCGPropertyContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
