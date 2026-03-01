// ignore_for_file: unused_element, unnecessary_cast


/// A rule governing the accessibility from a specific virtual network.
class VirtualNetworkRule {
  /// Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  final String id;
  /// Ignore missing vnet service endpoint or not.
  final bool? ignoreMissingVnetServiceEndpoint;
  /// Gets the state of virtual network rule.
  final String? state;

  /// Creates a new [VirtualNetworkRule].
  /// [id] Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  /// [ignoreMissingVnetServiceEndpoint] Ignore missing vnet service endpoint or not.
  /// [state] Gets the state of virtual network rule.
  VirtualNetworkRule({
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

  factory VirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRule(
      id: map['id'] as String,
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : map['ignoreMissingVnetServiceEndpoint'] as bool,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

