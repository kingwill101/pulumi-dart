// ignore_for_file: unused_element, unnecessary_cast


/// Elastic Backup Policy properties
class ElasticBackupPolicyProperties {
  /// Daily backups count to keep
  final int? dailyBackupsToKeep;
  /// Monthly backups count to keep
  final int? monthlyBackupsToKeep;
  /// The property to identify whether Backup Policy is enabled or not
  final String? policyState;
  /// Weekly backups count to keep
  final int? weeklyBackupsToKeep;

  /// Creates a new [ElasticBackupPolicyProperties].
  /// [dailyBackupsToKeep] Daily backups count to keep
  /// [monthlyBackupsToKeep] Monthly backups count to keep
  /// [policyState] The property to identify whether Backup Policy is enabled or not
  /// [weeklyBackupsToKeep] Weekly backups count to keep
  ElasticBackupPolicyProperties({
    this.dailyBackupsToKeep,
    this.monthlyBackupsToKeep,
    this.policyState,
    this.weeklyBackupsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyBackupsToKeep': ?dailyBackupsToKeep,
      'monthlyBackupsToKeep': ?monthlyBackupsToKeep,
      'policyState': ?policyState,
      'weeklyBackupsToKeep': ?weeklyBackupsToKeep,
    };
  }

  factory ElasticBackupPolicyProperties.fromMap(Map<String, dynamic> map) {
    return ElasticBackupPolicyProperties(
      dailyBackupsToKeep: map['dailyBackupsToKeep'] == null ? null : map['dailyBackupsToKeep'] as int,
      monthlyBackupsToKeep: map['monthlyBackupsToKeep'] == null ? null : map['monthlyBackupsToKeep'] as int,
      policyState: map['policyState'] == null ? null : map['policyState'] as String,
      weeklyBackupsToKeep: map['weeklyBackupsToKeep'] == null ? null : map['weeklyBackupsToKeep'] as int,
    );
  }
}

