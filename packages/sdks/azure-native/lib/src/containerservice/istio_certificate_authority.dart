// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_plugin_certificate_authority.dart';

/// Istio Service Mesh Certificate Authority (CA) configuration. For now, we only support plugin certificates as described here https://aka.ms/asm-plugin-ca
class IstioCertificateAuthority {
  /// Plugin certificates information for Service Mesh.
  final pulumi.Input<IstioPluginCertificateAuthority>? plugin;

  /// Creates a new [IstioCertificateAuthority].
  /// [plugin] Plugin certificates information for Service Mesh.
  IstioCertificateAuthority({
    this.plugin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plugin': ?pulumi.Input.mapOptionalInputValue<IstioPluginCertificateAuthority, Map<String, dynamic>>(plugin, (value) => value.toMap()),
    };
  }

  factory IstioCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return IstioCertificateAuthority(
      plugin: map['plugin'] == null ? null : (IstioPluginCertificateAuthority.fromMap((map['plugin'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

