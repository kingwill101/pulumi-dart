// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_description_x509_description_key_usage_base_key_usage.dart';
import 'certificate_certificate_description_x509_description_key_usage_extended_key_usage.dart';
import 'certificate_certificate_description_x509_description_key_usage_unknown_extended_key_usage.dart';

class CertificateCertificateDescriptionX509DescriptionKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final List<
    CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage
  >?
  baseKeyUsages;

  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final List<
    CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage
  >?
  extendedKeyUsages;

  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  /// Structure is documented below.
  final List<
    CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage
  >?
  unknownExtendedKeyUsages;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionKeyUsage].
  /// [baseKeyUsages] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsages] Describes high-level ways in which a key may be used.
  /// [unknownExtendedKeyUsages] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CertificateCertificateDescriptionX509DescriptionKeyUsage({
    this.baseKeyUsages,
    this.extendedKeyUsages,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsages': ?baseKeyUsages == null
          ? null
          : pulumi.Input.encodeList<
              CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage,
              Map<String, dynamic>
            >(baseKeyUsages!, (value) => value.toMap()),
      'extendedKeyUsages': ?extendedKeyUsages == null
          ? null
          : pulumi.Input.encodeList<
              CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage,
              Map<String, dynamic>
            >(extendedKeyUsages!, (value) => value.toMap()),
      'unknownExtendedKeyUsages': ?unknownExtendedKeyUsages == null
          ? null
          : pulumi.Input.encodeList<
              CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage,
              Map<String, dynamic>
            >(unknownExtendedKeyUsages!, (value) => value.toMap()),
    };
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsage.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsage(
      baseKeyUsages: map['baseKeyUsages'] == null
          ? null
          : pulumi.Input.decodeList<
              CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage
            >(
              map['baseKeyUsages'],
              (value) =>
                  CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      extendedKeyUsages: map['extendedKeyUsages'] == null
          ? null
          : pulumi.Input.decodeList<
              CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage
            >(
              map['extendedKeyUsages'],
              (value) =>
                  CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      unknownExtendedKeyUsages: map['unknownExtendedKeyUsages'] == null
          ? null
          : pulumi.Input.decodeList<
              CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage
            >(
              map['unknownExtendedKeyUsages'],
              (value) =>
                  CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
