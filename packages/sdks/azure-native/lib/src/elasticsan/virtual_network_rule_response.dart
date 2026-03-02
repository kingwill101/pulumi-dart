// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network rule.
class VirtualNetworkRuleResponse {
  /// The action of virtual network rule.
  final pulumi.Input<String>? action;
  /// Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
  final pulumi.Input<String> virtualNetworkResourceId;

  /// Creates a new [VirtualNetworkRuleResponse].
  /// [action] The action of virtual network rule.
  /// [virtualNetworkResourceId] Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
  VirtualNetworkRuleResponse({
    this.action,
    required this.virtualNetworkResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'virtualNetworkResourceId': virtualNetworkResourceId,
    };
  }

  factory VirtualNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleResponse(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      virtualNetworkResourceId: (map['virtualNetworkResourceId'] as String).input(),
    );
  }
}

