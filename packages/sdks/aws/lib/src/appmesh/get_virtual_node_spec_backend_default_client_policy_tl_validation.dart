// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_subject_alternative_name.dart';
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_trust.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation {
  /// SANs for a TLS validation context. See `spec.listener.tls.validation.subject_alternative_names` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>> subjectAlternativeNames;
  /// TLS validation context trust. See `spec.listener.tls.validation.trust` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust>> trusts;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation].
  /// [subjectAlternativeNames] SANs for a TLS validation context. See `spec.listener.tls.validation.subject_alternative_names` Block for details.
  /// [trusts] TLS validation context trust. See `spec.listener.tls.validation.trust` Block for details.
  const GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>, List<Map<String, dynamic>>>(subjectAlternativeNames, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trusts': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust>, List<Map<String, dynamic>>>(trusts, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation(
      subjectAlternativeNames: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>(map['subjectAlternativeNames']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName.fromMap((value as Map).cast<String, dynamic>()))),
      trusts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust>(map['trusts']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
