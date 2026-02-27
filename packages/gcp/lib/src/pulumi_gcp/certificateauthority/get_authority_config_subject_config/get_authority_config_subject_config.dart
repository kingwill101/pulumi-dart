// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_authority_config_subject_config_subject/get_authority_config_subject_config_subject.dart';
import '../get_authority_config_subject_config_subject_alt_name/get_authority_config_subject_config_subject_alt_name.dart';

class GetAuthorityConfigSubjectConfig {
  /// The subject alternative name fields.
  final List<GetAuthorityConfigSubjectConfigSubjectAltName> subjectAltNames;

  /// Contains distinguished name fields such as the location and organization.
  final List<GetAuthorityConfigSubjectConfigSubject> subjects;

  GetAuthorityConfigSubjectConfig({
    required this.subjectAltNames,
    required this.subjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subjectAltNames'] = pulumi.Input.encodeList<
        GetAuthorityConfigSubjectConfigSubjectAltName,
        Map<String, dynamic>>(subjectAltNames, (value) => value.toMap());
    map['subjects'] = pulumi.Input.encodeList<
        GetAuthorityConfigSubjectConfigSubject,
        Map<String, dynamic>>(subjects, (value) => value.toMap());
    return map;
  }

  factory GetAuthorityConfigSubjectConfig.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigSubjectConfig(
      subjectAltNames: pulumi.Input.decodeList<
              GetAuthorityConfigSubjectConfigSubjectAltName>(
          map['subjectAltNames'],
          (value) => GetAuthorityConfigSubjectConfigSubjectAltName.fromMap(
              (value as Map).cast<String, dynamic>())),
      subjects: pulumi.Input.decodeList<GetAuthorityConfigSubjectConfigSubject>(
          map['subjects'],
          (value) => GetAuthorityConfigSubjectConfigSubject.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
