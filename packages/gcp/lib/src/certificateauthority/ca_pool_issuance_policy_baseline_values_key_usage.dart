// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_issuance_policy_baseline_values_key_usage_base_key_usage.dart';
import 'ca_pool_issuance_policy_baseline_values_key_usage_extended_key_usage.dart';
import 'ca_pool_issuance_policy_baseline_values_key_usage_unknown_extended_key_usage.dart';

class CaPoolIssuancePolicyBaselineValuesKeyUsage {
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsage baseKeyUsage;
  /// Describes high-level ways in which a key may be used.
  /// Structure is documented below.
  final CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsage extendedKeyUsage;
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  /// Structure is documented below.
  final List<CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage>? unknownExtendedKeyUsages;

  /// Creates a new [CaPoolIssuancePolicyBaselineValuesKeyUsage].
  /// [baseKeyUsage] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsage] Describes high-level ways in which a key may be used.
  /// [unknownExtendedKeyUsages] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CaPoolIssuancePolicyBaselineValuesKeyUsage({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsage': baseKeyUsage.toMap(),
      'extendedKeyUsage': extendedKeyUsage.toMap(),
      'unknownExtendedKeyUsages': ?unknownExtendedKeyUsages == null ? null : pulumi.Input.encodeList<CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage, Map<String, dynamic>>(unknownExtendedKeyUsages!, (value) => value.toMap()),
    };
  }

  factory CaPoolIssuancePolicyBaselineValuesKeyUsage.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesKeyUsage(
      baseKeyUsage: CaPoolIssuancePolicyBaselineValuesKeyUsageBaseKeyUsage.fromMap((map['baseKeyUsage'] as Map).cast<String, dynamic>()),
      extendedKeyUsage: CaPoolIssuancePolicyBaselineValuesKeyUsageExtendedKeyUsage.fromMap((map['extendedKeyUsage'] as Map).cast<String, dynamic>()),
      unknownExtendedKeyUsages: map['unknownExtendedKeyUsages'] == null ? null : pulumi.Input.decodeList<CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage>(map['unknownExtendedKeyUsages'], (value) => CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

