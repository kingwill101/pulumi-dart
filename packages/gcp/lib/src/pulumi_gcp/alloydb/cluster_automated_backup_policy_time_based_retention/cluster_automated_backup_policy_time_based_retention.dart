// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutomatedBackupPolicyTimeBasedRetention {
  /// The retention period.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? retentionPeriod;

  ClusterAutomatedBackupPolicyTimeBasedRetention({
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    return map;
  }

  factory ClusterAutomatedBackupPolicyTimeBasedRetention.fromMap(
      Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicyTimeBasedRetention(
      retentionPeriod: map['retentionPeriod'] == null
          ? null
          : map['retentionPeriod'] as String,
    );
  }
}
