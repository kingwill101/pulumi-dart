// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_subject_alternative_name_match.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName {
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>> matches;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName].
  /// [matches] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName(
      matches: (pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>(map['matches'], (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

