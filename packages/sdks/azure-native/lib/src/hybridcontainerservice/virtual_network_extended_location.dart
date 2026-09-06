// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extended location pointing to the underlying infrastructure
class VirtualNetworkExtendedLocation {
  /// ARM Id of the extended location.
  final pulumi.Input<String?>? name;
  /// The extended location type. Allowed value: 'CustomLocation'
  final pulumi.Input<dynamic>? type;

  /// Creates a new [VirtualNetworkExtendedLocation].
  /// [name] ARM Id of the extended location.
  /// [type] The extended location type. Allowed value: 'CustomLocation'
  const VirtualNetworkExtendedLocation({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory VirtualNetworkExtendedLocation.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkExtendedLocation(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
