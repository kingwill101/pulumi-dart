// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAutomatedBackupPolicyQuantityBasedRetention {
  /// The number of backups to retain.
  final int count;

  GetClusterAutomatedBackupPolicyQuantityBasedRetention({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    return map;
  }

  factory GetClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicyQuantityBasedRetention(
      count: map['count'] as int,
    );
  }
}
