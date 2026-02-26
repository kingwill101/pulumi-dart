// ignore_for_file: unused_element, unnecessary_cast

class ClusterAuthenticatorGroupsConfig {
  /// The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format `gke-security-groups@yourdomain.com`.
  final String securityGroup;

  ClusterAuthenticatorGroupsConfig({
    required this.securityGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroup'] = securityGroup;
    return map;
  }

  factory ClusterAuthenticatorGroupsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAuthenticatorGroupsConfig(
      securityGroup: map['securityGroup'] as String,
    );
  }
}
