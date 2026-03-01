// ignore_for_file: unused_element, unnecessary_cast

class GetSigningJobRevocationRecord {
  final String reason;
  final String revokedAt;
  final String revokedBy;

  /// Creates a new [GetSigningJobRevocationRecord].
  /// [reason] Required.
  /// [revokedAt] Required.
  /// [revokedBy] Required.
  GetSigningJobRevocationRecord({
    required this.reason,
    required this.revokedAt,
    required this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
      'revokedAt': revokedAt,
      'revokedBy': revokedBy,
    };
  }

  factory GetSigningJobRevocationRecord.fromMap(Map<String, dynamic> map) {
    return GetSigningJobRevocationRecord(
      reason: map['reason'] as String,
      revokedAt: map['revokedAt'] as String,
      revokedBy: map['revokedBy'] as String,
    );
  }
}
