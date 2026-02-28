// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch {
  final List<String> exacts;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch].
  /// [exacts] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exacts'] = exacts;
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
