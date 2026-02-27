// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_backend_default_client_policy_tl_validation_subject_alternative_name/get_virtual_node_spec_backend_default_client_policy_tl_validation_subject_alternative_name.dart';
import '../get_virtual_node_spec_backend_default_client_policy_tl_validation_trust/get_virtual_node_spec_backend_default_client_policy_tl_validation_trust.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation {
  final List<
          GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>
      subjectAlternativeNames;
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust>
      trusts;

  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subjectAlternativeNames'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName,
        Map<String,
            dynamic>>(subjectAlternativeNames, (value) => value.toMap());
    map['trusts'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust,
        Map<String, dynamic>>(trusts, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation(
      subjectAlternativeNames: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>(
          map['subjectAlternativeNames'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName
                  .fromMap((value as Map).cast<String, dynamic>())),
      trusts: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust>(
          map['trusts'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
