// ignore_for_file: unused_element, unnecessary_cast

import '../certificate_config_subject_config_subject/certificate_config_subject_config_subject.dart';
import '../certificate_config_subject_config_subject_alt_name/certificate_config_subject_config_subject_alt_name.dart';

class CertificateConfigSubjectConfig {
  /// Contains distinguished name fields such as the location and organization.
  /// Structure is documented below.
  final CertificateConfigSubjectConfigSubject subject;

  /// The subject alternative name fields.
  /// Structure is documented below.
  final CertificateConfigSubjectConfigSubjectAltName? subjectAltName;

  CertificateConfigSubjectConfig({
    required this.subject,
    this.subjectAltName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subject'] = subject.toMap();
    final subjectAltNameValue = subjectAltName;
    if (subjectAltNameValue != null) {
      map['subjectAltName'] = subjectAltNameValue.toMap();
    }
    return map;
  }

  factory CertificateConfigSubjectConfig.fromMap(Map<String, dynamic> map) {
    return CertificateConfigSubjectConfig(
      subject: CertificateConfigSubjectConfigSubject.fromMap(
          (map['subject'] as Map).cast<String, dynamic>()),
      subjectAltName: map['subjectAltName'] == null
          ? null
          : CertificateConfigSubjectConfigSubjectAltName.fromMap(
              (map['subjectAltName'] as Map).cast<String, dynamic>()),
    );
  }
}
