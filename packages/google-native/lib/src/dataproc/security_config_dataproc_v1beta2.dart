// ignore_for_file: unused_element, unnecessary_cast

import 'kerberos_config_dataproc_v1beta2.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfigDataprocV1beta2 {
  /// Optional. Kerberos related configuration.
  final KerberosConfigDataprocV1beta2? kerberosConfig;

  /// Creates a new [SecurityConfigDataprocV1beta2].
  /// [kerberosConfig] Optional. Kerberos related configuration.
  SecurityConfigDataprocV1beta2({
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

  factory SecurityConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return SecurityConfigDataprocV1beta2(
      kerberosConfig: map['kerberosConfig'] == null
          ? null
          : KerberosConfigDataprocV1beta2.fromMap(
              (map['kerberosConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
