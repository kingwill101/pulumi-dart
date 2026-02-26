// ignore_for_file: unused_element, unnecessary_cast

import 'kerberos_config2.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfig2 {
  /// Optional. Kerberos related configuration.
  final KerberosConfig2? kerberosConfig;

  SecurityConfig2({
    this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kerberosConfigValue = kerberosConfig;
    if (kerberosConfigValue != null) {
      map['kerberosConfig'] = kerberosConfigValue.toMap();
    }
    return map;
  }

  factory SecurityConfig2.fromMap(Map<String, dynamic> map) {
    return SecurityConfig2(
      kerberosConfig: map['kerberosConfig'] == null
          ? null
          : KerberosConfig2.fromMap(
              (map['kerberosConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
