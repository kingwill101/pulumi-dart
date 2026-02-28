// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_subject_alternative_name.dart';
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation {
  final List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName> subjectAlternativeNames;
  final List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust> trusts;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation].
  /// [subjectAlternativeNames] Required.
  /// [trusts] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'trusts': pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust, Map<String, dynamic>>(trusts, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation(
      subjectAlternativeNames: pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName>(map['subjectAlternativeNames'], (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName.fromMap((value as Map).cast<String, dynamic>())),
      trusts: pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust>(map['trusts'], (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

