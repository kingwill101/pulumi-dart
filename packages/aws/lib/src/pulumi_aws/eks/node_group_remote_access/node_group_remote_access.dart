// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupRemoteAccess {
  /// EC2 Key Pair name that provides access for remote communication with the worker nodes in the EKS Node Group. If you specify this configuration, but do not specify <span pulumi-lang-nodejs="`sourceSecurityGroupIds`" pulumi-lang-dotnet="`SourceSecurityGroupIds`" pulumi-lang-go="`sourceSecurityGroupIds`" pulumi-lang-python="`source_security_group_ids`" pulumi-lang-yaml="`sourceSecurityGroupIds`" pulumi-lang-java="`sourceSecurityGroupIds`">`source_security_group_ids`</span> when you create an EKS Node Group, either port 3389 for Windows, or port 22 for all other operating systems is opened on the worker nodes to the Internet (0.0.0.0/0). For Windows nodes, this will allow you to use RDP, for all others this allows you to SSH into the worker nodes.
  final String? ec2SshKey;

  /// Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes. If you specify <span pulumi-lang-nodejs="`ec2SshKey`" pulumi-lang-dotnet="`Ec2SshKey`" pulumi-lang-go="`ec2SshKey`" pulumi-lang-python="`ec2_ssh_key`" pulumi-lang-yaml="`ec2SshKey`" pulumi-lang-java="`ec2SshKey`">`ec2_ssh_key`</span>, but do not specify this configuration when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0).
  final List<String>? sourceSecurityGroupIds;

  NodeGroupRemoteAccess({
    this.ec2SshKey,
    this.sourceSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ec2SshKeyValue = ec2SshKey;
    if (ec2SshKeyValue != null) {
      map['ec2SshKey'] = ec2SshKeyValue;
    }
    final sourceSecurityGroupIdsValue = sourceSecurityGroupIds;
    if (sourceSecurityGroupIdsValue != null) {
      map['sourceSecurityGroupIds'] = sourceSecurityGroupIdsValue;
    }
    return map;
  }

  factory NodeGroupRemoteAccess.fromMap(Map<String, dynamic> map) {
    return NodeGroupRemoteAccess(
      ec2SshKey: map['ec2SshKey'] == null ? null : map['ec2SshKey'] as String,
      sourceSecurityGroupIds: map['sourceSecurityGroupIds'] == null
          ? null
          : (map['sourceSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
