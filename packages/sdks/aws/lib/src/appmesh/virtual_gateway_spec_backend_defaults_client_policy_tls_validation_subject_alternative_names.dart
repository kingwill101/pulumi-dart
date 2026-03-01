// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_subject_alternative_names_match.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch match;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': match.toMap(),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames(
      match: VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
    );
  }
}

