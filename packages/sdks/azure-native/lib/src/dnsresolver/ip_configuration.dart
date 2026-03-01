// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// IP configuration.
class IpConfiguration {
  /// Private IP address of the IP configuration.
  final String? privateIpAddress;
  /// Private IP address allocation method.
  final String? privateIpAllocationMethod;
  /// The reference to the subnet bound to the IP configuration.
  final SubResource subnet;

  /// Creates a new [IpConfiguration].
  /// [privateIpAddress] Private IP address of the IP configuration.
  /// [privateIpAllocationMethod] Private IP address allocation method.
  /// [subnet] The reference to the subnet bound to the IP configuration.
  IpConfiguration({
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    required this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'subnet': subnet.toMap(),
    };
  }

  factory IpConfiguration.fromMap(Map<String, dynamic> map) {
    return IpConfiguration(
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : map['privateIpAllocationMethod'] as String,
      subnet: SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

