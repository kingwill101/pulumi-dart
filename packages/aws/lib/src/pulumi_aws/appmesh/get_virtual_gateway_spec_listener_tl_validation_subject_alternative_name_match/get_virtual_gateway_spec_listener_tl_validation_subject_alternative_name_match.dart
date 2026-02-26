// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch {
  final List<String> exacts;

  GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exacts'] = exacts;
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
