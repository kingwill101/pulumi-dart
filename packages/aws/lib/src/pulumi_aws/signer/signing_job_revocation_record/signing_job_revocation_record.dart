// ignore_for_file: unused_element, unnecessary_cast

class SigningJobRevocationRecord {
  final String? reason;
  final String? revokedAt;
  final String? revokedBy;

  SigningJobRevocationRecord({
    this.reason,
    this.revokedAt,
    this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
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

  factory SigningJobRevocationRecord.fromMap(Map<String, dynamic> map) {
    return SigningJobRevocationRecord(
      reason: map['reason'] == null ? null : map['reason'] as String,
      revokedAt: map['revokedAt'] == null ? null : map['revokedAt'] as String,
      revokedBy: map['revokedBy'] == null ? null : map['revokedBy'] as String,
    );
  }
}
