// ignore_for_file: unused_element, unnecessary_cast

import 'subnet.dart';

/// Properties of route target address
class RouteTargetAddressPropertiesFormat {
  /// The private IPv4 or IPv6 address of the service gateway route target address.
  final String? privateIPAddress;
  /// The Private IP allocation method.
  final String? privateIPAllocationMethod;
  /// The reference to the subnet resource.
  final Subnet? subnet;

  /// Creates a new [RouteTargetAddressPropertiesFormat].
  /// [privateIPAddress] The private IPv4 or IPv6 address of the service gateway route target address.
  /// [privateIPAllocationMethod] The Private IP allocation method.
  /// [subnet] The reference to the subnet resource.
  RouteTargetAddressPropertiesFormat({
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory RouteTargetAddressPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return RouteTargetAddressPropertiesFormat(
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      subnet: map['subnet'] == null ? null : Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

