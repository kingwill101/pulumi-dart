// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_issuance_policy_baseline_values_additional_extension.dart';
import 'ca_pool_issuance_policy_baseline_values_ca_options.dart';
import 'ca_pool_issuance_policy_baseline_values_key_usage.dart';
import 'ca_pool_issuance_policy_baseline_values_name_constraints.dart';
import 'ca_pool_issuance_policy_baseline_values_policy_id.dart';

class CaPoolIssuancePolicyBaselineValues {
  /// Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  /// Structure is documented below.
  final List<CaPoolIssuancePolicyBaselineValuesAdditionalExtension>?
      additionalExtensions;

  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final List<String>? aiaOcspServers;

  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final CaPoolIssuancePolicyBaselineValuesCaOptions caOptions;

  /// Indicates the intended use for keys that correspond to a certificate.
  /// Structure is documented below.
  final CaPoolIssuancePolicyBaselineValuesKeyUsage keyUsage;

  /// Describes the X.509 name constraints extension.
  /// Structure is documented below.
  final CaPoolIssuancePolicyBaselineValuesNameConstraints? nameConstraints;

  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  /// Structure is documented below.
  final List<CaPoolIssuancePolicyBaselineValuesPolicyId>? policyIds;

  /// Creates a new [CaPoolIssuancePolicyBaselineValues].
  /// [additionalExtensions] Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  /// [aiaOcspServers] Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// [caOptions] Describes values that are relevant in a CA certificate.
  /// [keyUsage] Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Describes the X.509 name constraints extension.
  /// [policyIds] Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  CaPoolIssuancePolicyBaselineValues({
    this.additionalExtensions,
    this.aiaOcspServers,
    required this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExtensionsValue = additionalExtensions;
    if (additionalExtensionsValue != null) {
      map['additionalExtensions'] = pulumi.Input.encodeList<
              CaPoolIssuancePolicyBaselineValuesAdditionalExtension,
              Map<String, dynamic>>(
          additionalExtensionsValue, (value) => value.toMap());
    }
    final aiaOcspServersValue = aiaOcspServers;
    if (aiaOcspServersValue != null) {
      map['aiaOcspServers'] = aiaOcspServersValue;
    }
    map['caOptions'] = caOptions.toMap();
    map['keyUsage'] = keyUsage.toMap();
    final nameConstraintsValue = nameConstraints;
    if (nameConstraintsValue != null) {
      map['nameConstraints'] = nameConstraintsValue.toMap();
    }
    final policyIdsValue = policyIds;
    if (policyIdsValue != null) {
      map['policyIds'] = pulumi.Input.encodeList<
          CaPoolIssuancePolicyBaselineValuesPolicyId,
          Map<String, dynamic>>(policyIdsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CaPoolIssuancePolicyBaselineValues.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValues(
      additionalExtensions: map['additionalExtensions'] == null
          ? null
          : pulumi.Input.decodeList<
                  CaPoolIssuancePolicyBaselineValuesAdditionalExtension>(
              map['additionalExtensions'],
              (value) =>
                  CaPoolIssuancePolicyBaselineValuesAdditionalExtension.fromMap(
                      (value as Map).cast<String, dynamic>())),
      aiaOcspServers: map['aiaOcspServers'] == null
          ? null
          : (map['aiaOcspServers'] as List).cast<String>(),
      caOptions: CaPoolIssuancePolicyBaselineValuesCaOptions.fromMap(
          (map['caOptions'] as Map).cast<String, dynamic>()),
      keyUsage: CaPoolIssuancePolicyBaselineValuesKeyUsage.fromMap(
          (map['keyUsage'] as Map).cast<String, dynamic>()),
      nameConstraints: map['nameConstraints'] == null
          ? null
          : CaPoolIssuancePolicyBaselineValuesNameConstraints.fromMap(
              (map['nameConstraints'] as Map).cast<String, dynamic>()),
      policyIds: map['policyIds'] == null
          ? null
          : pulumi.Input.decodeList<CaPoolIssuancePolicyBaselineValuesPolicyId>(
              map['policyIds'],
              (value) => CaPoolIssuancePolicyBaselineValuesPolicyId.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
