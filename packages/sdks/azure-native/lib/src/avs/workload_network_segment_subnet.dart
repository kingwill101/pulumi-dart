// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet configuration for segment
class WorkloadNetworkSegmentSubnet {
  /// DHCP Range assigned for subnet.
  final pulumi.Input<List<String>>? dhcpRanges;
  /// Gateway address.
  final pulumi.Input<String>? gatewayAddress;

  /// Creates a new [WorkloadNetworkSegmentSubnet].
  /// [dhcpRanges] DHCP Range assigned for subnet.
  /// [gatewayAddress] Gateway address.
  WorkloadNetworkSegmentSubnet({
    this.dhcpRanges,
    this.gatewayAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpRanges': ?dhcpRanges,
      'gatewayAddress': ?gatewayAddress,
    };
  }

  factory WorkloadNetworkSegmentSubnet.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkSegmentSubnet(
      dhcpRanges: (() { final guardedValue = map['dhcpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gatewayAddress: (() { final guardedValue = map['gatewayAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

