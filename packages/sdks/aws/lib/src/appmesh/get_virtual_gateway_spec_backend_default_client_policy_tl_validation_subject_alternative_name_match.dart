// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch {
  final pulumi.Input<List<String>> exacts;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch].
  /// [exacts] Required.
  const GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exacts': exacts,
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch(
      exacts: pulumi.Input.fromValue((map['exacts'] as List).cast<String>()),
    );
  }
}
