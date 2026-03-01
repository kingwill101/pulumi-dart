// ignore_for_file: unused_element, unnecessary_cast

import 'istio_certificate_authority.dart';
import 'istio_components.dart';

/// Istio service mesh configuration.
class IstioServiceMesh {
  /// Istio Service Mesh Certificate Authority (CA) configuration. For now, we only support plugin certificates as described here https://aka.ms/asm-plugin-ca
  final IstioCertificateAuthority? certificateAuthority;
  /// Istio components configuration.
  final IstioComponents? components;
  /// The list of revisions of the Istio control plane. When an upgrade is not in progress, this holds one value. When canary upgrade is in progress, this can only hold two consecutive values. For more information, see: https://learn.microsoft.com/en-us/azure/aks/istio-upgrade
  final List<String>? revisions;

  /// Creates a new [IstioServiceMesh].
  /// [certificateAuthority] Istio Service Mesh Certificate Authority (CA) configuration. For now, we only support plugin certificates as described here https://aka.ms/asm-plugin-ca
  /// [components] Istio components configuration.
  /// [revisions] The list of revisions of the Istio control plane. When an upgrade is not in progress, this holds one value. When canary upgrade is in progress, this can only hold two consecutive values. For more information, see: https://learn.microsoft.com/en-us/azure/aks/istio-upgrade
  IstioServiceMesh({
    this.certificateAuthority,
    this.components,
    this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority == null ? null : certificateAuthority!.toMap(),
      'components': ?components == null ? null : components!.toMap(),
      'revisions': ?revisions,
    };
  }

  factory IstioServiceMesh.fromMap(Map<String, dynamic> map) {
    return IstioServiceMesh(
      certificateAuthority: map['certificateAuthority'] == null ? null : IstioCertificateAuthority.fromMap((map['certificateAuthority'] as Map).cast<String, dynamic>()),
      components: map['components'] == null ? null : IstioComponents.fromMap((map['components'] as Map).cast<String, dynamic>()),
      revisions: map['revisions'] == null ? null : (map['revisions'] as List).cast<String>(),
    );
  }
}

