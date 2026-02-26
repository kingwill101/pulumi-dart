// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_validation_subject_alternative_name/get_virtual_gateway_spec_backend_default_client_policy_tl_validation_subject_alternative_name.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust/get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation {
  final List<
          GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>
      subjectAlternativeNames;
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust>
      trusts;

  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subjectAlternativeNames'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName,
        Map<String,
            dynamic>>(subjectAlternativeNames, (value) => value.toMap());
    map['trusts'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust,
        Map<String, dynamic>>(trusts, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation(
      subjectAlternativeNames: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>(
          map['subjectAlternativeNames'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName
                  .fromMap((value as Map).cast<String, dynamic>())),
      trusts: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust>(
          map['trusts'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
