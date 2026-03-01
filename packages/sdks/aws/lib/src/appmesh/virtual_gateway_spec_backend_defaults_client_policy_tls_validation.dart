// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_subject_alternative_names.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_trust.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation {
  /// SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames? subjectAlternativeNames;
  /// TLS validation context trust.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust trust;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation].
  /// [subjectAlternativeNames] SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context.
  /// [trust] TLS validation context trust.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?subjectAlternativeNames == null ? null : subjectAlternativeNames!.toMap(),
      'trust': trust.toMap(),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation(
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames.fromMap((map['subjectAlternativeNames'] as Map).cast<String, dynamic>()),
      trust: VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust.fromMap((map['trust'] as Map).cast<String, dynamic>()),
    );
  }
}

