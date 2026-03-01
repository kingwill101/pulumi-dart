// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNetworkGatewayCustomRoute {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  final List<String> addressPrefixes;

  /// Creates a new [GetVirtualNetworkGatewayCustomRoute].
  /// [addressPrefixes] A list of address blocks reserved for this virtual network in CIDR notation.
  GetVirtualNetworkGatewayCustomRoute({
    required this.addressPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
    };
  }

  factory GetVirtualNetworkGatewayCustomRoute.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayCustomRoute(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
    );
  }
}

