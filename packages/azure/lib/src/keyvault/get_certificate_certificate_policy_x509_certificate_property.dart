// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_certificate_policy_x509_certificate_property_subject_alternative_name.dart';

class GetCertificateCertificatePolicyX509CertificateProperty {
  /// A list of Extended/Enhanced Key Usages.
  final List<String> extendedKeyUsages;
  /// A list of uses associated with this Key.
  final List<String> keyUsages;
  /// The Certificate's Subject.
  final String subject;
  /// A `subject_alternative_names` block as defined below.
  final List<GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName> subjectAlternativeNames;
  /// The Certificates Validity Period in Months.
  final int validityInMonths;

  /// Creates a new [GetCertificateCertificatePolicyX509CertificateProperty].
  /// [extendedKeyUsages] A list of Extended/Enhanced Key Usages.
  /// [keyUsages] A list of uses associated with this Key.
  /// [subject] The Certificate's Subject.
  /// [subjectAlternativeNames] A `subject_alternative_names` block as defined below.
  /// [validityInMonths] The Certificates Validity Period in Months.
  GetCertificateCertificatePolicyX509CertificateProperty({
    required this.extendedKeyUsages,
    required this.keyUsages,
    required this.subject,
    required this.subjectAlternativeNames,
    required this.validityInMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedKeyUsages': extendedKeyUsages,
      'keyUsages': keyUsages,
      'subject': subject,
      'subjectAlternativeNames': pulumi.Input.encodeList<GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'validityInMonths': validityInMonths,
    };
  }

  factory GetCertificateCertificatePolicyX509CertificateProperty.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyX509CertificateProperty(
      extendedKeyUsages: (map['extendedKeyUsages'] as List).cast<String>(),
      keyUsages: (map['keyUsages'] as List).cast<String>(),
      subject: map['subject'] as String,
      subjectAlternativeNames: pulumi.Input.decodeList<GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName>(map['subjectAlternativeNames'], (value) => GetCertificateCertificatePolicyX509CertificatePropertySubjectAlternativeName.fromMap((value as Map).cast<String, dynamic>())),
      validityInMonths: map['validityInMonths'] as int,
    );
  }
}

