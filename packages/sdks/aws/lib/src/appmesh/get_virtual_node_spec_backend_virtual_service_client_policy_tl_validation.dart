// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_subject_alternative_name.dart';
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation {
  /// SANs for a TLS validation context. See `spec.listener.tls.validation.subject_alternative_names` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName>> subjectAlternativeNames;
  /// TLS validation context trust. See `spec.listener.tls.validation.trust` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust>> trusts;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation].
  /// [subjectAlternativeNames] SANs for a TLS validation context. See `spec.listener.tls.validation.subject_alternative_names` Block for details.
  /// [trusts] TLS validation context trust. See `spec.listener.tls.validation.trust` Block for details.
  const GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName>, List<Map<String, dynamic>>>(subjectAlternativeNames, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trusts': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust>, List<Map<String, dynamic>>>(trusts, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation(
      subjectAlternativeNames: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName>(map['subjectAlternativeNames']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName.fromMap((value as Map).cast<String, dynamic>()))),
      trusts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust>(map['trusts']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
