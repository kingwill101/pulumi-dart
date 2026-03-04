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
      hostname: (() {
        final guardedValue = map['hostname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loginPassword: (() {
        final guardedValue = map['loginPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeId: (() {
        final guardedValue = map['nodeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
