// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_cluster_security_config_authorization.dart';

class BareMetalClusterSecurityConfig {
  /// Configures user access to the Bare Metal User cluster.
  /// Structure is documented below.
  final BareMetalClusterSecurityConfigAuthorization? authorization;

  /// Creates a new [BareMetalClusterSecurityConfig].
  /// [authorization] Configures user access to the Bare Metal User cluster.
  BareMetalClusterSecurityConfig({this.authorization});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?authorization == null ? null : authorization!.toMap(),
    };
  }

  factory BareMetalClusterSecurityConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterSecurityConfig(
      authorization: map['authorization'] == null
          ? null
          : BareMetalClusterSecurityConfigAuthorization.fromMap(
              (map['authorization'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
