// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutomatedBackupPolicyQuantityBasedRetention {
  /// The number of backups to retain.
  final int? count;

  ClusterAutomatedBackupPolicyQuantityBasedRetention({
    this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    return map;
  }

  factory ClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap(
      Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicyQuantityBasedRetention(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}
