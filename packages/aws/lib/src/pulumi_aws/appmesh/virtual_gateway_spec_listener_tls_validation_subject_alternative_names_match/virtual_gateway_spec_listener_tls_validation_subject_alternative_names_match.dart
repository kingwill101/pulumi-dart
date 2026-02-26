// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch {
  /// Values sent must match the specified values exactly.
  final List<String> exacts;

  VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exacts'] = exacts;
    return map;
  }

  factory VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
