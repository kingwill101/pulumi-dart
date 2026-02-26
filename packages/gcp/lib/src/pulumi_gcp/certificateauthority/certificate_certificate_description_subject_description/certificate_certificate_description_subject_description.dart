// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_certificate_description_subject_description_subject/certificate_certificate_description_subject_description_subject.dart';
import '../certificate_certificate_description_subject_description_subject_alt_name/certificate_certificate_description_subject_description_subject_alt_name.dart';

class CertificateCertificateDescriptionSubjectDescription {
  /// (Output)
  /// The serial number encoded in lowercase hexadecimal.
  final String? hexSerialNumber;

  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  final String? lifetime;

  /// (Output)
  /// The time at which the certificate expires.
  final String? notAfterTime;

  /// (Output)
  /// The time at which the certificate becomes valid.
  final String? notBeforeTime;

  /// (Output)
  /// The subject alternative name fields.
  /// Structure is documented below.
  final List<CertificateCertificateDescriptionSubjectDescriptionSubjectAltName>?
      subjectAltNames;

  /// (Output)
  /// Contains distinguished name fields such as the location and organization.
  /// Structure is documented below.
  final List<CertificateCertificateDescriptionSubjectDescriptionSubject>?
      subjects;

  CertificateCertificateDescriptionSubjectDescription({
    this.hexSerialNumber,
    this.lifetime,
    this.notAfterTime,
    this.notBeforeTime,
    this.subjectAltNames,
    this.subjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hexSerialNumberValue = hexSerialNumber;
    if (hexSerialNumberValue != null) {
      map['hexSerialNumber'] = hexSerialNumberValue;
    }
    final lifetimeValue = lifetime;
    if (lifetimeValue != null) {
      map['lifetime'] = lifetimeValue;
    }
    final notAfterTimeValue = notAfterTime;
    if (notAfterTimeValue != null) {
      map['notAfterTime'] = notAfterTimeValue;
    }
    final notBeforeTimeValue = notBeforeTime;
    if (notBeforeTimeValue != null) {
      map['notBeforeTime'] = notBeforeTimeValue;
    }
    final subjectAltNamesValue = subjectAltNames;
    if (subjectAltNamesValue != null) {
      map['subjectAltNames'] = Input.encodeList<
          CertificateCertificateDescriptionSubjectDescriptionSubjectAltName,
          Map<String, dynamic>>(subjectAltNamesValue, (value) => value.toMap());
    }
    final subjectsValue = subjects;
    if (subjectsValue != null) {
      map['subjects'] = Input.encodeList<
          CertificateCertificateDescriptionSubjectDescriptionSubject,
          Map<String, dynamic>>(subjectsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CertificateCertificateDescriptionSubjectDescription.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionSubjectDescription(
      hexSerialNumber: map['hexSerialNumber'] == null
          ? null
          : map['hexSerialNumber'] as String,
      lifetime: map['lifetime'] == null ? null : map['lifetime'] as String,
      notAfterTime:
          map['notAfterTime'] == null ? null : map['notAfterTime'] as String,
      notBeforeTime:
          map['notBeforeTime'] == null ? null : map['notBeforeTime'] as String,
      subjectAltNames: map['subjectAltNames'] == null
          ? null
          : Input.decodeList<
                  CertificateCertificateDescriptionSubjectDescriptionSubjectAltName>(
              map['subjectAltNames'],
              (value) =>
                  CertificateCertificateDescriptionSubjectDescriptionSubjectAltName
                      .fromMap((value as Map).cast<String, dynamic>())),
      subjects: map['subjects'] == null
          ? null
          : Input.decodeList<
                  CertificateCertificateDescriptionSubjectDescriptionSubject>(
              map['subjects'],
              (value) =>
                  CertificateCertificateDescriptionSubjectDescriptionSubject
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
