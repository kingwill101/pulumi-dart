// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule governing the accessibility of a managed hsm pool from a specific virtual network.
class MHSMVirtualNetworkRule {
  /// Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  final pulumi.Input<String> id;

  /// Creates a new [MHSMVirtualNetworkRule].
  /// [id] Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  const MHSMVirtualNetworkRule({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory MHSMVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return MHSMVirtualNetworkRule(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

