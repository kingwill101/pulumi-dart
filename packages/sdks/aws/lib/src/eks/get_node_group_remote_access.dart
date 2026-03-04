// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeGroupRemoteAccess {
  /// EC2 Key Pair name that provides access for SSH communication with the worker nodes in the EKS Node Group.
  final pulumi.Input<String> ec2SshKey;

  /// Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes.
  final pulumi.Input<List<String>> sourceSecurityGroupIds;

  /// Creates a new [GetNodeGroupRemoteAccess].
  /// [ec2SshKey] EC2 Key Pair name that provides access for SSH communication with the worker nodes in the EKS Node Group.
  /// [sourceSecurityGroupIds] Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes.
  GetNodeGroupRemoteAccess({
    required this.ec2SshKey,
    required this.sourceSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ec2SshKey': ec2SshKey,
      'sourceSecurityGroupIds': sourceSecurityGroupIds,
    };
  }

  factory GetNodeGroupRemoteAccess.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupRemoteAccess(
      ec2SshKey: pulumi.Input.fromValue(map['ec2SshKey'] as String),
      sourceSecurityGroupIds: pulumi.Input.fromValue(
        (map['sourceSecurityGroupIds'] as List).cast<String>(),
      ),
    );
  }
}
