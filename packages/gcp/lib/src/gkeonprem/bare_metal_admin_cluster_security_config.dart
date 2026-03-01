// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_cluster_security_config_authorization.dart';

class BareMetalAdminClusterSecurityConfig {
  /// Configures user access to the Bare Metal User cluster.
  /// Structure is documented below.
  final BareMetalAdminClusterSecurityConfigAuthorization? authorization;

  /// Creates a new [BareMetalAdminClusterSecurityConfig].
  /// [authorization] Configures user access to the Bare Metal User cluster.
  BareMetalAdminClusterSecurityConfig({this.authorization});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?authorization == null ? null : authorization!.toMap(),
    };
  }

  factory BareMetalAdminClusterSecurityConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterSecurityConfig(
      authorization: map['authorization'] == null
          ? null
          : BareMetalAdminClusterSecurityConfigAuthorization.fromMap(
              (map['authorization'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
