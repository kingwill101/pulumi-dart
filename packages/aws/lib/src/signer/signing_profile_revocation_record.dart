// ignore_for_file: unused_element, unnecessary_cast

class SigningProfileRevocationRecord {
  /// The time when revocation becomes effective.
  final String? revocationEffectiveFrom;

  /// The time when the signing profile was revoked.
  final String? revokedAt;

  /// The identity of the revoker.
  final String? revokedBy;

  /// Creates a new [SigningProfileRevocationRecord].
  /// [revocationEffectiveFrom] The time when revocation becomes effective.
  /// [revokedAt] The time when the signing profile was revoked.
  /// [revokedBy] The identity of the revoker.
  SigningProfileRevocationRecord({
    this.revocationEffectiveFrom,
    this.revokedAt,
    this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final revocationEffectiveFromValue = revocationEffectiveFrom;
    if (revocationEffectiveFromValue != null) {
      map['revocationEffectiveFrom'] = revocationEffectiveFromValue;
    }
    final revokedAtValue = revokedAt;
    if (revokedAtValue != null) {
      map['revokedAt'] = revokedAtValue;
    }
    final revokedByValue = revokedBy;
    if (revokedByValue != null) {
      map['revokedBy'] = revokedByValue;
    }
    return map;
  }

  factory SigningProfileRevocationRecord.fromMap(Map<String, dynamic> map) {
    return SigningProfileRevocationRecord(
      revocationEffectiveFrom: map['revocationEffectiveFrom'] == null
          ? null
          : map['revocationEffectiveFrom'] as String,
      revokedAt: map['revokedAt'] == null ? null : map['revokedAt'] as String,
      revokedBy: map['revokedBy'] == null ? null : map['revokedBy'] as String,
    );
  }
}
