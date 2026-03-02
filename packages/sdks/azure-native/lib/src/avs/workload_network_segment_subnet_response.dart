// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet configuration for segment
class WorkloadNetworkSegmentSubnetResponse {
  /// DHCP Range assigned for subnet.
  final pulumi.Input<List<String>>? dhcpRanges;
  /// Gateway address.
  final pulumi.Input<String>? gatewayAddress;

  /// Creates a new [WorkloadNetworkSegmentSubnetResponse].
  /// [dhcpRanges] DHCP Range assigned for subnet.
  /// [gatewayAddress] Gateway address.
  WorkloadNetworkSegmentSubnetResponse({
    this.dhcpRanges,
    this.gatewayAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpRanges': ?dhcpRanges,
      'gatewayAddress': ?gatewayAddress,
    };
  }

  factory WorkloadNetworkSegmentSubnetResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkSegmentSubnetResponse(
      dhcpRanges: map['dhcpRanges'] == null ? null : ((map['dhcpRanges'] as List).cast<String>()).input(),
      gatewayAddress: map['gatewayAddress'] == null ? null : (map['gatewayAddress'] as String).input(),
    );
  }
}

