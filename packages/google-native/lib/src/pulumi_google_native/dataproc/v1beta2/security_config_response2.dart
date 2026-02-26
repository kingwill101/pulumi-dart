// ignore_for_file: unused_element, unnecessary_cast

import 'kerberos_config_response2.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfigResponse2 {
  /// Optional. Kerberos related configuration.
  final KerberosConfigResponse2 kerberosConfig;

  SecurityConfigResponse2({
    required this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kerberosConfig'] = kerberosConfig.toMap();
    return map;
  }

  factory SecurityConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SecurityConfigResponse2(
      kerberosConfig: KerberosConfigResponse2.fromMap(
          (map['kerberosConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
