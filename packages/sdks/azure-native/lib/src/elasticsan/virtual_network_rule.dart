// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network rule.
class VirtualNetworkRule {
  /// The action of virtual network rule.
  final pulumi.Input<dynamic>? action;
  /// Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
  final pulumi.Input<String> virtualNetworkResourceId;

  /// Creates a new [VirtualNetworkRule].
  /// [action] The action of virtual network rule.
  /// [virtualNetworkResourceId] Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
  VirtualNetworkRule({
    pulumi.Input<dynamic>? action,
    required this.virtualNetworkResourceId,
  }) : action = action ?? pulumi.Input.fromValue('Allow');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'virtualNetworkResourceId': virtualNetworkResourceId,
    };
  }

  factory VirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      virtualNetworkResourceId: pulumi.Input.fromValue(map['virtualNetworkResourceId'] as String),
    );
  }
}
