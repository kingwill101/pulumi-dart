// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch {
  /// Values sent must match the specified values exactly.
  final List<String> exacts;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch].
  /// [exacts] Values sent must match the specified values exactly.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exacts': exacts,
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNamesMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}

