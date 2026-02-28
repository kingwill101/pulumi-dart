// ignore_for_file: unused_element, unnecessary_cast

class TableAutomatedBackupPolicy {
  /// How frequently automated backups should occur.
  final String? frequency;

  /// How long the automated backups should be retained.
  final String? retentionPeriod;

  /// Creates a new [TableAutomatedBackupPolicy].
  /// [frequency] How frequently automated backups should occur.
  /// [retentionPeriod] How long the automated backups should be retained.
  TableAutomatedBackupPolicy({
    this.frequency,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final frequencyValue = frequency;
    if (frequencyValue != null) {
      map['frequency'] = frequencyValue;
    }
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    return map;
  }

  factory TableAutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return TableAutomatedBackupPolicy(
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      retentionPeriod: map['retentionPeriod'] == null
          ? null
          : map['retentionPeriod'] as String,
    );
  }
}
