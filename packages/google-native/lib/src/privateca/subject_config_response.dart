// ignore_for_file: unused_element, unnecessary_cast

import 'subject_alt_names_response.dart';
import 'subject_response.dart';

/// These values are used to create the distinguished name and subject alternative name fields in an X.509 certificate.
class SubjectConfigResponse {
  /// Optional. Contains distinguished name fields such as the common name, location and organization.
  final SubjectResponse subject;

  /// Optional. The subject alternative name fields.
  final SubjectAltNamesResponse subjectAltName;

  /// Creates a new [SubjectConfigResponse].
  /// [subject] Optional. Contains distinguished name fields such as the common name, location and organization.
  /// [subjectAltName] Optional. The subject alternative name fields.
  SubjectConfigResponse({required this.subject, required this.subjectAltName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': subject.toMap(),
      'subjectAltName': subjectAltName.toMap(),
    };
  }

  factory SubjectConfigResponse.fromMap(Map<String, dynamic> map) {
    return SubjectConfigResponse(
      subject: SubjectResponse.fromMap(
        (map['subject'] as Map).cast<String, dynamic>(),
      ),
      subjectAltName: SubjectAltNamesResponse.fromMap(
        (map['subjectAltName'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
