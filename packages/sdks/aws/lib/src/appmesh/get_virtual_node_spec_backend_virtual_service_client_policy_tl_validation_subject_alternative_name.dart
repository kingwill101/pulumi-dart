// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_subject_alternative_name_match.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName {
  final List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeNameMatch> matches;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName].
  /// [matches] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeNameMatch, Map<String, dynamic>>(matches, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeName(
      matches: pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeNameMatch>(map['matches'], (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationSubjectAlternativeNameMatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

