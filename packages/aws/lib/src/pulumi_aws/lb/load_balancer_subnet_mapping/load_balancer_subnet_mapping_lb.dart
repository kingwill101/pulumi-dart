// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerSubnetMappingLb {
  /// Allocation ID of the Elastic IP address for an internet-facing load balancer.
  final String? allocationId;

  /// IPv6 address. You associate IPv6 CIDR blocks with your VPC and choose the subnets where you launch both internet-facing and internal Application Load Balancers or Network Load Balancers.
  final String? ipv6Address;
  final String? outpostId;

  /// Private IPv4 address for an internal load balancer.
  final String? privateIpv4Address;

  /// ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone.
  final String subnetId;

  LoadBalancerSubnetMappingLb({
    this.allocationId,
    this.ipv6Address,
    this.outpostId,
    this.privateIpv4Address,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocationIdValue = allocationId;
    if (allocationIdValue != null) {
      map['allocationId'] = allocationIdValue;
    }
    final ipv6AddressValue = ipv6Address;
    if (ipv6AddressValue != null) {
      map['ipv6Address'] = ipv6AddressValue;
    }
    final outpostIdValue = outpostId;
    if (outpostIdValue != null) {
      map['outpostId'] = outpostIdValue;
    }
    final privateIpv4AddressValue = privateIpv4Address;
    if (privateIpv4AddressValue != null) {
      map['privateIpv4Address'] = privateIpv4AddressValue;
    }
    map['subnetId'] = subnetId;
    return map;
  }

  factory LoadBalancerSubnetMappingLb.fromMap(Map<String, dynamic> map) {
    return LoadBalancerSubnetMappingLb(
      allocationId:
          map['allocationId'] == null ? null : map['allocationId'] as String,
      ipv6Address:
          map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      outpostId: map['outpostId'] == null ? null : map['outpostId'] as String,
      privateIpv4Address: map['privateIpv4Address'] == null
          ? null
          : map['privateIpv4Address'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
