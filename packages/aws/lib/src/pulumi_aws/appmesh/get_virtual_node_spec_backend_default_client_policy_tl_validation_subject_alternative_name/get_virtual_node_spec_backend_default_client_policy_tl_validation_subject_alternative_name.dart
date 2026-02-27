// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_backend_default_client_policy_tl_validation_subject_alternative_name_match/get_virtual_node_spec_backend_default_client_policy_tl_validation_subject_alternative_name_match.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName {
  final List<
          GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>
      matches;

  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matches'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName(
      matches: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>(
          map['matches'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
