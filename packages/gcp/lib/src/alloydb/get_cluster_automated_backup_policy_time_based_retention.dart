// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAutomatedBackupPolicyTimeBasedRetention {
  /// The retention period.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String retentionPeriod;

  /// Creates a new [GetClusterAutomatedBackupPolicyTimeBasedRetention].
  /// [retentionPeriod] The retention period.
  GetClusterAutomatedBackupPolicyTimeBasedRetention({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionPeriod'] = retentionPeriod;
    return map;
  }

  factory GetClusterAutomatedBackupPolicyTimeBasedRetention.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicyTimeBasedRetention(
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
