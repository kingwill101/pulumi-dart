// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_certificate_description_authority_key_id/certificate_certificate_description_authority_key_id.dart';
import '../certificate_certificate_description_cert_fingerprint/certificate_certificate_description_cert_fingerprint.dart';
import '../certificate_certificate_description_public_key/certificate_certificate_description_public_key.dart';
import '../certificate_certificate_description_subject_description/certificate_certificate_description_subject_description.dart';
import '../certificate_certificate_description_subject_key_id/certificate_certificate_description_subject_key_id.dart';
import '../certificate_certificate_description_x509_description/certificate_certificate_description_x509_description.dart';

class CertificateCertificateDescription {
  /// (Output)
  /// Describes lists of issuer CA certificate URLs that appear in the "Authority Information Access" extension in the certificate.
  final List<String>? aiaIssuingCertificateUrls;

  /// (Output)
  /// Identifies the subjectKeyId of the parent certificate, per https://tools.ietf.org/html/rfc5280#section-4.2.1.1
  /// Structure is documented below.
  final List<CertificateCertificateDescriptionAuthorityKeyId>? authorityKeyIds;

  /// (Output)
  /// The hash of the x.509 certificate.
  /// Structure is documented below.
  final List<CertificateCertificateDescriptionCertFingerprint>?
      certFingerprints;

  /// (Output)
  /// Describes a list of locations to obtain CRL information, i.e. the DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#section-4.2.1.13
  final List<String>? crlDistributionPoints;

  /// (Output)
  /// A PublicKey describes a public key.
  /// Structure is documented below.
  final List<CertificateCertificateDescriptionPublicKey>? publicKeys;

  /// (Output)
  /// Describes some of the values in a certificate that are related to the subject and lifetime.
  /// Structure is documented below.
  final List<CertificateCertificateDescriptionSubjectDescription>?
      subjectDescriptions;

  /// (Output)
  /// Provides a means of identifiying certificates that contain a particular public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.
  /// Structure is documented below.
  final List<CertificateCertificateDescriptionSubjectKeyId>? subjectKeyIds;

  /// (Output)
  /// A structured description of the issued X.509 certificate.
  /// Structure is documented below.
  final List<CertificateCertificateDescriptionX509Description>?
      x509Descriptions;

  CertificateCertificateDescription({
    this.aiaIssuingCertificateUrls,
    this.authorityKeyIds,
    this.certFingerprints,
    this.crlDistributionPoints,
    this.publicKeys,
    this.subjectDescriptions,
    this.subjectKeyIds,
    this.x509Descriptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aiaIssuingCertificateUrlsValue = aiaIssuingCertificateUrls;
    if (aiaIssuingCertificateUrlsValue != null) {
      map['aiaIssuingCertificateUrls'] = aiaIssuingCertificateUrlsValue;
    }
    final authorityKeyIdsValue = authorityKeyIds;
    if (authorityKeyIdsValue != null) {
      map['authorityKeyIds'] = pulumi.Input.encodeList<
          CertificateCertificateDescriptionAuthorityKeyId,
          Map<String, dynamic>>(authorityKeyIdsValue, (value) => value.toMap());
    }
    final certFingerprintsValue = certFingerprints;
    if (certFingerprintsValue != null) {
      map['certFingerprints'] = pulumi.Input.encodeList<
              CertificateCertificateDescriptionCertFingerprint,
              Map<String, dynamic>>(
          certFingerprintsValue, (value) => value.toMap());
    }
    final crlDistributionPointsValue = crlDistributionPoints;
    if (crlDistributionPointsValue != null) {
      map['crlDistributionPoints'] = crlDistributionPointsValue;
    }
    final publicKeysValue = publicKeys;
    if (publicKeysValue != null) {
      map['publicKeys'] = pulumi.Input.encodeList<
          CertificateCertificateDescriptionPublicKey,
          Map<String, dynamic>>(publicKeysValue, (value) => value.toMap());
    }
    final subjectDescriptionsValue = subjectDescriptions;
    if (subjectDescriptionsValue != null) {
      map['subjectDescriptions'] = pulumi.Input.encodeList<
              CertificateCertificateDescriptionSubjectDescription,
              Map<String, dynamic>>(
          subjectDescriptionsValue, (value) => value.toMap());
    }
    final subjectKeyIdsValue = subjectKeyIds;
    if (subjectKeyIdsValue != null) {
      map['subjectKeyIds'] = pulumi.Input.encodeList<
          CertificateCertificateDescriptionSubjectKeyId,
          Map<String, dynamic>>(subjectKeyIdsValue, (value) => value.toMap());
    }
    final x509DescriptionsValue = x509Descriptions;
    if (x509DescriptionsValue != null) {
      map['x509Descriptions'] = pulumi.Input.encodeList<
              CertificateCertificateDescriptionX509Description,
              Map<String, dynamic>>(
          x509DescriptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CertificateCertificateDescription.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescription(
      aiaIssuingCertificateUrls: map['aiaIssuingCertificateUrls'] == null
          ? null
          : (map['aiaIssuingCertificateUrls'] as List).cast<String>(),
      authorityKeyIds: map['authorityKeyIds'] == null
          ? null
          : pulumi.Input.decodeList<
                  CertificateCertificateDescriptionAuthorityKeyId>(
              map['authorityKeyIds'],
              (value) =>
                  CertificateCertificateDescriptionAuthorityKeyId.fromMap(
                      (value as Map).cast<String, dynamic>())),
      certFingerprints: map['certFingerprints'] == null
          ? null
          : pulumi.Input.decodeList<
                  CertificateCertificateDescriptionCertFingerprint>(
              map['certFingerprints'],
              (value) =>
                  CertificateCertificateDescriptionCertFingerprint.fromMap(
                      (value as Map).cast<String, dynamic>())),
      crlDistributionPoints: map['crlDistributionPoints'] == null
          ? null
          : (map['crlDistributionPoints'] as List).cast<String>(),
      publicKeys: map['publicKeys'] == null
          ? null
          : pulumi.Input.decodeList<CertificateCertificateDescriptionPublicKey>(
              map['publicKeys'],
              (value) => CertificateCertificateDescriptionPublicKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subjectDescriptions: map['subjectDescriptions'] == null
          ? null
          : pulumi.Input.decodeList<
                  CertificateCertificateDescriptionSubjectDescription>(
              map['subjectDescriptions'],
              (value) =>
                  CertificateCertificateDescriptionSubjectDescription.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subjectKeyIds: map['subjectKeyIds'] == null
          ? null
          : pulumi.Input.decodeList<
                  CertificateCertificateDescriptionSubjectKeyId>(
              map['subjectKeyIds'],
              (value) => CertificateCertificateDescriptionSubjectKeyId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      x509Descriptions: map['x509Descriptions'] == null
          ? null
          : pulumi.Input.decodeList<
                  CertificateCertificateDescriptionX509Description>(
              map['x509Descriptions'],
              (value) =>
                  CertificateCertificateDescriptionX509Description.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
