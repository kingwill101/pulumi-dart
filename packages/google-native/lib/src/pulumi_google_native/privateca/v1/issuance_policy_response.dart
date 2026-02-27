// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'allowed_key_type_response.dart';
import 'certificate_extension_constraints_response.dart';
import 'certificate_identity_constraints_response.dart';
import 'issuance_modes_response.dart';
import 'x509_parameters_response.dart';

/// Defines controls over all certificate issuance within a CaPool.
class IssuancePolicyResponse {
  /// Optional. If specified, then only methods allowed in the IssuanceModes may be used to issue Certificates.
  final IssuanceModesResponse allowedIssuanceModes;

  /// Optional. If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here. Otherwise, any key may be used.
  final List<AllowedKeyTypeResponse> allowedKeyTypes;

  /// Optional. A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate request uses a CertificateTemplate that defines conflicting predefined_values for the same properties, the certificate issuance request will fail.
  final X509ParametersResponse baselineValues;

  /// Optional. Describes constraints on identities that may appear in Certificates issued through this CaPool. If this is omitted, then this CaPool will not add restrictions on a certificate's identity.
  final CertificateIdentityConstraintsResponse identityConstraints;

  /// Optional. The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final String maximumLifetime;

  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued through this CaPool. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If a certificate request uses a CertificateTemplate with predefined_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this CaPool will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CaPool's baseline_values.
  final CertificateExtensionConstraintsResponse passthroughExtensions;

  IssuancePolicyResponse({
    required this.allowedIssuanceModes,
    required this.allowedKeyTypes,
    required this.baselineValues,
    required this.identityConstraints,
    required this.maximumLifetime,
    required this.passthroughExtensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIssuanceModes'] = allowedIssuanceModes.toMap();
    map['allowedKeyTypes'] =
        Input.encodeList<AllowedKeyTypeResponse, Map<String, dynamic>>(
            allowedKeyTypes, (value) => value.toMap());
    map['baselineValues'] = baselineValues.toMap();
    map['identityConstraints'] = identityConstraints.toMap();
    map['maximumLifetime'] = maximumLifetime;
    map['passthroughExtensions'] = passthroughExtensions.toMap();
    return map;
  }

  factory IssuancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return IssuancePolicyResponse(
      allowedIssuanceModes: IssuanceModesResponse.fromMap(
          (map['allowedIssuanceModes'] as Map).cast<String, dynamic>()),
      allowedKeyTypes: Input.decodeList<AllowedKeyTypeResponse>(
          map['allowedKeyTypes'],
          (value) => AllowedKeyTypeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      baselineValues: X509ParametersResponse.fromMap(
          (map['baselineValues'] as Map).cast<String, dynamic>()),
      identityConstraints: CertificateIdentityConstraintsResponse.fromMap(
          (map['identityConstraints'] as Map).cast<String, dynamic>()),
      maximumLifetime: map['maximumLifetime'] as String,
      passthroughExtensions: CertificateExtensionConstraintsResponse.fromMap(
          (map['passthroughExtensions'] as Map).cast<String, dynamic>()),
    );
  }
}
