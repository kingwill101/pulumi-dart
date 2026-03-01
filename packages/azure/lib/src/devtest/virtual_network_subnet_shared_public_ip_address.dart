// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_subnet_shared_public_ip_address_allowed_port.dart';

class VirtualNetworkSubnetSharedPublicIpAddress {
  /// A list of `allowed_ports` blocks as defined below.
  final List<VirtualNetworkSubnetSharedPublicIpAddressAllowedPort>? allowedPorts;

  /// Creates a new [VirtualNetworkSubnetSharedPublicIpAddress].
  /// [allowedPorts] A list of `allowed_ports` blocks as defined below.
  VirtualNetworkSubnetSharedPublicIpAddress({
    this.allowedPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPorts': ?allowedPorts == null ? null : pulumi.Input.encodeList<VirtualNetworkSubnetSharedPublicIpAddressAllowedPort, Map<String, dynamic>>(allowedPorts!, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkSubnetSharedPublicIpAddress.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetSharedPublicIpAddress(
      allowedPorts: map['allowedPorts'] == null ? null : pulumi.Input.decodeList<VirtualNetworkSubnetSharedPublicIpAddressAllowedPort>(map['allowedPorts'], (value) => VirtualNetworkSubnetSharedPublicIpAddressAllowedPort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

