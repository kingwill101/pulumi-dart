// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch {
  /// Values sent must match the specified values exactly.
  final List<String> exacts;

  /// Creates a new [VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch].
  /// [exacts] Values sent must match the specified values exactly.
  VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exacts': exacts};
  }

  factory VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
