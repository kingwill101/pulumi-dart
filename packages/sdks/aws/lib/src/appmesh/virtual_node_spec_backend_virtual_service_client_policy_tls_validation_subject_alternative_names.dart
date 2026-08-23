// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_subject_alternative_names_match.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match. See `spec.listener.tls.validation.subject_alternative_names.match` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch> match;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match. See `spec.listener.tls.validation.subject_alternative_names.match` Block for details.
  const VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': pulumi.Input.mapInputValue<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames(
      match: pulumi.Input.fromValue(VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
    );
  }
}
