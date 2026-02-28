// ignore_for_file: unused_element, unnecessary_cast

import 'subject_alt_names_response.dart';
import 'subject_response.dart';

/// These values describe fields in an issued X.509 certificate such as the distinguished name, subject alternative names, serial number, and lifetime.
class SubjectDescriptionResponse {
  /// The serial number encoded in lowercase hexadecimal.
  final String hexSerialNumber;

  /// For convenience, the actual lifetime of an issued certificate.
  final String lifetime;

  /// The time after which the certificate is expired. Per RFC 5280, the validity period for a certificate is the period of time from not_before_time through not_after_time, inclusive. Corresponds to 'not_before_time' + 'lifetime' - 1 second.
  final String notAfterTime;

  /// The time at which the certificate becomes valid.
  final String notBeforeTime;

  /// Contains distinguished name fields such as the common name, location and / organization.
  final SubjectResponse subject;

  /// The subject alternative name fields.
  final SubjectAltNamesResponse subjectAltName;

  /// Creates a new [SubjectDescriptionResponse].
  /// [hexSerialNumber] The serial number encoded in lowercase hexadecimal.
  /// [lifetime] For convenience, the actual lifetime of an issued certificate.
  /// [notAfterTime] The time after which the certificate is expired. Per RFC 5280, the validity period for a certificate is the period of time from not_before_time through not_after_time, inclusive. Corresponds to 'not_before_time' + 'lifetime' - 1 second.
  /// [notBeforeTime] The time at which the certificate becomes valid.
  /// [subject] Contains distinguished name fields such as the common name, location and / organization.
  /// [subjectAltName] The subject alternative name fields.
  SubjectDescriptionResponse({
    required this.hexSerialNumber,
    required this.lifetime,
    required this.notAfterTime,
    required this.notBeforeTime,
    required this.subject,
    required this.subjectAltName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hexSerialNumber'] = hexSerialNumber;
    map['lifetime'] = lifetime;
    map['notAfterTime'] = notAfterTime;
    map['notBeforeTime'] = notBeforeTime;
    map['subject'] = subject.toMap();
    map['subjectAltName'] = subjectAltName.toMap();
    return map;
  }

  factory SubjectDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SubjectDescriptionResponse(
      hexSerialNumber: map['hexSerialNumber'] as String,
      lifetime: map['lifetime'] as String,
      notAfterTime: map['notAfterTime'] as String,
      notBeforeTime: map['notBeforeTime'] as String,
      subject: SubjectResponse.fromMap(
          (map['subject'] as Map).cast<String, dynamic>()),
      subjectAltName: SubjectAltNamesResponse.fromMap(
          (map['subjectAltName'] as Map).cast<String, dynamic>()),
    );
  }
}
