// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_reference_properties.dart';

/// Describes a network interface reference.
class NetworkInterfaceReference {
  /// The ID of the sub-resource.
  final pulumi.Input<String>? id;
  /// Describes a network interface reference properties.
  final pulumi.Input<NetworkInterfaceReferenceProperties>? properties;

  /// Creates a new [NetworkInterfaceReference].
  /// [id] The ID of the sub-resource.
  /// [properties] Describes a network interface reference properties.
  const NetworkInterfaceReference({
    this.id,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceReferenceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceReference.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceReference(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceReferenceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
