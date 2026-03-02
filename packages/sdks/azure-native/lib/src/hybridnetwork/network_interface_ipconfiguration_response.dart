// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network interface IP configuration properties.
class NetworkInterfaceIPConfigurationResponse {
  /// The list of DNS servers IP addresses.
  final pulumi.Input<List<String>>? dnsServers;
  /// The value of the gateway.
  final pulumi.Input<String>? gateway;
  /// The value of the IP address.
  final pulumi.Input<String>? ipAddress;
  /// IP address allocation method.
  final pulumi.Input<String>? ipAllocationMethod;
  /// IP address version.
  final pulumi.Input<String>? ipVersion;
  /// The value of the subnet.
  final pulumi.Input<String>? subnet;

  /// Creates a new [NetworkInterfaceIPConfigurationResponse].
  /// [dnsServers] The list of DNS servers IP addresses.
  /// [gateway] The value of the gateway.
  /// [ipAddress] The value of the IP address.
  /// [ipAllocationMethod] IP address allocation method.
  /// [ipVersion] IP address version.
  /// [subnet] The value of the subnet.
  NetworkInterfaceIPConfigurationResponse({
    this.dnsServers,
    this.gateway,
    this.ipAddress,
    this.ipAllocationMethod,
    this.ipVersion,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'ipAddress': ?ipAddress,
      'ipAllocationMethod': ?ipAllocationMethod,
      'ipVersion': ?ipVersion,
      'subnet': ?subnet,
    };
  }

  factory NetworkInterfaceIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfigurationResponse(
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      gateway: map['gateway'] == null ? null : (map['gateway'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      ipAllocationMethod: map['ipAllocationMethod'] == null ? null : (map['ipAllocationMethod'] as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet'] as String).input(),
    );
  }
}

