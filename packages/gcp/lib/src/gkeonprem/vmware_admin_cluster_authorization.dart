// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_authorization_viewer_user.dart';

class VmwareAdminClusterAuthorization {
  /// Users that will be granted the cluster-admin role on the cluster, providing
  /// full access to the cluster.
  /// Structure is documented below.
  final List<VmwareAdminClusterAuthorizationViewerUser>? viewerUsers;

  /// Creates a new [VmwareAdminClusterAuthorization].
  /// [viewerUsers] Users that will be granted the cluster-admin role on the cluster, providing
  VmwareAdminClusterAuthorization({
    this.viewerUsers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final viewerUsersValue = viewerUsers;
    if (viewerUsersValue != null) {
      map['viewerUsers'] = pulumi.Input.encodeList<
          VmwareAdminClusterAuthorizationViewerUser,
          Map<String, dynamic>>(viewerUsersValue, (value) => value.toMap());
    }
    return map;
  }

  factory VmwareAdminClusterAuthorization.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAuthorization(
      viewerUsers: map['viewerUsers'] == null
          ? null
          : pulumi.Input.decodeList<VmwareAdminClusterAuthorizationViewerUser>(
              map['viewerUsers'],
              (value) => VmwareAdminClusterAuthorizationViewerUser.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
