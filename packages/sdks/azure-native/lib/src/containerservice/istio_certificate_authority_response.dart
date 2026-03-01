// ignore_for_file: unused_element, unnecessary_cast

import 'istio_plugin_certificate_authority_response.dart';

/// Istio Service Mesh Certificate Authority (CA) configuration. For now, we only support plugin certificates as described here https://aka.ms/asm-plugin-ca
class IstioCertificateAuthorityResponse {
  /// Plugin certificates information for Service Mesh.
  final IstioPluginCertificateAuthorityResponse? plugin;

  /// Creates a new [IstioCertificateAuthorityResponse].
  /// [plugin] Plugin certificates information for Service Mesh.
  IstioCertificateAuthorityResponse({
    this.plugin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plugin': ?plugin == null ? null : plugin!.toMap(),
    };
  }

  factory IstioCertificateAuthorityResponse.fromMap(Map<String, dynamic> map) {
    return IstioCertificateAuthorityResponse(
      plugin: map['plugin'] == null ? null : IstioPluginCertificateAuthorityResponse.fromMap((map['plugin'] as Map).cast<String, dynamic>()),
    );
  }
}

