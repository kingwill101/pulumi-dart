// ignore_for_file: unused_element, unnecessary_cast

class GetNodeGroupRemoteAccess {
  /// EC2 Key Pair name that provides access for SSH communication with the worker nodes in the EKS Node Group.
  final String ec2SshKey;

  /// Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes.
  final List<String> sourceSecurityGroupIds;

  GetNodeGroupRemoteAccess({
    required this.ec2SshKey,
    required this.sourceSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ec2SshKey'] = ec2SshKey;
    map['sourceSecurityGroupIds'] = sourceSecurityGroupIds;
    return map;
  }

  factory GetNodeGroupRemoteAccess.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupRemoteAccess(
      ec2SshKey: map['ec2SshKey'] as String,
      sourceSecurityGroupIds:
          (map['sourceSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
