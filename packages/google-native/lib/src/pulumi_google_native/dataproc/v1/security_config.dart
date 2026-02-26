// ignore_for_file: unused_element, unnecessary_cast

import 'identity_config.dart';
import 'kerberos_config.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfig {
  /// Optional. Identity related configuration, including service account based secure multi-tenancy user mappings.
  final IdentityConfig? identityConfig;

  /// Optional. Kerberos related configuration.
  final KerberosConfig? kerberosConfig;

  SecurityConfig({
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

  factory SecurityConfig.fromMap(Map<String, dynamic> map) {
    return SecurityConfig(
      identityConfig: map['identityConfig'] == null
          ? null
          : IdentityConfig.fromMap(
              (map['identityConfig'] as Map).cast<String, dynamic>()),
      kerberosConfig: map['kerberosConfig'] == null
          ? null
          : KerberosConfig.fromMap(
              (map['kerberosConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
