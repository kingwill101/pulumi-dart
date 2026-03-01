// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch {
  final List<String> exacts;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch].
  /// [exacts] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exacts': exacts};
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
