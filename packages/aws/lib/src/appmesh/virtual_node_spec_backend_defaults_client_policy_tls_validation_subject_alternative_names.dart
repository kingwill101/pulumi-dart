// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_subject_alternative_names_match.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch
      match;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match.
  VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['match'] = match.toMap();
    return map;
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames(
      match:
          VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch
              .fromMap((map['match'] as Map).cast<String, dynamic>()),
    );
  }
}
