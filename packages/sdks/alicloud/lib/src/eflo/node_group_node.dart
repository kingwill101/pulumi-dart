// ignore_for_file: unused_element, unnecessary_cast


class NodeGroupNode {
  /// Host name
  final String? hostname;
  /// Login Password
  final String? loginPassword;
  /// Node ID
  final String? nodeId;
  /// VPC ID
  final String? vpcId;
  /// Switch ID
  final String? vswitchId;

  /// Creates a new [NodeGroupNode].
  /// [hostname] Host name
  /// [loginPassword] Login Password
  /// [nodeId] Node ID
  /// [vpcId] VPC ID
  /// [vswitchId] Switch ID
  NodeGroupNode({
    this.hostname,
    this.loginPassword,
    this.nodeId,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'loginPassword': ?loginPassword,
      'nodeId': ?nodeId,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory NodeGroupNode.fromMap(Map<String, dynamic> map) {
    return NodeGroupNode(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      loginPassword: map['loginPassword'] == null ? null : map['loginPassword'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

