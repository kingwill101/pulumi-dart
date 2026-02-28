// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAuthenticatorGroupsConfig {
  /// The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com.
  final String securityGroup;

  /// Creates a new [GetClusterAuthenticatorGroupsConfig].
  /// [securityGroup] The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com.
  GetClusterAuthenticatorGroupsConfig({
    required this.securityGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroup'] = securityGroup;
    return map;
  }

  factory GetClusterAuthenticatorGroupsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAuthenticatorGroupsConfig(
      securityGroup: map['securityGroup'] as String,
    );
  }
}
