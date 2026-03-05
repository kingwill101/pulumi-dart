// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_subject_alternative_name.dart';
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation {
  final pulumi.Input<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>> subjectAlternativeNames;
  final pulumi.Input<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust>> trusts;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation].
  /// [subjectAlternativeNames] Required.
  /// [trusts] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>, List<Map<String, dynamic>>>(subjectAlternativeNames, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trusts': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust>, List<Map<String, dynamic>>>(trusts, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation(
      subjectAlternativeNames: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName>(map['subjectAlternativeNames']!, (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeName.fromMap((value as Map).cast<String, dynamic>()))),
      trusts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust>(map['trusts']!, (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

