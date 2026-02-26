// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_cluster_config_security_config_identity_config/cluster_cluster_config_security_config_identity_config.dart';
import '../cluster_cluster_config_security_config_kerberos_config/cluster_cluster_config_security_config_kerberos_config.dart';

class ClusterClusterConfigSecurityConfig {
  /// Identity Configuration. At least one of <span pulumi-lang-nodejs="`identityConfig`" pulumi-lang-dotnet="`IdentityConfig`" pulumi-lang-go="`identityConfig`" pulumi-lang-python="`identity_config`" pulumi-lang-yaml="`identityConfig`" pulumi-lang-java="`identityConfig`">`identity_config`</span>
  /// or <span pulumi-lang-nodejs="`kerberosConfig`" pulumi-lang-dotnet="`KerberosConfig`" pulumi-lang-go="`kerberosConfig`" pulumi-lang-python="`kerberos_config`" pulumi-lang-yaml="`kerberosConfig`" pulumi-lang-java="`kerberosConfig`">`kerberos_config`</span> is required.
  final ClusterClusterConfigSecurityConfigIdentityConfig? identityConfig;

  /// Kerberos Configuration. At least one of <span pulumi-lang-nodejs="`identityConfig`" pulumi-lang-dotnet="`IdentityConfig`" pulumi-lang-go="`identityConfig`" pulumi-lang-python="`identity_config`" pulumi-lang-yaml="`identityConfig`" pulumi-lang-java="`identityConfig`">`identity_config`</span>
  /// or <span pulumi-lang-nodejs="`kerberosConfig`" pulumi-lang-dotnet="`KerberosConfig`" pulumi-lang-go="`kerberosConfig`" pulumi-lang-python="`kerberos_config`" pulumi-lang-yaml="`kerberosConfig`" pulumi-lang-java="`kerberosConfig`">`kerberos_config`</span> is required.
  final ClusterClusterConfigSecurityConfigKerberosConfig? kerberosConfig;

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
