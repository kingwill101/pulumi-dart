// ignore_for_file: unused_element, unnecessary_cast


class GetVpnGatewayIpConfiguration {
  /// The identifier of the IP configuration for the VPN Gateway.
  final String id;
  /// The private IP address of this IP configuration.
  final String privateIpAddress;
  /// The public IP address of this IP configuration.
  final String publicIpAddress;

  /// Creates a new [GetVpnGatewayIpConfiguration].
  /// [id] The identifier of the IP configuration for the VPN Gateway.
  /// [privateIpAddress] The private IP address of this IP configuration.
  /// [publicIpAddress] The public IP address of this IP configuration.
  GetVpnGatewayIpConfiguration({
    required this.id,
    required this.privateIpAddress,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'privateIpAddress': privateIpAddress,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory GetVpnGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayIpConfiguration(
      id: map['id'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      publicIpAddress: map['publicIpAddress'] as String,
    );
  }
}

