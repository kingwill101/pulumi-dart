// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_cluster_config_security_config_identity_config.dart';
import 'cluster_cluster_config_security_config_kerberos_config.dart';

class ClusterClusterConfigSecurityConfig {
  /// Identity Configuration. At least one of `identity_config`
  /// or `kerberos_config` is required.
  final ClusterClusterConfigSecurityConfigIdentityConfig? identityConfig;

  /// Kerberos Configuration. At least one of `identity_config`
  /// or `kerberos_config` is required.
  final ClusterClusterConfigSecurityConfigKerberosConfig? kerberosConfig;

  /// Creates a new [ClusterClusterConfigSecurityConfig].
  /// [identityConfig] Identity Configuration. At least one of `identity_config`
  /// [kerberosConfig] Kerberos Configuration. At least one of `identity_config`
  ClusterClusterConfigSecurityConfig({
    this.identityConfig,
    this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identityConfigValue = identityConfig;
    if (identityConfigValue != null) {
      map['identityConfig'] = identityConfigValue.toMap();
    }
    final kerberosConfigValue = kerberosConfig;
    if (kerberosConfigValue != null) {
      map['kerberosConfig'] = kerberosConfigValue.toMap();
    }
    return map;
  }

  factory ClusterClusterConfigSecurityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigSecurityConfig(
      identityConfig: map['identityConfig'] == null
          ? null
          : ClusterClusterConfigSecurityConfigIdentityConfig.fromMap(
              (map['identityConfig'] as Map).cast<String, dynamic>()),
      kerberosConfig: map['kerberosConfig'] == null
          ? null
          : ClusterClusterConfigSecurityConfigKerberosConfig.fromMap(
              (map['kerberosConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
