// ignore_for_file: unused_element, unnecessary_cast

import 'kerberos_config_response_dataproc_v1beta2.dart';

/// Security related configuration, including encryption, Kerberos, etc.
class SecurityConfigResponseDataprocV1beta2 {
  /// Optional. Kerberos related configuration.
  final KerberosConfigResponseDataprocV1beta2 kerberosConfig;

  /// Creates a new [SecurityConfigResponseDataprocV1beta2].
  /// [kerberosConfig] Optional. Kerberos related configuration.
  SecurityConfigResponseDataprocV1beta2({required this.kerberosConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kerberosConfig': kerberosConfig.toMap()};
  }

  factory SecurityConfigResponseDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityConfigResponseDataprocV1beta2(
      kerberosConfig: KerberosConfigResponseDataprocV1beta2.fromMap(
        (map['kerberosConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
