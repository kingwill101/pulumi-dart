// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_fingerprint_response.dart';
import 'key_id_response.dart';
import 'public_key_response.dart';
import 'subject_description_response.dart';
import 'x509_parameters_response.dart';

/// A CertificateDescription describes an X.509 certificate or CSR that has been issued, as an alternative to using ASN.1 / X.509.
class CertificateDescriptionResponse {
  /// Describes lists of issuer CA certificate URLs that appear in the "Authority Information Access" extension in the certificate.
  final List<String> aiaIssuingCertificateUrls;

  /// Identifies the subject_key_id of the parent certificate, per https://tools.ietf.org/html/rfc5280#section-4.2.1.1
  final KeyIdResponse authorityKeyId;

  /// The hash of the x.509 certificate.
  final CertificateFingerprintResponse certFingerprint;

  /// Describes a list of locations to obtain CRL information, i.e. the DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#section-4.2.1.13
  final List<String> crlDistributionPoints;

  /// The public key that corresponds to an issued certificate.
  final PublicKeyResponse publicKey;

  /// Describes some of the values in a certificate that are related to the subject and lifetime.
  final SubjectDescriptionResponse subjectDescription;

  /// Provides a means of identifiying certificates that contain a particular public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.
  final KeyIdResponse subjectKeyId;

  /// Describes some of the technical X.509 fields in a certificate.
  final X509ParametersResponse x509Description;

  /// Creates a new [CertificateDescriptionResponse].
  /// [aiaIssuingCertificateUrls] Describes lists of issuer CA certificate URLs that appear in the "Authority Information Access" extension in the certificate.
  /// [authorityKeyId] Identifies the subject_key_id of the parent certificate, per https://tools.ietf.org/html/rfc5280#section-4.2.1.1
  /// [certFingerprint] The hash of the x.509 certificate.
  /// [crlDistributionPoints] Describes a list of locations to obtain CRL information, i.e. the DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#section-4.2.1.13
  /// [publicKey] The public key that corresponds to an issued certificate.
  /// [subjectDescription] Describes some of the values in a certificate that are related to the subject and lifetime.
  /// [subjectKeyId] Provides a means of identifiying certificates that contain a particular public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.
  /// [x509Description] Describes some of the technical X.509 fields in a certificate.
  CertificateDescriptionResponse({
    required this.aiaIssuingCertificateUrls,
    required this.authorityKeyId,
    required this.certFingerprint,
    required this.crlDistributionPoints,
    required this.publicKey,
    required this.subjectDescription,
    required this.subjectKeyId,
    required this.x509Description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiaIssuingCertificateUrls': aiaIssuingCertificateUrls,
      'authorityKeyId': authorityKeyId.toMap(),
      'certFingerprint': certFingerprint.toMap(),
      'crlDistributionPoints': crlDistributionPoints,
      'publicKey': publicKey.toMap(),
      'subjectDescription': subjectDescription.toMap(),
      'subjectKeyId': subjectKeyId.toMap(),
      'x509Description': x509Description.toMap(),
    };
  }

  factory CertificateDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return CertificateDescriptionResponse(
      aiaIssuingCertificateUrls: (map['aiaIssuingCertificateUrls'] as List)
          .cast<String>(),
      authorityKeyId: KeyIdResponse.fromMap(
        (map['authorityKeyId'] as Map).cast<String, dynamic>(),
      ),
      certFingerprint: CertificateFingerprintResponse.fromMap(
        (map['certFingerprint'] as Map).cast<String, dynamic>(),
      ),
      crlDistributionPoints: (map['crlDistributionPoints'] as List)
          .cast<String>(),
      publicKey: PublicKeyResponse.fromMap(
        (map['publicKey'] as Map).cast<String, dynamic>(),
      ),
      subjectDescription: SubjectDescriptionResponse.fromMap(
        (map['subjectDescription'] as Map).cast<String, dynamic>(),
      ),
      subjectKeyId: KeyIdResponse.fromMap(
        (map['subjectKeyId'] as Map).cast<String, dynamic>(),
      ),
      x509Description: X509ParametersResponse.fromMap(
        (map['x509Description'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
