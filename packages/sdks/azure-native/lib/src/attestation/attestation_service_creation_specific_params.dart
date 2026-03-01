// ignore_for_file: unused_element, unnecessary_cast

import 'json_web_key_set.dart';

/// Client supplied parameters used to create a new attestation provider.
class AttestationServiceCreationSpecificParams {
  /// JSON Web Key Set defining a set of X.509 Certificates that will represent the parent certificate for the signing certificate used for policy operations
  final JsonWebKeySet? policySigningCertificates;
  /// Controls whether traffic from the public network is allowed to access the Attestation Provider APIs.
  final String? publicNetworkAccess;
  /// The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
  final String? tpmAttestationAuthentication;

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
      'policySigningCertificates': ?policySigningCertificates == null ? null : policySigningCertificates!.toMap(),
      'publicNetworkAccess': ?publicNetworkAccess,
      'tpmAttestationAuthentication': ?tpmAttestationAuthentication,
    };
  }

  factory AttestationServiceCreationSpecificParams.fromMap(Map<String, dynamic> map) {
    return AttestationServiceCreationSpecificParams(
      policySigningCertificates: map['policySigningCertificates'] == null ? null : JsonWebKeySet.fromMap((map['policySigningCertificates'] as Map).cast<String, dynamic>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      tpmAttestationAuthentication: map['tpmAttestationAuthentication'] == null ? null : map['tpmAttestationAuthentication'] as String,
    );
  }
}

