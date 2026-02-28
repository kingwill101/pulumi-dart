// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_open_api_tool_tls_config_ca_cert.dart';

class ToolOpenApiToolTlsConfig {
  /// (Output)
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final List<ToolOpenApiToolTlsConfigCaCert>? caCerts;

  /// Creates a new [ToolOpenApiToolTlsConfig].
  /// [caCerts] (Output)
  ToolOpenApiToolTlsConfig({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': ?caCerts == null ? null : pulumi.Input.encodeList<ToolOpenApiToolTlsConfigCaCert, Map<String, dynamic>>(caCerts!, (value) => value.toMap()),
    };
  }

  factory ToolOpenApiToolTlsConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolTlsConfig(
      caCerts: map['caCerts'] == null ? null : pulumi.Input.decodeList<ToolOpenApiToolTlsConfigCaCert>(map['caCerts'], (value) => ToolOpenApiToolTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

