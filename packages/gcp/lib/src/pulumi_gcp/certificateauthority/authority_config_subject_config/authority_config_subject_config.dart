// ignore_for_file: unused_element, unnecessary_cast

import '../authority_config_subject_config_subject/authority_config_subject_config_subject.dart';
import '../authority_config_subject_config_subject_alt_name/authority_config_subject_config_subject_alt_name.dart';

class AuthorityConfigSubjectConfig {
  /// Contains distinguished name fields such as the location and organization.
  /// Structure is documented below.
  final AuthorityConfigSubjectConfigSubject subject;

  /// The subject alternative name fields.
  /// Structure is documented below.
  final AuthorityConfigSubjectConfigSubjectAltName? subjectAltName;

  AuthorityConfigSubjectConfig({
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

  factory AuthorityConfigSubjectConfig.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigSubjectConfig(
      subject: AuthorityConfigSubjectConfigSubject.fromMap(
          (map['subject'] as Map).cast<String, dynamic>()),
      subjectAltName: map['subjectAltName'] == null
          ? null
          : AuthorityConfigSubjectConfigSubjectAltName.fromMap(
              (map['subjectAltName'] as Map).cast<String, dynamic>()),
    );
  }
}
