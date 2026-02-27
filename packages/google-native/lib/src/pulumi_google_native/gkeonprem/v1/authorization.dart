// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user.dart';

/// Authorization defines the On-Prem cluster authorization configuration to bootstrap onto the admin cluster.
class Authorization {
  /// For VMware and bare metal user clusters, users will be granted the cluster-admin role on the cluster, which provides full administrative access to the cluster. For bare metal admin clusters, users will be granted the cluster-view role, which limits users to read-only access.
  final List<ClusterUser>? adminUsers;

  Authorization({
    this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminUsersValue = adminUsers;
    if (adminUsersValue != null) {
      map['adminUsers'] =
          pulumi.Input.encodeList<ClusterUser, Map<String, dynamic>>(
              adminUsersValue, (value) => value.toMap());
    }
    return map;
  }

  factory Authorization.fromMap(Map<String, dynamic> map) {
    return Authorization(
      adminUsers: map['adminUsers'] == null
          ? null
          : pulumi.Input.decodeList<ClusterUser>(
              map['adminUsers'],
              (value) =>
                  ClusterUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
