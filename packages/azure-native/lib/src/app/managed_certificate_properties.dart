// ignore_for_file: unused_element, unnecessary_cast


/// Certificate resource specific properties
class ManagedCertificateProperties {
  /// Selected type of domain control validation for managed certificates.
  final String? domainControlValidation;
  /// Subject name of the certificate.
  final String? subjectName;

  /// Creates a new [ManagedCertificateProperties].
  /// [domainControlValidation] Selected type of domain control validation for managed certificates.
  /// [subjectName] Subject name of the certificate.
  ManagedCertificateProperties({
    this.domainControlValidation,
    this.subjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControlValidation': ?domainControlValidation,
      'subjectName': ?subjectName,
    };
  }

  factory ManagedCertificateProperties.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateProperties(
      domainControlValidation: map['domainControlValidation'] == null ? null : map['domainControlValidation'] as String,
      subjectName: map['subjectName'] == null ? null : map['subjectName'] as String,
    );
  }
}

