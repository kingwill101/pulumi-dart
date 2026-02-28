// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_authorization_admin_user.dart';

class VMwareClusterAuthorization {
  /// Users that will be granted the cluster-admin role on the cluster, providing
  /// full access to the cluster.
  /// Structure is documented below.
  final List<VMwareClusterAuthorizationAdminUser>? adminUsers;

  /// Creates a new [VMwareClusterAuthorization].
  /// [adminUsers] Users that will be granted the cluster-admin role on the cluster, providing
  VMwareClusterAuthorization({
    this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminUsersValue = adminUsers;
    if (adminUsersValue != null) {
      map['adminUsers'] = pulumi.Input.encodeList<
          VMwareClusterAuthorizationAdminUser,
          Map<String, dynamic>>(adminUsersValue, (value) => value.toMap());
    }
    return map;
  }

  factory VMwareClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return VMwareClusterAuthorization(
      adminUsers: map['adminUsers'] == null
          ? null
          : pulumi.Input.decodeList<VMwareClusterAuthorizationAdminUser>(
              map['adminUsers'],
              (value) => VMwareClusterAuthorizationAdminUser.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
