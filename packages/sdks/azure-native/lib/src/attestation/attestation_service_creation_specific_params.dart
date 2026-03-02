// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_web_key_set.dart';

/// Client supplied parameters used to create a new attestation provider.
class AttestationServiceCreationSpecificParams {
  /// JSON Web Key Set defining a set of X.509 Certificates that will represent the parent certificate for the signing certificate used for policy operations
  final pulumi.Input<JsonWebKeySet>? policySigningCertificates;
  /// Controls whether traffic from the public network is allowed to access the Attestation Provider APIs.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
  final pulumi.Input<String>? tpmAttestationAuthentication;

  /// Creates a new [AttestationServiceCreationSpecificParams].
  /// [policySigningCertificates] JSON Web Key Set defining a set of X.509 Certificates that will represent the parent certificate for the signing certificate used for policy operations
  /// [publicNetworkAccess] Controls whether traffic from the public network is allowed to access the Attestation Provider APIs.
  /// [tpmAttestationAuthentication] The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
  AttestationServiceCreationSpecificParams({
    this.policySigningCertificates,
    this.publicNetworkAccess,
    this.tpmAttestationAuthentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policySigningCertificates': ?pulumi.Input.mapOptionalInputValue<JsonWebKeySet, Map<String, dynamic>>(policySigningCertificates, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'tpmAttestationAuthentication': ?tpmAttestationAuthentication,
    };
  }

  factory AttestationServiceCreationSpecificParams.fromMap(Map<String, dynamic> map) {
    return AttestationServiceCreationSpecificParams(
      policySigningCertificates: map['policySigningCertificates'] == null ? null : (JsonWebKeySet.fromMap((map['policySigningCertificates'] as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      tpmAttestationAuthentication: map['tpmAttestationAuthentication'] == null ? null : (map['tpmAttestationAuthentication'] as String).input(),
    );
  }
}

