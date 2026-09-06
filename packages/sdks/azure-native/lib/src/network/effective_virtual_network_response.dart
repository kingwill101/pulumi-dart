// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Effective Virtual Network
class EffectiveVirtualNetworkResponse {
  /// Effective vnet Id.
  final pulumi.Input<String?>? id;
  /// Location of vnet.
  final pulumi.Input<String?>? location;
  /// Membership Type.
  final pulumi.Input<String?>? membershipType;

  /// Creates a new [EffectiveVirtualNetworkResponse].
  /// [id] Effective vnet Id.
  /// [location] Location of vnet.
  /// [membershipType] Membership Type.
  const EffectiveVirtualNetworkResponse({
    this.id,
    this.location,
    this.membershipType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'membershipType': ?membershipType,
    };
  }

  factory EffectiveVirtualNetworkResponse.fromMap(Map<String, dynamic> map) {
    return EffectiveVirtualNetworkResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipType: (() { final guardedValue = map['membershipType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
