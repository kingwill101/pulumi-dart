// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_key_type.dart';
import 'certificate_extension_constraints.dart';
import 'certificate_identity_constraints.dart';
import 'issuance_modes.dart';
import 'x509_parameters.dart';

/// Defines controls over all certificate issuance within a CaPool.
class IssuancePolicy {
  /// Optional. If specified, then only methods allowed in the IssuanceModes may be used to issue Certificates.
  final IssuanceModes? allowedIssuanceModes;

  /// Optional. If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here. Otherwise, any key may be used.
  final List<AllowedKeyType>? allowedKeyTypes;

  /// Optional. A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate request uses a CertificateTemplate that defines conflicting predefined_values for the same properties, the certificate issuance request will fail.
  final X509Parameters? baselineValues;

  /// Optional. Describes constraints on identities that may appear in Certificates issued through this CaPool. If this is omitted, then this CaPool will not add restrictions on a certificate's identity.
  final CertificateIdentityConstraints? identityConstraints;

  /// Optional. The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final String? maximumLifetime;

  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued through this CaPool. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If a certificate request uses a CertificateTemplate with predefined_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this CaPool will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CaPool's baseline_values.
  final CertificateExtensionConstraints? passthroughExtensions;

  IssuancePolicy({
    this.allowedIssuanceModes,
    this.allowedKeyTypes,
    this.baselineValues,
    this.identityConstraints,
    this.maximumLifetime,
    this.passthroughExtensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedIssuanceModesValue = allowedIssuanceModes;
    if (allowedIssuanceModesValue != null) {
      map['allowedIssuanceModes'] = allowedIssuanceModesValue.toMap();
    }
    final allowedKeyTypesValue = allowedKeyTypes;
    if (allowedKeyTypesValue != null) {
      map['allowedKeyTypes'] =
          pulumi.Input.encodeList<AllowedKeyType, Map<String, dynamic>>(
              allowedKeyTypesValue, (value) => value.toMap());
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
    final passthroughExtensionsValue = passthroughExtensions;
    if (passthroughExtensionsValue != null) {
      map['passthroughExtensions'] = passthroughExtensionsValue.toMap();
    }
    return map;
  }

  factory IssuancePolicy.fromMap(Map<String, dynamic> map) {
    return IssuancePolicy(
      allowedIssuanceModes: map['allowedIssuanceModes'] == null
          ? null
          : IssuanceModes.fromMap(
              (map['allowedIssuanceModes'] as Map).cast<String, dynamic>()),
      allowedKeyTypes: map['allowedKeyTypes'] == null
          ? null
          : pulumi.Input.decodeList<AllowedKeyType>(
              map['allowedKeyTypes'],
              (value) => AllowedKeyType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      baselineValues: map['baselineValues'] == null
          ? null
          : X509Parameters.fromMap(
              (map['baselineValues'] as Map).cast<String, dynamic>()),
      identityConstraints: map['identityConstraints'] == null
          ? null
          : CertificateIdentityConstraints.fromMap(
              (map['identityConstraints'] as Map).cast<String, dynamic>()),
      maximumLifetime: map['maximumLifetime'] == null
          ? null
          : map['maximumLifetime'] as String,
      passthroughExtensions: map['passthroughExtensions'] == null
          ? null
          : CertificateExtensionConstraints.fromMap(
              (map['passthroughExtensions'] as Map).cast<String, dynamic>()),
    );
  }
}
