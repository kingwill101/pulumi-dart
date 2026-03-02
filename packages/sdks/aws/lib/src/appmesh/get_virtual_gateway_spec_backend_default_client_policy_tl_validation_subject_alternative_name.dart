// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_subject_alternative_name_match.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName {
  final pulumi.Input<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>> matches;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName].
  /// [matches] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName(
      matches: (pulumi.Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>(map['matches']!, (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

