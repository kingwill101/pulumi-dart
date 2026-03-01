// ignore_for_file: unused_element, unnecessary_cast


/// Subnet configuration for segment
class WorkloadNetworkSegmentSubnet {
  /// DHCP Range assigned for subnet.
  final List<String>? dhcpRanges;
  /// Gateway address.
  final String? gatewayAddress;

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
      dhcpRanges: map['dhcpRanges'] == null ? null : (map['dhcpRanges'] as List).cast<String>(),
      gatewayAddress: map['gatewayAddress'] == null ? null : map['gatewayAddress'] as String,
    );
  }
}

