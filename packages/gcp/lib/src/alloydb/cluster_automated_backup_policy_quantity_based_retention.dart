// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutomatedBackupPolicyQuantityBasedRetention {
  /// The number of backups to retain.
  final int? count;

  /// Creates a new [ClusterAutomatedBackupPolicyQuantityBasedRetention].
  /// [count] The number of backups to retain.
  ClusterAutomatedBackupPolicyQuantityBasedRetention({this.count});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': ?count};
  }

  factory ClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAutomatedBackupPolicyQuantityBasedRetention(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}
