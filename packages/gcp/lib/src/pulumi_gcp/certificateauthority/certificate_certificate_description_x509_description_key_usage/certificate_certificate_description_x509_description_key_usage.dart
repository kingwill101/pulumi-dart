// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_certificate_description_x509_description_key_usage_base_key_usage/certificate_certificate_description_x509_description_key_usage_base_key_usage.dart';
import '../certificate_certificate_description_x509_description_key_usage_extended_key_usage/certificate_certificate_description_x509_description_key_usage_extended_key_usage.dart';
import '../certificate_certificate_description_x509_description_key_usage_unknown_extended_key_usage/certificate_certificate_description_x509_description_key_usage_unknown_extended_key_usage.dart';

class CertificateCertificateDescriptionX509DescriptionKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final List<
          CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage>?
      baseKeyUsages;

  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final List<
          CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage>?
      extendedKeyUsages;

  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  /// Structure is documented below.
  final List<
          CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage>?
      unknownExtendedKeyUsages;

  CertificateCertificateDescriptionX509DescriptionKeyUsage({
    this.baseKeyUsages,
    this.extendedKeyUsages,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseKeyUsagesValue = baseKeyUsages;
    if (baseKeyUsagesValue != null) {
      map['baseKeyUsages'] = Input.encodeList<
          CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage,
          Map<String, dynamic>>(baseKeyUsagesValue, (value) => value.toMap());
    }
    final extendedKeyUsagesValue = extendedKeyUsages;
    if (extendedKeyUsagesValue != null) {
      map['extendedKeyUsages'] = Input.encodeList<
          CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage,
          Map<String,
              dynamic>>(extendedKeyUsagesValue, (value) => value.toMap());
    }
    final unknownExtendedKeyUsagesValue = unknownExtendedKeyUsages;
    if (unknownExtendedKeyUsagesValue != null) {
      map['unknownExtendedKeyUsages'] = Input.encodeList<
          CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage,
          Map<String,
              dynamic>>(unknownExtendedKeyUsagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsage(
      baseKeyUsages: map['baseKeyUsages'] == null
          ? null
          : Input.decodeList<
                  CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage>(
              map['baseKeyUsages'],
              (value) =>
                  CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage
                      .fromMap((value as Map).cast<String, dynamic>())),
      extendedKeyUsages: map['extendedKeyUsages'] == null
          ? null
          : Input.decodeList<
                  CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage>(
              map['extendedKeyUsages'],
              (value) =>
                  CertificateCertificateDescriptionX509DescriptionKeyUsageExtendedKeyUsage
                      .fromMap((value as Map).cast<String, dynamic>())),
      unknownExtendedKeyUsages: map['unknownExtendedKeyUsages'] == null
          ? null
          : Input.decodeList<
                  CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage>(
              map['unknownExtendedKeyUsages'],
              (value) =>
                  CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
