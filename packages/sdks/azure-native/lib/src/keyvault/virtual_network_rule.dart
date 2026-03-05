// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule governing the accessibility of a vault from a specific virtual network.
class VirtualNetworkRule {
  /// Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  final pulumi.Input<String> id;
  /// Property to specify whether NRP will ignore the check if parent subnet has serviceEndpoints configured.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;

  /// Creates a new [VirtualNetworkRule].
  /// [id] Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  /// [ignoreMissingVnetServiceEndpoint] Property to specify whether NRP will ignore the check if parent subnet has serviceEndpoints configured.
  VirtualNetworkRule({
    required this.id,
    this.ignoreMissingVnetServiceEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
    };
  }

  factory VirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRule(
      id: pulumi.Input.fromValue(map['id'] as String),
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

