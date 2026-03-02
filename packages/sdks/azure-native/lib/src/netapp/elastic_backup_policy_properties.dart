// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Backup Policy properties
class ElasticBackupPolicyProperties {
  /// Daily backups count to keep
  final pulumi.Input<int>? dailyBackupsToKeep;
  /// Monthly backups count to keep
  final pulumi.Input<int>? monthlyBackupsToKeep;
  /// The property to identify whether Backup Policy is enabled or not
  final pulumi.Input<String>? policyState;
  /// Weekly backups count to keep
  final pulumi.Input<int>? weeklyBackupsToKeep;

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
      dailyBackupsToKeep: map['dailyBackupsToKeep'] == null ? null : (map['dailyBackupsToKeep'] as int).input(),
      monthlyBackupsToKeep: map['monthlyBackupsToKeep'] == null ? null : (map['monthlyBackupsToKeep'] as int).input(),
      policyState: map['policyState'] == null ? null : (map['policyState'] as String).input(),
      weeklyBackupsToKeep: map['weeklyBackupsToKeep'] == null ? null : (map['weeklyBackupsToKeep'] as int).input(),
    );
  }
}

