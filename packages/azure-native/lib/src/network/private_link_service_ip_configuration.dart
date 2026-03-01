// ignore_for_file: unused_element, unnecessary_cast

import 'subnet.dart';

/// The private link service ip configuration.
class PrivateLinkServiceIpConfiguration {
  /// Resource ID.
  final String? id;
  /// The name of private link service ip configuration.
  final String? name;
  /// Whether the ip configuration is primary or not.
  final bool? primary;
  /// The private IP address of the IP configuration.
  final String? privateIPAddress;
  /// Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  final String? privateIPAddressVersion;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// The reference to the subnet resource.
  final Subnet? subnet;

  /// Creates a new [PrivateLinkServiceIpConfiguration].
  /// [id] Resource ID.
  /// [name] The name of private link service ip configuration.
  /// [primary] Whether the ip configuration is primary or not.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAddressVersion] Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [subnet] The reference to the subnet resource.
  PrivateLinkServiceIpConfiguration({
    this.id,
    this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory PrivateLinkServiceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceIpConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      subnet: map['subnet'] == null ? null : Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

