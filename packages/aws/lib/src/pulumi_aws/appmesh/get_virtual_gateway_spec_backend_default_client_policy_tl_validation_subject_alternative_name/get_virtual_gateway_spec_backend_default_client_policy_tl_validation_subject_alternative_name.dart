// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_validation_subject_alternative_name_match/get_virtual_gateway_spec_backend_default_client_policy_tl_validation_subject_alternative_name_match.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName {
  final List<
          GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>
      matches;

  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matches'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName(
      matches: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch>(
          map['matches'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
