// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network ACL Rule object
class VirtualNetworkRule {
  /// Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}.
  final pulumi.Input<String>? id;

  /// Create firewall rule before the virtual network has vnet service endpoint enabled.
  final pulumi.Input<bool>? ignoreMissingVNetServiceEndpoint;

  /// Creates a new [VirtualNetworkRule].
  /// [id] Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}.
  /// [ignoreMissingVNetServiceEndpoint] Create firewall rule before the virtual network has vnet service endpoint enabled.
  VirtualNetworkRule({this.id, this.ignoreMissingVNetServiceEndpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ignoreMissingVNetServiceEndpoint': ?ignoreMissingVNetServiceEndpoint,
    };
  }

  factory VirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRule(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ignoreMissingVNetServiceEndpoint: (() {
        final guardedValue = map['ignoreMissingVNetServiceEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
