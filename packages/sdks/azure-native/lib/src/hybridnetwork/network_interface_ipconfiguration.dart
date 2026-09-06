// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network interface IP configuration properties.
class NetworkInterfaceIPConfiguration {
  /// The list of DNS servers IP addresses.
  final pulumi.Input<List<String>?>? dnsServers;
  /// The value of the gateway.
  final pulumi.Input<String?>? gateway;
  /// The value of the IP address.
  final pulumi.Input<String?>? ipAddress;
  /// IP address allocation method.
  final pulumi.Input<dynamic>? ipAllocationMethod;
  /// IP address version.
  final pulumi.Input<dynamic>? ipVersion;
  /// The value of the subnet.
  final pulumi.Input<String?>? subnet;

  /// Creates a new [NetworkInterfaceIPConfiguration].
  /// [dnsServers] The list of DNS servers IP addresses.
  /// [gateway] The value of the gateway.
  /// [ipAddress] The value of the IP address.
  /// [ipAllocationMethod] IP address allocation method.
  /// [ipVersion] IP address version.
  /// [subnet] The value of the subnet.
  const NetworkInterfaceIPConfiguration({
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

  factory NetworkInterfaceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfiguration(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAllocationMethod: (() { final guardedValue = map['ipAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
