// ignore_for_file: unused_element, unnecessary_cast

class GetSigningJobRevocationRecord {
  final String reason;
  final String revokedAt;
  final String revokedBy;

  GetSigningJobRevocationRecord({
    required this.reason,
    required this.revokedAt,
    required this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reason'] = reason;
    map['revokedAt'] = revokedAt;
    map['revokedBy'] = revokedBy;
    return map;
  }

  factory GetSigningJobRevocationRecord.fromMap(Map<String, dynamic> map) {
    return GetSigningJobRevocationRecord(
      reason: map['reason'] as String,
      revokedAt: map['revokedAt'] as String,
      revokedBy: map['revokedBy'] as String,
    );
  }
}
