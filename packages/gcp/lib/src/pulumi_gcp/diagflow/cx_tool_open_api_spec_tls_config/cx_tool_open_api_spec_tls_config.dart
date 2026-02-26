// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_tool_open_api_spec_tls_config_ca_cert/cx_tool_open_api_spec_tls_config_ca_cert.dart';

class CxToolOpenApiSpecTlsConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS verification.
  /// Structure is documented below.
  final List<CxToolOpenApiSpecTlsConfigCaCert> caCerts;

  CxToolOpenApiSpecTlsConfig({
    required this.caCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCerts'] = Input.encodeList<CxToolOpenApiSpecTlsConfigCaCert,
        Map<String, dynamic>>(caCerts, (value) => value.toMap());
    return map;
  }

  factory CxToolOpenApiSpecTlsConfig.fromMap(Map<String, dynamic> map) {
    return CxToolOpenApiSpecTlsConfig(
      caCerts: Input.decodeList<CxToolOpenApiSpecTlsConfigCaCert>(
          map['caCerts'],
          (value) => CxToolOpenApiSpecTlsConfigCaCert.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
