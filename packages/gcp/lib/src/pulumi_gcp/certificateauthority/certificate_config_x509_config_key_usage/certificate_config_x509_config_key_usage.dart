// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_config_x509_config_key_usage_base_key_usage/certificate_config_x509_config_key_usage_base_key_usage.dart';
import '../certificate_config_x509_config_key_usage_extended_key_usage/certificate_config_x509_config_key_usage_extended_key_usage.dart';
import '../certificate_config_x509_config_key_usage_unknown_extended_key_usage/certificate_config_x509_config_key_usage_unknown_extended_key_usage.dart';

class CertificateConfigX509ConfigKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final CertificateConfigX509ConfigKeyUsageBaseKeyUsage baseKeyUsage;

  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final CertificateConfigX509ConfigKeyUsageExtendedKeyUsage extendedKeyUsage;

  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  /// Structure is documented below.
  final List<CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>?
      unknownExtendedKeyUsages;

  CertificateConfigX509ConfigKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseKeyUsage'] = baseKeyUsage.toMap();
    map['extendedKeyUsage'] = extendedKeyUsage.toMap();
    final unknownExtendedKeyUsagesValue = unknownExtendedKeyUsages;
    if (unknownExtendedKeyUsagesValue != null) {
      map['unknownExtendedKeyUsages'] = pulumi.Input.encodeList<
              CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage,
              Map<String, dynamic>>(
          unknownExtendedKeyUsagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CertificateConfigX509ConfigKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return CertificateConfigX509ConfigKeyUsage(
      baseKeyUsage: CertificateConfigX509ConfigKeyUsageBaseKeyUsage.fromMap(
          (map['baseKeyUsage'] as Map).cast<String, dynamic>()),
      extendedKeyUsage:
          CertificateConfigX509ConfigKeyUsageExtendedKeyUsage.fromMap(
              (map['extendedKeyUsage'] as Map).cast<String, dynamic>()),
      unknownExtendedKeyUsages: map['unknownExtendedKeyUsages'] == null
          ? null
          : pulumi.Input.decodeList<
                  CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>(
              map['unknownExtendedKeyUsages'],
              (value) =>
                  CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
