// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_trust_acm.dart';
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_trust_file.dart';
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_trust_sds.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust {
  /// TLS validation context trust for an AWS Certificate Manager (ACM) certificate.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm?
      acm;

  /// TLS validation context trust for a local file certificate.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile?
      file;

  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds?
      sds;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust].
  /// [acm] TLS validation context trust for an AWS Certificate Manager (ACM) certificate.
  /// [file] TLS validation context trust for a local file certificate.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust({
    this.acm,
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acmValue = acm;
    if (acmValue != null) {
      map['acm'] = acmValue.toMap();
    }
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue.toMap();
    }
    final sdsValue = sds;
    if (sdsValue != null) {
      map['sds'] = sdsValue.toMap();
    }
    return map;
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust(
      acm: map['acm'] == null
          ? null
          : VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustAcm
              .fromMap((map['acm'] as Map).cast<String, dynamic>()),
      file: map['file'] == null
          ? null
          : VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrustSds
              .fromMap((map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
