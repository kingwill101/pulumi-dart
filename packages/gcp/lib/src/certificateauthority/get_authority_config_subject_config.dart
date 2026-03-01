// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_config_subject_config_subject.dart';
import 'get_authority_config_subject_config_subject_alt_name.dart';

class GetAuthorityConfigSubjectConfig {
  /// The subject alternative name fields.
  final List<GetAuthorityConfigSubjectConfigSubjectAltName> subjectAltNames;

  /// Contains distinguished name fields such as the location and organization.
  final List<GetAuthorityConfigSubjectConfigSubject> subjects;

  /// Creates a new [GetAuthorityConfigSubjectConfig].
  /// [subjectAltNames] The subject alternative name fields.
  /// [subjects] Contains distinguished name fields such as the location and organization.
  GetAuthorityConfigSubjectConfig({
    required this.subjectAltNames,
    required this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAltNames':
          pulumi.Input.encodeList<
            GetAuthorityConfigSubjectConfigSubjectAltName,
            Map<String, dynamic>
          >(subjectAltNames, (value) => value.toMap()),
      'subjects':
          pulumi.Input.encodeList<
            GetAuthorityConfigSubjectConfigSubject,
            Map<String, dynamic>
          >(subjects, (value) => value.toMap()),
    };
  }

  factory GetAuthorityConfigSubjectConfig.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigSubjectConfig(
      subjectAltNames:
          pulumi
              .Input.decodeList<GetAuthorityConfigSubjectConfigSubjectAltName>(
            map['subjectAltNames'],
            (value) => GetAuthorityConfigSubjectConfigSubjectAltName.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      subjects: pulumi.Input.decodeList<GetAuthorityConfigSubjectConfigSubject>(
        map['subjects'],
        (value) => GetAuthorityConfigSubjectConfigSubject.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
