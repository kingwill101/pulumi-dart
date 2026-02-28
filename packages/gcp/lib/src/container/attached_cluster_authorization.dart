// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterAuthorization {
  /// Groups that can perform operations as a cluster admin. A managed
  /// ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole
  /// to the groups. Up to ten admin groups can be provided.
  /// For more info on RBAC, see
  /// https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final List<String>? adminGroups;

  /// Users that can perform operations as a cluster admin. A managed
  /// ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole
  /// to the users. Up to ten admin users can be provided.
  /// For more info on RBAC, see
  /// https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final List<String>? adminUsers;

  /// Creates a new [AttachedClusterAuthorization].
  /// [adminGroups] Groups that can perform operations as a cluster admin. A managed
  /// [adminUsers] Users that can perform operations as a cluster admin. A managed
  AttachedClusterAuthorization({
    this.adminGroups,
    this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminGroupsValue = adminGroups;
    if (adminGroupsValue != null) {
      map['adminGroups'] = adminGroupsValue;
    }
    final adminUsersValue = adminUsers;
    if (adminUsersValue != null) {
      map['adminUsers'] = adminUsersValue;
    }
    return map;
  }

  factory AttachedClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return AttachedClusterAuthorization(
      adminGroups: map['adminGroups'] == null
          ? null
          : (map['adminGroups'] as List).cast<String>(),
      adminUsers: map['adminUsers'] == null
          ? null
          : (map['adminUsers'] as List).cast<String>(),
    );
  }
}
