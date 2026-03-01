// ignore_for_file: unused_element, unnecessary_cast


class GetNodebalancerVpcsVpcConfig {
  /// The ID of the VPC configuration.
  final int id;
  /// A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  final String ipv4Range;
  /// The ID of the NodeBalancer to list VPC configurations for.
  ///
  /// * `filter` - (Optional) A set of filters used to select VPC configurations that meet certain requirements.
  final int nodebalancerId;
  /// The ID of this configuration's VPC subnet.
  final int subnetId;
  /// The ID of this configuration's VPC.
  final int vpcId;

  /// Creates a new [GetNodebalancerVpcsVpcConfig].
  /// [id] The ID of the VPC configuration.
  /// [ipv4Range] A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  /// [nodebalancerId] The ID of the NodeBalancer to list VPC configurations for.
  /// [subnetId] The ID of this configuration's VPC subnet.
  /// [vpcId] The ID of this configuration's VPC.
  GetNodebalancerVpcsVpcConfig({
    required this.id,
    required this.ipv4Range,
    required this.nodebalancerId,
    required this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipv4Range': ipv4Range,
      'nodebalancerId': nodebalancerId,
      'subnetId': subnetId,
      'vpcId': vpcId,
    };
  }

  factory GetNodebalancerVpcsVpcConfig.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerVpcsVpcConfig(
      id: map['id'] as int,
      ipv4Range: map['ipv4Range'] as String,
      nodebalancerId: map['nodebalancerId'] as int,
      subnetId: map['subnetId'] as int,
      vpcId: map['vpcId'] as int,
    );
  }
}

