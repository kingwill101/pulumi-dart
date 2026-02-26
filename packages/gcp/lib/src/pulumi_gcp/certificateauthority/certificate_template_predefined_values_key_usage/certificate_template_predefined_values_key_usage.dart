// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_template_predefined_values_key_usage_base_key_usage/certificate_template_predefined_values_key_usage_base_key_usage.dart';
import '../certificate_template_predefined_values_key_usage_extended_key_usage/certificate_template_predefined_values_key_usage_extended_key_usage.dart';
import '../certificate_template_predefined_values_key_usage_unknown_extended_key_usage/certificate_template_predefined_values_key_usage_unknown_extended_key_usage.dart';

class CertificateTemplatePredefinedValuesKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage? baseKeyUsage;

  /// Detailed scenarios in which a key may be used.
  /// Structure is documented below.
  final CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage?
      extendedKeyUsage;

  /// Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  /// Structure is documented below.
  final List<
          CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage>?
      unknownExtendedKeyUsages;

  CertificateTemplatePredefinedValuesKeyUsage({
    this.baseKeyUsage,
    this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseKeyUsageValue = baseKeyUsage;
    if (baseKeyUsageValue != null) {
      map['baseKeyUsage'] = baseKeyUsageValue.toMap();
    }
    final extendedKeyUsageValue = extendedKeyUsage;
    if (extendedKeyUsageValue != null) {
      map['extendedKeyUsage'] = extendedKeyUsageValue.toMap();
    }
    final unknownExtendedKeyUsagesValue = unknownExtendedKeyUsages;
    if (unknownExtendedKeyUsagesValue != null) {
      map['unknownExtendedKeyUsages'] = Input.encodeList<
              CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage,
              Map<String, dynamic>>(
          unknownExtendedKeyUsagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CertificateTemplatePredefinedValuesKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValuesKeyUsage(
      baseKeyUsage: map['baseKeyUsage'] == null
          ? null
          : CertificateTemplatePredefinedValuesKeyUsageBaseKeyUsage.fromMap(
              (map['baseKeyUsage'] as Map).cast<String, dynamic>()),
      extendedKeyUsage: map['extendedKeyUsage'] == null
          ? null
          : CertificateTemplatePredefinedValuesKeyUsageExtendedKeyUsage.fromMap(
              (map['extendedKeyUsage'] as Map).cast<String, dynamic>()),
      unknownExtendedKeyUsages: map['unknownExtendedKeyUsages'] == null
          ? null
          : Input.decodeList<
                  CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage>(
              map['unknownExtendedKeyUsages'],
              (value) =>
                  CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
