// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pkix_public_key.dart';

/// A bundle of PKIX public keys, used to authenticate attestation signatures. Generally, a signature is considered to be authenticated by a `PkixPublicKeySet` if any of the public keys verify it (i.e. it is an "OR" of the keys).
class PkixPublicKeySet {
  /// `pkix_public_keys` must have at least one entry.
  final List<PkixPublicKey> pkixPublicKeys;

  /// Creates a new [PkixPublicKeySet].
  /// [pkixPublicKeys] `pkix_public_keys` must have at least one entry.
  PkixPublicKeySet({
    required this.pkixPublicKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pkixPublicKeys'] =
        pulumi.Input.encodeList<PkixPublicKey, Map<String, dynamic>>(
            pkixPublicKeys, (value) => value.toMap());
    return map;
  }

  factory PkixPublicKeySet.fromMap(Map<String, dynamic> map) {
    return PkixPublicKeySet(
      pkixPublicKeys: pulumi.Input.decodeList<PkixPublicKey>(
          map['pkixPublicKeys'],
          (value) =>
              PkixPublicKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
