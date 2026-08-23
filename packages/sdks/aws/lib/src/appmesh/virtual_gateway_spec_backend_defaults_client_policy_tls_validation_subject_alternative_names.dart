// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_subject_alternative_names_match.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch> match;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match.
  const VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': pulumi.Input.mapInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames(
      match: pulumi.Input.fromValue(VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
    );
  }
}
