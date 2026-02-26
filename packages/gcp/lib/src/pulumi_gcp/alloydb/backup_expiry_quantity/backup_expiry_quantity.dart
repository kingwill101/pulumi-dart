// ignore_for_file: unused_element, unnecessary_cast

class BackupExpiryQuantity {
  /// (Output)
  /// Output only. The backup's position among its backups with the same source cluster and type, by descending chronological order create time (i.e. newest first).
  final int? retentionCount;

  /// (Output)
  /// Output only. The length of the quantity-based queue, specified by the backup's retention policy.
  final int? totalRetentionCount;

  BackupExpiryQuantity({
    this.retentionCount,
    this.totalRetentionCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retentionCountValue = retentionCount;
    if (retentionCountValue != null) {
      map['retentionCount'] = retentionCountValue;
    }
    final totalRetentionCountValue = totalRetentionCount;
    if (totalRetentionCountValue != null) {
      map['totalRetentionCount'] = totalRetentionCountValue;
    }
    return map;
  }

  factory BackupExpiryQuantity.fromMap(Map<String, dynamic> map) {
    return BackupExpiryQuantity(
      retentionCount:
          map['retentionCount'] == null ? null : map['retentionCount'] as int,
      totalRetentionCount: map['totalRetentionCount'] == null
          ? null
          : map['totalRetentionCount'] as int,
    );
  }
}
