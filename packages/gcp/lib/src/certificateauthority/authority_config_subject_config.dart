// ignore_for_file: unused_element, unnecessary_cast

import 'authority_config_subject_config_subject.dart';
import 'authority_config_subject_config_subject_alt_name.dart';

class AuthorityConfigSubjectConfig {
  /// Contains distinguished name fields such as the location and organization.
  /// Structure is documented below.
  final AuthorityConfigSubjectConfigSubject subject;

  /// The subject alternative name fields.
  /// Structure is documented below.
  final AuthorityConfigSubjectConfigSubjectAltName? subjectAltName;

  /// Creates a new [AuthorityConfigSubjectConfig].
  /// [subject] Contains distinguished name fields such as the location and organization.
  /// [subjectAltName] The subject alternative name fields.
  AuthorityConfigSubjectConfig({required this.subject, this.subjectAltName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': subject.toMap(),
      'subjectAltName': ?subjectAltName == null
          ? null
          : subjectAltName!.toMap(),
    };
  }

  factory AuthorityConfigSubjectConfig.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigSubjectConfig(
      subject: AuthorityConfigSubjectConfigSubject.fromMap(
        (map['subject'] as Map).cast<String, dynamic>(),
      ),
      subjectAltName: map['subjectAltName'] == null
          ? null
          : AuthorityConfigSubjectConfigSubjectAltName.fromMap(
              (map['subjectAltName'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
