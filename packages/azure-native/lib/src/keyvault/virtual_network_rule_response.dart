// ignore_for_file: unused_element, unnecessary_cast


/// A rule governing the accessibility of a vault from a specific virtual network.
class VirtualNetworkRuleResponse {
  /// Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  final String id;
  /// Property to specify whether NRP will ignore the check if parent subnet has serviceEndpoints configured.
  final bool? ignoreMissingVnetServiceEndpoint;

  /// Creates a new [VirtualNetworkRuleResponse].
  /// [id] Full resource id of a vnet subnet, such as '/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1'.
  /// [ignoreMissingVnetServiceEndpoint] Property to specify whether NRP will ignore the check if parent subnet has serviceEndpoints configured.
  VirtualNetworkRuleResponse({
    required this.id,
    this.ignoreMissingVnetServiceEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
    };
  }

  factory VirtualNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleResponse(
      id: map['id'] as String,
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : map['ignoreMissingVnetServiceEndpoint'] as bool,
    );
  }
}

