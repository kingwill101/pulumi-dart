// ignore_for_file: unused_element, unnecessary_cast

class SigningJobRevocationRecord {
  final String? reason;
  final String? revokedAt;
  final String? revokedBy;

  /// Creates a new [SigningJobRevocationRecord].
  /// [reason] Optional.
  /// [revokedAt] Optional.
  /// [revokedBy] Optional.
  SigningJobRevocationRecord({this.reason, this.revokedAt, this.revokedBy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': ?reason,
      'revokedAt': ?revokedAt,
      'revokedBy': ?revokedBy,
    };
  }

  factory SigningJobRevocationRecord.fromMap(Map<String, dynamic> map) {
    return SigningJobRevocationRecord(
      reason: map['reason'] == null ? null : map['reason'] as String,
      revokedAt: map['revokedAt'] == null ? null : map['revokedAt'] as String,
      revokedBy: map['revokedBy'] == null ? null : map['revokedBy'] as String,
    );
  }
}
