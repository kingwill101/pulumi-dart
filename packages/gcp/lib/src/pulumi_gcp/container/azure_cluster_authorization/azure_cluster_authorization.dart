// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../azure_cluster_authorization_admin_group/azure_cluster_authorization_admin_group.dart';
import '../azure_cluster_authorization_admin_user/azure_cluster_authorization_admin_user.dart';

class AzureClusterAuthorization {
  /// Groups of users that can perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the groups. Up to ten admin groups can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final List<AzureClusterAuthorizationAdminGroup>? adminGroups;

  /// Users that can perform operations as a cluster admin. A new ClusterRoleBinding will be created to grant the cluster-admin ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
  final List<AzureClusterAuthorizationAdminUser> adminUsers;

  AzureClusterAuthorization({
    this.adminGroups,
    required this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminGroupsValue = adminGroups;
    if (adminGroupsValue != null) {
      map['adminGroups'] = Input.encodeList<AzureClusterAuthorizationAdminGroup,
          Map<String, dynamic>>(adminGroupsValue, (value) => value.toMap());
    }
    map['adminUsers'] = Input.encodeList<AzureClusterAuthorizationAdminUser,
        Map<String, dynamic>>(adminUsers, (value) => value.toMap());
    return map;
  }

  factory AzureClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return AzureClusterAuthorization(
      adminGroups: map['adminGroups'] == null
          ? null
          : Input.decodeList<AzureClusterAuthorizationAdminGroup>(
              map['adminGroups'],
              (value) => AzureClusterAuthorizationAdminGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
      adminUsers: Input.decodeList<AzureClusterAuthorizationAdminUser>(
          map['adminUsers'],
          (value) => AzureClusterAuthorizationAdminUser.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
