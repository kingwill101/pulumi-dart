// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_plugin_certificate_authority_response.dart';

/// Istio Service Mesh Certificate Authority (CA) configuration. For now, we only support plugin certificates as described here https://aka.ms/asm-plugin-ca
class IstioCertificateAuthorityResponse {
  /// Plugin certificates information for Service Mesh.
  final pulumi.Input<IstioPluginCertificateAuthorityResponse>? plugin;

  /// Creates a new [IstioCertificateAuthorityResponse].
  /// [plugin] Plugin certificates information for Service Mesh.
  const IstioCertificateAuthorityResponse({
    this.plugin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plugin': ?pulumi.Input.mapOptionalInputValue<IstioPluginCertificateAuthorityResponse, Map<String, dynamic>>(plugin, (value) => value.toMap()),
    };
  }

  factory IstioCertificateAuthorityResponse.fromMap(Map<String, dynamic> map) {
    return IstioCertificateAuthorityResponse(
      plugin: (() { final guardedValue = map['plugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IstioPluginCertificateAuthorityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
