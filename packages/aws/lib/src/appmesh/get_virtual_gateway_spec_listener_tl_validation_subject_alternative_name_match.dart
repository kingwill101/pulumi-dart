// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch {
  final List<String> exacts;

  /// Creates a new [GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch].
  /// [exacts] Required.
  GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exacts': exacts,
    };
  }

  factory GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}

