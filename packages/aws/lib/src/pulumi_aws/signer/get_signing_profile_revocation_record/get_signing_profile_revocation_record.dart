// ignore_for_file: unused_element, unnecessary_cast

class GetSigningProfileRevocationRecord {
  final String revocationEffectiveFrom;
  final String revokedAt;
  final String revokedBy;

  GetSigningProfileRevocationRecord({
    required this.revocationEffectiveFrom,
    required this.revokedAt,
    required this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['revocationEffectiveFrom'] = revocationEffectiveFrom;
    map['revokedAt'] = revokedAt;
    map['revokedBy'] = revokedBy;
    return map;
  }

  factory GetSigningProfileRevocationRecord.fromMap(Map<String, dynamic> map) {
    return GetSigningProfileRevocationRecord(
      revocationEffectiveFrom: map['revocationEffectiveFrom'] as String,
      revokedAt: map['revokedAt'] as String,
      revokedBy: map['revokedBy'] as String,
    );
  }
}
