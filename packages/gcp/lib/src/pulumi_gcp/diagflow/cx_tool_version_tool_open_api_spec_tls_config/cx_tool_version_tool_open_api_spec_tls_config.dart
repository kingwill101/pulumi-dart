// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_tool_version_tool_open_api_spec_tls_config_ca_cert/cx_tool_version_tool_open_api_spec_tls_config_ca_cert.dart';

class CxToolVersionToolOpenApiSpecTlsConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS verification.
  /// Structure is documented below.
  final List<CxToolVersionToolOpenApiSpecTlsConfigCaCert> caCerts;

  CxToolVersionToolOpenApiSpecTlsConfig({
    required this.caCerts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCerts'] = Input.encodeList<
        CxToolVersionToolOpenApiSpecTlsConfigCaCert,
        Map<String, dynamic>>(caCerts, (value) => value.toMap());
    return map;
  }

  factory CxToolVersionToolOpenApiSpecTlsConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolVersionToolOpenApiSpecTlsConfig(
      caCerts: Input.decodeList<CxToolVersionToolOpenApiSpecTlsConfigCaCert>(
          map['caCerts'],
          (value) => CxToolVersionToolOpenApiSpecTlsConfigCaCert.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
