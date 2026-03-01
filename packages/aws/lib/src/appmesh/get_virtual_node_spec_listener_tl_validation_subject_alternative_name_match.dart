// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch {
  final List<String> exacts;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch].
  /// [exacts] Required.
  GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exacts': exacts};
  }

  factory GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
