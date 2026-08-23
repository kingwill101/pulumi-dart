// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_subject_alternative_names_match.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match. See `spec.listener.tls.validation.subject_alternative_names.match` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch> match;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match. See `spec.listener.tls.validation.subject_alternative_names.match` Block for details.
  const VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': pulumi.Input.mapInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames(
      match: pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
    );
  }
}
