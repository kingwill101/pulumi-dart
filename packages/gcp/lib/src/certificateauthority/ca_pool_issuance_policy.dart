// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_issuance_policy_allowed_issuance_modes.dart';
import 'ca_pool_issuance_policy_allowed_key_type.dart';
import 'ca_pool_issuance_policy_baseline_values.dart';
import 'ca_pool_issuance_policy_identity_constraints.dart';

class CaPoolIssuancePolicy {
  /// IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
  /// Structure is documented below.
  final CaPoolIssuancePolicyAllowedIssuanceModes? allowedIssuanceModes;

  /// If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here.
  /// Otherwise, any key may be used. You can specify only one key type of those listed here.
  /// Structure is documented below.
  final List<CaPoolIssuancePolicyAllowedKeyType>? allowedKeyTypes;

  /// The duration to backdate all certificates issued from this CaPool. If not set, the
  /// certificates will be issued with a not_before_time of the issuance time (i.e. the current
  /// time). If set, the certificates will be issued with a not_before_time of the issuance
  /// time minus the backdate_duration. The not_after_time will be adjusted to preserve the
  /// requested lifetime. The backdate_duration must be less than or equal to 48 hours.
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

  /// Creates a new [CaPoolIssuancePolicy].
  /// [allowedIssuanceModes] IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
  /// [allowedKeyTypes] If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here.
  /// [backdateDuration] The duration to backdate all certificates issued from this CaPool. If not set, the
  /// [baselineValues] A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request
  /// [identityConstraints] Describes constraints on identities that may appear in Certificates issued through this CaPool.
  /// [maximumLifetime] The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority
  CaPoolIssuancePolicy({
    this.allowedIssuanceModes,
    this.allowedKeyTypes,
    this.backdateDuration,
    this.baselineValues,
    this.identityConstraints,
    this.maximumLifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIssuanceModes': ?allowedIssuanceModes == null
          ? null
          : allowedIssuanceModes!.toMap(),
      'allowedKeyTypes': ?allowedKeyTypes == null
          ? null
          : pulumi.Input.encodeList<
              CaPoolIssuancePolicyAllowedKeyType,
              Map<String, dynamic>
            >(allowedKeyTypes!, (value) => value.toMap()),
      'backdateDuration': ?backdateDuration,
      'baselineValues': ?baselineValues == null
          ? null
          : baselineValues!.toMap(),
      'identityConstraints': ?identityConstraints == null
          ? null
          : identityConstraints!.toMap(),
      'maximumLifetime': ?maximumLifetime,
    };
  }

  factory CaPoolIssuancePolicy.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicy(
      allowedIssuanceModes: map['allowedIssuanceModes'] == null
          ? null
          : CaPoolIssuancePolicyAllowedIssuanceModes.fromMap(
              (map['allowedIssuanceModes'] as Map).cast<String, dynamic>(),
            ),
      allowedKeyTypes: map['allowedKeyTypes'] == null
          ? null
          : pulumi.Input.decodeList<CaPoolIssuancePolicyAllowedKeyType>(
              map['allowedKeyTypes'],
              (value) => CaPoolIssuancePolicyAllowedKeyType.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      backdateDuration: map['backdateDuration'] == null
          ? null
          : map['backdateDuration'] as String,
      baselineValues: map['baselineValues'] == null
          ? null
          : CaPoolIssuancePolicyBaselineValues.fromMap(
              (map['baselineValues'] as Map).cast<String, dynamic>(),
            ),
      identityConstraints: map['identityConstraints'] == null
          ? null
          : CaPoolIssuancePolicyIdentityConstraints.fromMap(
              (map['identityConstraints'] as Map).cast<String, dynamic>(),
            ),
      maximumLifetime: map['maximumLifetime'] == null
          ? null
          : map['maximumLifetime'] as String,
    );
  }
}
