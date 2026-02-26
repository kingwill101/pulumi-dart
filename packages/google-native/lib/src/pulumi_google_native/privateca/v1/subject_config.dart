// ignore_for_file: unused_element, unnecessary_cast

import 'subject4.dart';
import 'subject_alt_names.dart';

/// These values are used to create the distinguished name and subject alternative name fields in an X.509 certificate.
class SubjectConfig {
  /// Optional. Contains distinguished name fields such as the common name, location and organization.
  final Subject4? subject;

  /// Optional. The subject alternative name fields.
  final SubjectAltNames? subjectAltName;

  SubjectConfig({
    this.subject,
    this.subjectAltName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = subjectValue.toMap();
    }
    final subjectAltNameValue = subjectAltName;
    if (subjectAltNameValue != null) {
      map['subjectAltName'] = subjectAltNameValue.toMap();
    }
    return map;
  }

  factory SubjectConfig.fromMap(Map<String, dynamic> map) {
    return SubjectConfig(
      subject: map['subject'] == null
          ? null
          : Subject4.fromMap((map['subject'] as Map).cast<String, dynamic>()),
      subjectAltName: map['subjectAltName'] == null
          ? null
          : SubjectAltNames.fromMap(
              (map['subjectAltName'] as Map).cast<String, dynamic>()),
    );
  }
}
