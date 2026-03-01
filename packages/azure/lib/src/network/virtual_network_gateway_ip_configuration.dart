// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayIpConfiguration {
  /// A user-defined name of the IP configuration. Defaults to `vnetGatewayConfig`.
  final String? name;
  /// Defines how the private IP address of the gateways virtual interface is assigned. The only valid value is `Dynamic` for Virtual Network Gateway (`Static` is not supported by the service yet). Defaults to `Dynamic`.
  final String? privateIpAddressAllocation;
  /// The ID of the public IP address to associate with the Virtual Network Gateway.
  ///
  /// > **Note:** `public_ip_address_id` should not be specified when `type` is set to `ExpressRoute`.
  final String? publicIpAddressId;
  /// The ID of the gateway subnet of a virtual network in which the virtual network gateway will be created. It is mandatory that the associated subnet is named `GatewaySubnet`. Therefore, each virtual network can contain at most a single Virtual Network Gateway.
  final String subnetId;

  /// Creates a new [VirtualNetworkGatewayIpConfiguration].
  /// [name] A user-defined name of the IP configuration. Defaults to `vnetGatewayConfig`.
  /// [privateIpAddressAllocation] Defines how the private IP address of the gateways virtual interface is assigned. The only valid value is `Dynamic` for Virtual Network Gateway (`Static` is not supported by the service yet). Defaults to `Dynamic`.
  /// [publicIpAddressId] The ID of the public IP address to associate with the Virtual Network Gateway.
  /// [subnetId] The ID of the gateway subnet of a virtual network in which the virtual network gateway will be created. It is mandatory that the associated subnet is named `GatewaySubnet`. Therefore, each virtual network can contain at most a single Virtual Network Gateway.
  VirtualNetworkGatewayIpConfiguration({
    this.name,
    this.privateIpAddressAllocation,
    this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'privateIpAddressAllocation': ?privateIpAddressAllocation,
      'publicIpAddressId': ?publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory VirtualNetworkGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayIpConfiguration(
      name: map['name'] == null ? null : map['name'] as String,
      privateIpAddressAllocation: map['privateIpAddressAllocation'] == null ? null : map['privateIpAddressAllocation'] as String,
      publicIpAddressId: map['publicIpAddressId'] == null ? null : map['publicIpAddressId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

