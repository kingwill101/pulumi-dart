// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_acm/virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_acm.dart';
import '../virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_file/virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_file.dart';
import '../virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_sds/virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_sds.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust {
  /// TLS validation context trust for an AWS Certificate Manager (ACM) certificate.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm? acm;

  /// TLS validation context trust for a local file certificate.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile? file;

  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds? sds;

  VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust({
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

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust(
      acm: map['acm'] == null
          ? null
          : VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm
              .fromMap((map['acm'] as Map).cast<String, dynamic>()),
      file: map['file'] == null
          ? null
          : VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds
              .fromMap((map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
