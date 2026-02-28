// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_subject_alternative_names.dart';
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_trust.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation {
  /// SANs for a TLS validation context.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames?
      subjectAlternativeNames;

  /// TLS validation context trust.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust
      trust;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation].
  /// [subjectAlternativeNames] SANs for a TLS validation context.
  /// [trust] TLS validation context trust.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final subjectAlternativeNamesValue = subjectAlternativeNames;
    if (subjectAlternativeNamesValue != null) {
      map['subjectAlternativeNames'] = subjectAlternativeNamesValue.toMap();
    }
    map['trust'] = trust.toMap();
    return map;
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation(
      subjectAlternativeNames: map['subjectAlternativeNames'] == null
          ? null
          : VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames
              .fromMap((map['subjectAlternativeNames'] as Map)
                  .cast<String, dynamic>()),
      trust: VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust
          .fromMap((map['trust'] as Map).cast<String, dynamic>()),
    );
  }
}
