// ignore_for_file: unused_element, unnecessary_cast

import 'resource_id.dart';

/// The ip configurations for the private link service.
class IPConfiguration {
  /// The name of private link IP configuration.
  final String name;
  /// Indicates whether this IP configuration is primary for the corresponding NIC.
  final bool? primary;
  /// The IP address.
  final String? privateIPAddress;
  /// The method that private IP address is allocated.
  final String? privateIPAllocationMethod;
  /// The subnet resource id.
  final ResourceId? subnet;

  /// Creates a new [IPConfiguration].
  /// [name] The name of private link IP configuration.
  /// [primary] Indicates whether this IP configuration is primary for the corresponding NIC.
  /// [privateIPAddress] The IP address.
  /// [privateIPAllocationMethod] The method that private IP address is allocated.
  /// [subnet] The subnet resource id.
  IPConfiguration({
    required this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory IPConfiguration.fromMap(Map<String, dynamic> map) {
    return IPConfiguration(
      name: map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      subnet: map['subnet'] == null ? null : ResourceId.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

