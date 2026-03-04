// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule governing the accessibility from a specific virtual network.
class VirtualNetworkRuleResponse {
  /// Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  final pulumi.Input<String> id;

  /// Ignore missing vnet service endpoint or not.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;

  /// Gets the state of virtual network rule.
  final pulumi.Input<String>? state;

  /// Creates a new [VirtualNetworkRuleResponse].
  /// [id] Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  /// [ignoreMissingVnetServiceEndpoint] Ignore missing vnet service endpoint or not.
  /// [state] Gets the state of virtual network rule.
  VirtualNetworkRuleResponse({
    required this.id,
    this.ignoreMissingVnetServiceEndpoint,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'state': ?state,
    };
  }

  factory VirtualNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      ignoreMissingVnetServiceEndpoint: (() {
        final guardedValue = map['ignoreMissingVnetServiceEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
