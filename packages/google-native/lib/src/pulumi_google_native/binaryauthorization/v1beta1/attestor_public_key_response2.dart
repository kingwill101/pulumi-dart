// ignore_for_file: unused_element, unnecessary_cast

import 'pkix_public_key_response2.dart';

/// An attestor public key that will be used to verify attestations signed by this attestor.
class AttestorPublicKeyResponse2 {
  /// ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The BinAuthz API handlers will calculate the ID and fill it in automatically. BinAuthz computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  final String asciiArmoredPgpPublicKey;

  /// Optional. A descriptive comment. This field may be updated.
  final String comment;

  /// A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  final PkixPublicKeyResponse2 pkixPublicKey;

  AttestorPublicKeyResponse2({
    required this.asciiArmoredPgpPublicKey,
    required this.comment,
    required this.pkixPublicKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asciiArmoredPgpPublicKey'] = asciiArmoredPgpPublicKey;
    map['comment'] = comment;
    map['pkixPublicKey'] = pkixPublicKey.toMap();
    return map;
  }

  factory AttestorPublicKeyResponse2.fromMap(Map<String, dynamic> map) {
    return AttestorPublicKeyResponse2(
      asciiArmoredPgpPublicKey: map['asciiArmoredPgpPublicKey'] as String,
      comment: map['comment'] as String,
      pkixPublicKey: PkixPublicKeyResponse2.fromMap(
          (map['pkixPublicKey'] as Map).cast<String, dynamic>()),
    );
  }
}
