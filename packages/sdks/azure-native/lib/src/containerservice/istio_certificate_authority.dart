// ignore_for_file: unused_element, unnecessary_cast

import 'istio_plugin_certificate_authority.dart';

/// Istio Service Mesh Certificate Authority (CA) configuration. For now, we only support plugin certificates as described here https://aka.ms/asm-plugin-ca
class IstioCertificateAuthority {
  /// Plugin certificates information for Service Mesh.
  final IstioPluginCertificateAuthority? plugin;

  /// Creates a new [IstioCertificateAuthority].
  /// [plugin] Plugin certificates information for Service Mesh.
  IstioCertificateAuthority({
    this.plugin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plugin': ?plugin == null ? null : plugin!.toMap(),
    };
  }

  factory IstioCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return IstioCertificateAuthority(
      plugin: map['plugin'] == null ? null : IstioPluginCertificateAuthority.fromMap((map['plugin'] as Map).cast<String, dynamic>()),
    );
  }
}

