// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool_open_api_spec_tls_config_ca_cert.dart';

class CxToolVersionToolOpenApiSpecTlsConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS verification.
  /// Structure is documented below.
  final List<CxToolVersionToolOpenApiSpecTlsConfigCaCert> caCerts;

  /// Creates a new [CxToolVersionToolOpenApiSpecTlsConfig].
  /// [caCerts] Specifies a list of allowed custom CA certificates for HTTPS verification.
  CxToolVersionToolOpenApiSpecTlsConfig({required this.caCerts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts':
          pulumi.Input.encodeList<
            CxToolVersionToolOpenApiSpecTlsConfigCaCert,
            Map<String, dynamic>
          >(caCerts, (value) => value.toMap()),
    };
  }

  factory CxToolVersionToolOpenApiSpecTlsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolVersionToolOpenApiSpecTlsConfig(
      caCerts:
          pulumi.Input.decodeList<CxToolVersionToolOpenApiSpecTlsConfigCaCert>(
            map['caCerts'],
            (value) => CxToolVersionToolOpenApiSpecTlsConfigCaCert.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
