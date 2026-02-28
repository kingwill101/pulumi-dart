// ignore_for_file: unused_element, unnecessary_cast

class VpcEndpointSubnetConfiguration {
  /// The IPv4 address to assign to the endpoint network interface in the subnet. You must provide an IPv4 address if the VPC endpoint supports IPv4.
  final String? ipv4;

  /// The IPv6 address to assign to the endpoint network interface in the subnet. You must provide an IPv6 address if the VPC endpoint supports IPv6.
  final String? ipv6;

  /// The ID of the subnet. Must have a corresponding subnet in the `subnet_ids` argument.
  final String? subnetId;

  /// Creates a new [VpcEndpointSubnetConfiguration].
  /// [ipv4] The IPv4 address to assign to the endpoint network interface in the subnet. You must provide an IPv4 address if the VPC endpoint supports IPv4.
  /// [ipv6] The IPv6 address to assign to the endpoint network interface in the subnet. You must provide an IPv6 address if the VPC endpoint supports IPv6.
  /// [subnetId] The ID of the subnet. Must have a corresponding subnet in the `subnet_ids` argument.
  VpcEndpointSubnetConfiguration({
    this.ipv4,
    this.ipv6,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipv4Value = ipv4;
    if (ipv4Value != null) {
      map['ipv4'] = ipv4Value;
    }
    final ipv6Value = ipv6;
    if (ipv6Value != null) {
      map['ipv6'] = ipv6Value;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    return map;
  }

  factory VpcEndpointSubnetConfiguration.fromMap(Map<String, dynamic> map) {
    return VpcEndpointSubnetConfiguration(
      ipv4: map['ipv4'] == null ? null : map['ipv4'] as String,
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}
