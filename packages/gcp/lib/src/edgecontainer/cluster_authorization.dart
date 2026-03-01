// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_authorization_admin_users.dart';

class ClusterAuthorization {
  /// User that will be granted the cluster-admin role on the cluster, providing
  /// full access to the cluster. Currently, this is a singular field, but will
  /// be expanded to allow multiple admins in the future.
  /// Structure is documented below.
  final ClusterAuthorizationAdminUsers adminUsers;

  /// Creates a new [ClusterAuthorization].
  /// [adminUsers] User that will be granted the cluster-admin role on the cluster, providing
  ClusterAuthorization({required this.adminUsers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'adminUsers': adminUsers.toMap()};
  }

  factory ClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return ClusterAuthorization(
      adminUsers: ClusterAuthorizationAdminUsers.fromMap(
        (map['adminUsers'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
