// ignore_for_file: unused_element, unnecessary_cast

class KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames {
  /// Subject Alternative Name
  final String? subjectAlternativeName;

  /// Creates a new [KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames].
  /// [subjectAlternativeName] Subject Alternative Name
  KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames({
    this.subjectAlternativeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final subjectAlternativeNameValue = subjectAlternativeName;
    if (subjectAlternativeNameValue != null) {
      map['subjectAlternativeName'] = subjectAlternativeNameValue;
    }
    return map;
  }

  factory KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames.fromMap(
      Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames(
      subjectAlternativeName: map['subjectAlternativeName'] == null
          ? null
          : map['subjectAlternativeName'] as String,
    );
  }
}
