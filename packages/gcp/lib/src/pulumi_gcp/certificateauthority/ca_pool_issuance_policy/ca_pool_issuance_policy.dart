// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ca_pool_issuance_policy_allowed_issuance_modes/ca_pool_issuance_policy_allowed_issuance_modes.dart';
import '../ca_pool_issuance_policy_allowed_key_type/ca_pool_issuance_policy_allowed_key_type.dart';
import '../ca_pool_issuance_policy_baseline_values/ca_pool_issuance_policy_baseline_values.dart';
import '../ca_pool_issuance_policy_identity_constraints/ca_pool_issuance_policy_identity_constraints.dart';

class CaPoolIssuancePolicy {
  /// IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
  /// Structure is documented below.
  final CaPoolIssuancePolicyAllowedIssuanceModes? allowedIssuanceModes;

  /// If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here.
  /// Otherwise, any key may be used. You can specify only one key type of those listed here.
  /// Structure is documented below.
  final List<CaPoolIssuancePolicyAllowedKeyType>? allowedKeyTypes;

  /// The duration to backdate all certificates issued from this CaPool. If not set, the
  /// certificates will be issued with a<span pulumi-lang-nodejs=" notBeforeTime " pulumi-lang-dotnet=" NotBeforeTime " pulumi-lang-go=" notBeforeTime " pulumi-lang-python=" not_before_time " pulumi-lang-yaml=" notBeforeTime " pulumi-lang-java=" notBeforeTime "> not_before_time </span>of the issuance time (i.e. the current
  /// time). If set, the certificates will be issued with a<span pulumi-lang-nodejs=" notBeforeTime " pulumi-lang-dotnet=" NotBeforeTime " pulumi-lang-go=" notBeforeTime " pulumi-lang-python=" not_before_time " pulumi-lang-yaml=" notBeforeTime " pulumi-lang-java=" notBeforeTime "> not_before_time </span>of the issuance
  /// time minus the backdate_duration. The<span pulumi-lang-nodejs=" notAfterTime " pulumi-lang-dotnet=" NotAfterTime " pulumi-lang-go=" notAfterTime " pulumi-lang-python=" not_after_time " pulumi-lang-yaml=" notAfterTime " pulumi-lang-java=" notAfterTime "> not_after_time </span>will be adjusted to preserve the
  /// requested lifetime. The<span pulumi-lang-nodejs=" backdateDuration " pulumi-lang-dotnet=" BackdateDuration " pulumi-lang-go=" backdateDuration " pulumi-lang-python=" backdate_duration " pulumi-lang-yaml=" backdateDuration " pulumi-lang-java=" backdateDuration "> backdate_duration </span>must be less than or equal to 48 hours.
  final String? backdateDuration;

  /// A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request
  /// includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate
  /// request uses a CertificateTemplate that defines conflicting predefinedValues for the same properties, the certificate
  /// issuance request will fail.
  /// Structure is documented below.
  final CaPoolIssuancePolicyBaselineValues? baselineValues;

  /// Describes constraints on identities that may appear in Certificates issued through this CaPool.
  /// If this is omitted, then this CaPool will not add restrictions on a certificate's identity.
  /// Structure is documented below.
  final CaPoolIssuancePolicyIdentityConstraints? identityConstraints;

  /// The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority
  /// expires before a Certificate's requested maximumLifetime, the effective lifetime will be explicitly truncated to match it.
  final String? maximumLifetime;

  CaPoolIssuancePolicy({
    this.allowedIssuanceModes,
    this.allowedKeyTypes,
    this.backdateDuration,
    this.baselineValues,
    this.identityConstraints,
    this.maximumLifetime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedIssuanceModesValue = allowedIssuanceModes;
    if (allowedIssuanceModesValue != null) {
      map['allowedIssuanceModes'] = allowedIssuanceModesValue.toMap();
    }
    final allowedKeyTypesValue = allowedKeyTypes;
    if (allowedKeyTypesValue != null) {
      map['allowedKeyTypes'] = Input.encodeList<
          CaPoolIssuancePolicyAllowedKeyType,
          Map<String, dynamic>>(allowedKeyTypesValue, (value) => value.toMap());
    }
    final backdateDurationValue = backdateDuration;
    if (backdateDurationValue != null) {
      map['backdateDuration'] = backdateDurationValue;
    }
    final baselineValuesValue = baselineValues;
    if (baselineValuesValue != null) {
      map['baselineValues'] = baselineValuesValue.toMap();
    }
    final identityConstraintsValue = identityConstraints;
    if (identityConstraintsValue != null) {
      map['identityConstraints'] = identityConstraintsValue.toMap();
    }
    final maximumLifetimeValue = maximumLifetime;
    if (maximumLifetimeValue != null) {
      map['maximumLifetime'] = maximumLifetimeValue;
    }
    return map;
  }

  factory CaPoolIssuancePolicy.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicy(
      allowedIssuanceModes: map['allowedIssuanceModes'] == null
          ? null
          : CaPoolIssuancePolicyAllowedIssuanceModes.fromMap(
              (map['allowedIssuanceModes'] as Map).cast<String, dynamic>()),
      allowedKeyTypes: map['allowedKeyTypes'] == null
          ? null
          : Input.decodeList<CaPoolIssuancePolicyAllowedKeyType>(
              map['allowedKeyTypes'],
              (value) => CaPoolIssuancePolicyAllowedKeyType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      backdateDuration: map['backdateDuration'] == null
          ? null
          : map['backdateDuration'] as String,
      baselineValues: map['baselineValues'] == null
          ? null
          : CaPoolIssuancePolicyBaselineValues.fromMap(
              (map['baselineValues'] as Map).cast<String, dynamic>()),
      identityConstraints: map['identityConstraints'] == null
          ? null
          : CaPoolIssuancePolicyIdentityConstraints.fromMap(
              (map['identityConstraints'] as Map).cast<String, dynamic>()),
      maximumLifetime: map['maximumLifetime'] == null
          ? null
          : map['maximumLifetime'] as String,
    );
  }
}
