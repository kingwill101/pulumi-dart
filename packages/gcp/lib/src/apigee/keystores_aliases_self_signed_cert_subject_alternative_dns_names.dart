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
    return <String, dynamic>{'subjectAlternativeName': ?subjectAlternativeName};
  }

  factory KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames.fromMap(
    Map<String, dynamic> map,
  ) {
    return KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames(
      subjectAlternativeName: map['subjectAlternativeName'] == null
          ? null
          : map['subjectAlternativeName'] as String,
    );
  }
}
