// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_certificate_authority_response.dart';
import 'istio_components_response.dart';

/// Istio service mesh configuration.
class IstioServiceMeshResponse {
  /// Istio Service Mesh Certificate Authority (CA) configuration. For now, we only support plugin certificates as described here https://aka.ms/asm-plugin-ca
  final pulumi.Input<IstioCertificateAuthorityResponse>? certificateAuthority;
  /// Istio components configuration.
  final pulumi.Input<IstioComponentsResponse>? components;
  /// The list of revisions of the Istio control plane. When an upgrade is not in progress, this holds one value. When canary upgrade is in progress, this can only hold two consecutive values. For more information, see: https://learn.microsoft.com/en-us/azure/aks/istio-upgrade
  final pulumi.Input<List<String>>? revisions;

  /// Creates a new [IstioServiceMeshResponse].
  /// [certificateAuthority] Istio Service Mesh Certificate Authority (CA) configuration. For now, we only support plugin certificates as described here https://aka.ms/asm-plugin-ca
  /// [components] Istio components configuration.
  /// [revisions] The list of revisions of the Istio control plane. When an upgrade is not in progress, this holds one value. When canary upgrade is in progress, this can only hold two consecutive values. For more information, see: https://learn.microsoft.com/en-us/azure/aks/istio-upgrade
  const IstioServiceMeshResponse({
    this.certificateAuthority,
    this.components,
    this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<IstioCertificateAuthorityResponse, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
      'components': ?pulumi.Input.mapOptionalInputValue<IstioComponentsResponse, Map<String, dynamic>>(components, (value) => value.toMap()),
      'revisions': ?revisions,
    };
  }

  factory IstioServiceMeshResponse.fromMap(Map<String, dynamic> map) {
    return IstioServiceMeshResponse(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IstioCertificateAuthorityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IstioComponentsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      revisions: (() { final guardedValue = map['revisions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
