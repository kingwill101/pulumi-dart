// ignore_for_file: unused_element, unnecessary_cast


class NodeBalancerVpc {
  /// (Optional) A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  final String? ipv4Range;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only) Enables the use of a larger ipv4_range subnet for multiple NodeBalancers within the same VPC by allocating smaller /30 subnets for each NodeBalancer's backends.
  final bool? ipv4RangeAutoAssign;
  /// (Required) The ID of a subnet to assign to this NodeBalancer.
  final int subnetId;

  /// Creates a new [NodeBalancerVpc].
  /// [ipv4Range] (Optional) A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  /// [ipv4RangeAutoAssign] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [subnetId] (Required) The ID of a subnet to assign to this NodeBalancer.
  NodeBalancerVpc({
    this.ipv4Range,
    this.ipv4RangeAutoAssign,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Range': ?ipv4Range,
      'ipv4RangeAutoAssign': ?ipv4RangeAutoAssign,
      'subnetId': subnetId,
    };
  }

  factory NodeBalancerVpc.fromMap(Map<String, dynamic> map) {
    return NodeBalancerVpc(
      ipv4Range: map['ipv4Range'] == null ? null : map['ipv4Range'] as String,
      ipv4RangeAutoAssign: map['ipv4RangeAutoAssign'] == null ? null : map['ipv4RangeAutoAssign'] as bool,
      subnetId: map['subnetId'] as int,
    );
  }
}

