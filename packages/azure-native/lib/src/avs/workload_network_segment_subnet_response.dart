// ignore_for_file: unused_element, unnecessary_cast


/// Subnet configuration for segment
class WorkloadNetworkSegmentSubnetResponse {
  /// DHCP Range assigned for subnet.
  final List<String>? dhcpRanges;
  /// Gateway address.
  final String? gatewayAddress;

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
      dhcpRanges: map['dhcpRanges'] == null ? null : (map['dhcpRanges'] as List).cast<String>(),
      gatewayAddress: map['gatewayAddress'] == null ? null : map['gatewayAddress'] as String,
    );
  }
}

