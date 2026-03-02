// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupNode {
  /// Host name
  final pulumi.Input<String>? hostname;
  /// Login Password
  final pulumi.Input<String>? loginPassword;
  /// Node ID
  final pulumi.Input<String>? nodeId;
  /// VPC ID
  final pulumi.Input<String>? vpcId;
  /// Switch ID
  final pulumi.Input<String>? vswitchId;

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
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      loginPassword: map['loginPassword'] == null ? null : (map['loginPassword']! as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

