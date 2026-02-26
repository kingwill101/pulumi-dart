// ignore_for_file: unused_element, unnecessary_cast

import 'pkix_public_key_set_response.dart';

/// An attestation authenticator that will be used to verify attestations. Typically this is just a set of public keys. Conceptually, an authenticator can be treated as always returning either "authenticated" or "not authenticated" when presented with a signed attestation (almost always assumed to be a [DSSE](https://github.com/secure-systems-lab/dsse) attestation). The details of how an authenticator makes this decision are specific to the type of 'authenticator' that this message wraps.
class AttestationAuthenticatorResponse {
  /// Optional. A user-provided name for this `AttestationAuthenticator`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  final String displayName;

  /// Optional. A set of raw PKIX SubjectPublicKeyInfo format public keys. If any public key in the set validates the attestation signature, then the signature is considered authenticated (i.e. any one key is sufficient to authenticate).
  final PkixPublicKeySetResponse pkixPublicKeySet;

  AttestationAuthenticatorResponse({
    required this.displayName,
    required this.pkixPublicKeySet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['pkixPublicKeySet'] = pkixPublicKeySet.toMap();
    return map;
  }

  factory AttestationAuthenticatorResponse.fromMap(Map<String, dynamic> map) {
    return AttestationAuthenticatorResponse(
      displayName: map['displayName'] as String,
      pkixPublicKeySet: PkixPublicKeySetResponse.fromMap(
          (map['pkixPublicKeySet'] as Map).cast<String, dynamic>()),
    );
  }
}
