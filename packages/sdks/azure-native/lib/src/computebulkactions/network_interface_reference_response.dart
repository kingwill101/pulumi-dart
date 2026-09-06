// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_reference_properties_response.dart';

/// Describes a network interface reference.
class NetworkInterfaceReferenceResponse {
  /// The ID of the sub-resource.
  final pulumi.Input<String?>? id;
  /// Describes a network interface reference properties.
  final pulumi.Input<NetworkInterfaceReferencePropertiesResponse?>? properties;

  /// Creates a new [NetworkInterfaceReferenceResponse].
  /// [id] The ID of the sub-resource.
  /// [properties] Describes a network interface reference properties.
  const NetworkInterfaceReferenceResponse({
    this.id,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceReferencePropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceReferenceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceReferencePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
