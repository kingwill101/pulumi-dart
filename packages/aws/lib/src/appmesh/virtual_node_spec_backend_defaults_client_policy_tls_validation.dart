// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_subject_alternative_names.dart';
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_trust.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation {
  /// SANs for a TLS validation context.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames? subjectAlternativeNames;
  /// TLS validation context trust.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust trust;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation].
  /// [subjectAlternativeNames] SANs for a TLS validation context.
  /// [trust] TLS validation context trust.
  VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?subjectAlternativeNames == null ? null : subjectAlternativeNames!.toMap(),
      'trust': trust.toMap(),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation(
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames.fromMap((map['subjectAlternativeNames'] as Map).cast<String, dynamic>()),
      trust: VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust.fromMap((map['trust'] as Map).cast<String, dynamic>()),
    );
  }
}

