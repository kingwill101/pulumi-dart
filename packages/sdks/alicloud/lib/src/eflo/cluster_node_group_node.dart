// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupNode {
  /// Host name
  final pulumi.Input<String>? hostname;
  /// Login Password
  final pulumi.Input<String>? loginPassword;
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<String>? vswitchId;

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
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      loginPassword: map['loginPassword'] == null ? null : (map['loginPassword'] as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

