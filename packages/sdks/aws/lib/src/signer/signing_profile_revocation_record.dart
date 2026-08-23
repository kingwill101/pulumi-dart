// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SigningProfileRevocationRecord {
  /// The time when revocation becomes effective.
  final pulumi.Input<String>? revocationEffectiveFrom;
  /// The time when the signing profile was revoked.
  final pulumi.Input<String>? revokedAt;
  /// The identity of the revoker.
  final pulumi.Input<String>? revokedBy;

  /// Creates a new [SigningProfileRevocationRecord].
  /// [revocationEffectiveFrom] The time when revocation becomes effective.
  /// [revokedAt] The time when the signing profile was revoked.
  /// [revokedBy] The identity of the revoker.
  const SigningProfileRevocationRecord({
    this.revocationEffectiveFrom,
    this.revokedAt,
    this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revocationEffectiveFrom': ?revocationEffectiveFrom,
      'revokedAt': ?revokedAt,
      'revokedBy': ?revokedBy,
    };
  }

  factory SigningProfileRevocationRecord.fromMap(Map<String, dynamic> map) {
    return SigningProfileRevocationRecord(
      revocationEffectiveFrom: (() { final guardedValue = map['revocationEffectiveFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revokedAt: (() { final guardedValue = map['revokedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revokedBy: (() { final guardedValue = map['revokedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
