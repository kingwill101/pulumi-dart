// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network ACL Rule object
class VirtualNetworkRuleResponse {
  /// Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}.
  final pulumi.Input<String>? id;
  /// Create firewall rule before the virtual network has vnet service endpoint enabled.
  final pulumi.Input<bool>? ignoreMissingVNetServiceEndpoint;

  /// Creates a new [VirtualNetworkRuleResponse].
  /// [id] Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}.
  /// [ignoreMissingVNetServiceEndpoint] Create firewall rule before the virtual network has vnet service endpoint enabled.
  VirtualNetworkRuleResponse({
    this.id,
    this.ignoreMissingVNetServiceEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ignoreMissingVNetServiceEndpoint': ?ignoreMissingVNetServiceEndpoint,
    };
  }

  factory VirtualNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ignoreMissingVNetServiceEndpoint: map['ignoreMissingVNetServiceEndpoint'] == null ? null : (map['ignoreMissingVNetServiceEndpoint'] as bool).input(),
    );
  }
}

