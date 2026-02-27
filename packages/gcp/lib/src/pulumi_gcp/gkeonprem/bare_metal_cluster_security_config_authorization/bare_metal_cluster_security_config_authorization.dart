// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bare_metal_cluster_security_config_authorization_admin_user/bare_metal_cluster_security_config_authorization_admin_user.dart';

class BareMetalClusterSecurityConfigAuthorization {
  /// Users that will be granted the cluster-admin role on the cluster, providing full access to the cluster.
  /// Structure is documented below.
  final List<BareMetalClusterSecurityConfigAuthorizationAdminUser> adminUsers;

  BareMetalClusterSecurityConfigAuthorization({
    required this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminUsers'] = pulumi.Input.encodeList<
        BareMetalClusterSecurityConfigAuthorizationAdminUser,
        Map<String, dynamic>>(adminUsers, (value) => value.toMap());
    return map;
  }

  factory BareMetalClusterSecurityConfigAuthorization.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterSecurityConfigAuthorization(
      adminUsers: pulumi.Input.decodeList<
              BareMetalClusterSecurityConfigAuthorizationAdminUser>(
          map['adminUsers'],
          (value) =>
              BareMetalClusterSecurityConfigAuthorizationAdminUser.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
