// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_trust_acm.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_trust_file.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_trust_sds.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust {
  /// TLS validation context trust for an AWS Certificate Manager (ACM) certificate.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm? acm;

  /// TLS validation context trust for a local file certificate.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustFile?
      file;

  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds? sds;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust].
  /// [acm] TLS validation context trust for an AWS Certificate Manager (ACM) certificate.
  /// [file] TLS validation context trust for a local file certificate.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust({
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

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust(
      acm: map['acm'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm
              .fromMap((map['acm'] as Map).cast<String, dynamic>()),
      file: map['file'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds
              .fromMap((map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
