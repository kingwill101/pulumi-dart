// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkSubnetSharedPublicIpAddressAllowedPort {
  /// The port on the Virtual Machine that the traffic will be sent to.
  final int? backendPort;
  /// The transport protocol that the traffic will use. Possible values are `TCP` and `UDP`.
  final String? transportProtocol;

  /// Creates a new [VirtualNetworkSubnetSharedPublicIpAddressAllowedPort].
  /// [backendPort] The port on the Virtual Machine that the traffic will be sent to.
  /// [transportProtocol] The transport protocol that the traffic will use. Possible values are `TCP` and `UDP`.
  VirtualNetworkSubnetSharedPublicIpAddressAllowedPort({
    this.backendPort,
    this.transportProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'transportProtocol': ?transportProtocol,
    };
  }

  factory VirtualNetworkSubnetSharedPublicIpAddressAllowedPort.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetSharedPublicIpAddressAllowedPort(
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      transportProtocol: map['transportProtocol'] == null ? null : map['transportProtocol'] as String,
    );
  }
}

