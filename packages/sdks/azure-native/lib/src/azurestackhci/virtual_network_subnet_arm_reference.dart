// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Virtual Network subnet
class VirtualNetworkSubnetArmReference {
  /// The Azure Resource ID for a Virtual Network subnet.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [VirtualNetworkSubnetArmReference].
  /// [resourceId] The Azure Resource ID for a Virtual Network subnet.
  VirtualNetworkSubnetArmReference({this.resourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceId': ?resourceId};
  }

  factory VirtualNetworkSubnetArmReference.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetArmReference(
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
