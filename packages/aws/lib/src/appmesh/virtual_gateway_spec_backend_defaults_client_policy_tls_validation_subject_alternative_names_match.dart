// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch {
  /// Values sent must match the specified values exactly.
  final List<String> exacts;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch].
  /// [exacts] Values sent must match the specified values exactly.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exacts'] = exacts;
    return map;
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNamesMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
