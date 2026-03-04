// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupRemoteAccess {
  /// EC2 Key Pair name that provides access for remote communication with the worker nodes in the EKS Node Group. If you specify this configuration, but do not specify `source_security_group_ids` when you create an EKS Node Group, either port 3389 for Windows, or port 22 for all other operating systems is opened on the worker nodes to the Internet (0.0.0.0/0). For Windows nodes, this will allow you to use RDP, for all others this allows you to SSH into the worker nodes.
  final pulumi.Input<String>? ec2SshKey;

  /// Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes. If you specify `ec2_ssh_key`, but do not specify this configuration when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0).
  final pulumi.Input<List<String>>? sourceSecurityGroupIds;

  /// Creates a new [NodeGroupRemoteAccess].
  /// [ec2SshKey] EC2 Key Pair name that provides access for remote communication with the worker nodes in the EKS Node Group. If you specify this configuration, but do not specify `source_security_group_ids` when you create an EKS Node Group, either port 3389 for Windows, or port 22 for all other operating systems is opened on the worker nodes to the Internet (0.0.0.0/0). For Windows nodes, this will allow you to use RDP, for all others this allows you to SSH into the worker nodes.
  /// [sourceSecurityGroupIds] Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes. If you specify `ec2_ssh_key`, but do not specify this configuration when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0).
  NodeGroupRemoteAccess({this.ec2SshKey, this.sourceSecurityGroupIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ec2SshKey': ?ec2SshKey,
      'sourceSecurityGroupIds': ?sourceSecurityGroupIds,
    };
  }

  factory NodeGroupRemoteAccess.fromMap(Map<String, dynamic> map) {
    return NodeGroupRemoteAccess(
      ec2SshKey: (() {
        final guardedValue = map['ec2SshKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceSecurityGroupIds: (() {
        final guardedValue = map['sourceSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
