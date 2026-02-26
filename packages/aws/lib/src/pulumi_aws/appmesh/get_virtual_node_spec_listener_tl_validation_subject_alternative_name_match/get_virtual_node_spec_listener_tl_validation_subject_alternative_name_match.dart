// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch {
  final List<String> exacts;

  GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exacts'] = exacts;
    return map;
  }

  factory GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch(
      exacts: (map['exacts'] as List).cast<String>(),
    );
  }
}
