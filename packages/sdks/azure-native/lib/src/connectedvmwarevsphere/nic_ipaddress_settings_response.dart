// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP address information for a virtual network adapter reported by the fabric.
class NicIPAddressSettingsResponse {
  /// Gets the ip address allocation method.
  final pulumi.Input<String> allocationMethod;
  /// Gets the ip address for the nic.
  final pulumi.Input<String> ipAddress;
  /// Gets the mask.
  final pulumi.Input<String> subnetMask;

  /// Creates a new [NicIPAddressSettingsResponse].
  /// [allocationMethod] Gets the ip address allocation method.
  /// [ipAddress] Gets the ip address for the nic.
  /// [subnetMask] Gets the mask.
  NicIPAddressSettingsResponse({
    required this.allocationMethod,
    required this.ipAddress,
    required this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': allocationMethod,
      'ipAddress': ipAddress,
      'subnetMask': subnetMask,
    };
  }

  factory NicIPAddressSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NicIPAddressSettingsResponse(
      allocationMethod: (map['allocationMethod'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      subnetMask: (map['subnetMask'] as String).input(),
    );
  }
}

