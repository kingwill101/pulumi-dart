// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch {
  final List<String> exacts;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch].
  /// [exacts] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exacts'] = exacts;
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
