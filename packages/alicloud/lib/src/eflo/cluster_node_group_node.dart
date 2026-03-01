// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupNode {
  /// Host name
  final String? hostname;
  /// Login Password
  final String? loginPassword;
  final String? nodeId;
  final String? vpcId;
  final String? vswitchId;

  /// Creates a new [ClusterNodeGroupNode].
  /// [hostname] Host name
  /// [loginPassword] Login Password
  /// [nodeId] Optional.
  /// [vpcId] Optional.
  /// [vswitchId] Optional.
  ClusterNodeGroupNode({
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

  factory ClusterNodeGroupNode.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupNode(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      loginPassword: map['loginPassword'] == null ? null : map['loginPassword'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

