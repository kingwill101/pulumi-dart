// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNodeBalancerNode.
class GetNodeBalancerNodeResult {
  /// The private IP Address where this backend can be reached.
  final String address;
  final int configId;
  final int id;
  /// The label of the Linode NodeBalancer Node. This is for display purposes only.
  final String label;
  /// The mode this NodeBalancer should use when sending traffic to this backend. If set to `accept` this backend is accepting traffic. If set to `reject` this backend will not receive traffic. If set to `drain` this backend will not receive new traffic, but connections already pinned to it will continue to be routed to it. (`accept`, `reject`, `drain`, `backup`)
  final String mode;
  final int nodebalancerId;
  /// The current status of this node, based on the configured checks of its NodeBalancer Config. (`unknown`, `UP`, `DOWN`).
  final String status;
  /// The ID of the related VPC subnet. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  final int subnetId;
  /// The ID of the related NodeBalancer-VPC configuration. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  final int vpcConfigId;
  /// Used when picking a backend to serve a request and is not pinned to a single backend yet. Nodes with a higher weight will receive more traffic. (1-255).
  final int weight;

  /// Creates a new [GetNodeBalancerNodeResult].
  /// [address] The private IP Address where this backend can be reached.
  /// [configId] Required.
  /// [id] Required.
  /// [label] The label of the Linode NodeBalancer Node. This is for display purposes only.
  /// [mode] The mode this NodeBalancer should use when sending traffic to this backend. If set to `accept` this backend is accepting traffic. If set to `reject` this backend will not receive traffic. If set to `drain` this backend will not receive new traffic, but connections already pinned to it will continue to be routed to it. (`accept`, `reject`, `drain`, `backup`)
  /// [nodebalancerId] Required.
  /// [status] The current status of this node, based on the configured checks of its NodeBalancer Config. (`unknown`, `UP`, `DOWN`).
  /// [subnetId] The ID of the related VPC subnet. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  /// [vpcConfigId] The ID of the related NodeBalancer-VPC configuration. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  /// [weight] Used when picking a backend to serve a request and is not pinned to a single backend yet. Nodes with a higher weight will receive more traffic. (1-255).
  GetNodeBalancerNodeResult({
    required this.address,
    required this.configId,
    required this.id,
    required this.label,
    required this.mode,
    required this.nodebalancerId,
    required this.status,
    required this.subnetId,
    required this.vpcConfigId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'configId': configId,
      'id': id,
      'label': label,
      'mode': mode,
      'nodebalancerId': nodebalancerId,
      'status': status,
      'subnetId': subnetId,
      'vpcConfigId': vpcConfigId,
      'weight': weight,
    };
  }

  factory GetNodeBalancerNodeResult.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerNodeResult(
      address: map['address'] as String,
      configId: map['configId'] as int,
      id: map['id'] as int,
      label: map['label'] as String,
      mode: map['mode'] as String,
      nodebalancerId: map['nodebalancerId'] as int,
      status: map['status'] as String,
      subnetId: map['subnetId'] as int,
      vpcConfigId: map['vpcConfigId'] as int,
      weight: map['weight'] as int,
    );
  }
}

