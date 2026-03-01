// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_subject_alternative_names_match.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch
  match;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'match': match.toMap()};
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames(
      match:
          VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch.fromMap(
            (map['match'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
