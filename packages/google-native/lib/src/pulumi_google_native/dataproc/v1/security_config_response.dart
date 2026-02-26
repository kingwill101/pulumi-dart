// ignore_for_file: unused_element, unnecessary_cast

import 'identity_config_response.dart';
import 'kerberos_config_response.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfigResponse {
  /// Optional. Identity related configuration, including service account based secure multi-tenancy user mappings.
  final IdentityConfigResponse identityConfig;

  /// Optional. Kerberos related configuration.
  final KerberosConfigResponse kerberosConfig;

  SecurityConfigResponse({
    required this.identityConfig,
    required this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityConfig'] = identityConfig.toMap();
    map['kerberosConfig'] = kerberosConfig.toMap();
    return map;
  }

  factory SecurityConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityConfigResponse(
      identityConfig: IdentityConfigResponse.fromMap(
          (map['identityConfig'] as Map).cast<String, dynamic>()),
      kerberosConfig: KerberosConfigResponse.fromMap(
          (map['kerberosConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
