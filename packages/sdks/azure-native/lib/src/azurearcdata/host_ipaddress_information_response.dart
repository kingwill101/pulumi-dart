// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP address and subnet mask.
class HostIPAddressInformationResponse {
  /// IP address
  final pulumi.Input<String> ipAddress;
  /// Subnet mask
  final pulumi.Input<String> subnetMask;

  /// Creates a new [HostIPAddressInformationResponse].
  /// [ipAddress] IP address
  /// [subnetMask] Subnet mask
  HostIPAddressInformationResponse({
    required this.ipAddress,
    required this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'subnetMask': subnetMask,
    };
  }

  factory HostIPAddressInformationResponse.fromMap(Map<String, dynamic> map) {
    return HostIPAddressInformationResponse(
      ipAddress: (map['ipAddress'] as String).input(),
      subnetMask: (map['subnetMask'] as String).input(),
    );
  }
}

