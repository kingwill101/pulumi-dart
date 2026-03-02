// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerSubnetMapping {
  /// Allocation ID of the Elastic IP address for an internet-facing load balancer.
  final pulumi.Input<String>? allocationId;
  /// IPv6 address. You associate IPv6 CIDR blocks with your VPC and choose the subnets where you launch both internet-facing and internal Application Load Balancers or Network Load Balancers.
  final pulumi.Input<String>? ipv6Address;
  final pulumi.Input<String>? outpostId;
  /// Private IPv4 address for an internal load balancer.
  final pulumi.Input<String>? privateIpv4Address;
  /// ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone.
  final pulumi.Input<String> subnetId;

  /// Creates a new [LoadBalancerSubnetMapping].
  /// [allocationId] Allocation ID of the Elastic IP address for an internet-facing load balancer.
  /// [ipv6Address] IPv6 address. You associate IPv6 CIDR blocks with your VPC and choose the subnets where you launch both internet-facing and internal Application Load Balancers or Network Load Balancers.
  /// [outpostId] Optional.
  /// [privateIpv4Address] Private IPv4 address for an internal load balancer.
  /// [subnetId] ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone.
  LoadBalancerSubnetMapping({
    this.allocationId,
    this.ipv6Address,
    this.outpostId,
    this.privateIpv4Address,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'ipv6Address': ?ipv6Address,
      'outpostId': ?outpostId,
      'privateIpv4Address': ?privateIpv4Address,
      'subnetId': subnetId,
    };
  }

  factory LoadBalancerSubnetMapping.fromMap(Map<String, dynamic> map) {
    return LoadBalancerSubnetMapping(
      allocationId: map['allocationId'] == null ? null : ((map['allocationId'] as String).input()).input(),
      ipv6Address: map['ipv6Address'] == null ? null : ((map['ipv6Address'] as String).input()).input(),
      outpostId: map['outpostId'] == null ? null : ((map['outpostId'] as String).input()).input(),
      privateIpv4Address: map['privateIpv4Address'] == null ? null : ((map['privateIpv4Address'] as String).input()).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

