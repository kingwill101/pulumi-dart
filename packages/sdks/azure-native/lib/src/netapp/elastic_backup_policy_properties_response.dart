// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Backup Policy properties
class ElasticBackupPolicyPropertiesResponse {
  /// The number of volumes currently using this Backup Policy.
  final pulumi.Input<int> assignedVolumesCount;
  /// Daily backups count to keep
  final pulumi.Input<int>? dailyBackupsToKeep;
  /// Monthly backups count to keep
  final pulumi.Input<int>? monthlyBackupsToKeep;
  /// The property to identify whether Backup Policy is enabled or not
  final pulumi.Input<String>? policyState;
  /// Azure lifecycle management.
  final pulumi.Input<String> provisioningState;
  /// Weekly backups count to keep
  final pulumi.Input<int>? weeklyBackupsToKeep;

  /// Creates a new [ElasticBackupPolicyPropertiesResponse].
  /// [assignedVolumesCount] The number of volumes currently using this Backup Policy.
  /// [dailyBackupsToKeep] Daily backups count to keep
  /// [monthlyBackupsToKeep] Monthly backups count to keep
  /// [policyState] The property to identify whether Backup Policy is enabled or not
  /// [provisioningState] Azure lifecycle management.
  /// [weeklyBackupsToKeep] Weekly backups count to keep
  const ElasticBackupPolicyPropertiesResponse({
    required this.assignedVolumesCount,
    this.dailyBackupsToKeep,
    this.monthlyBackupsToKeep,
    this.policyState,
    required this.provisioningState,
    this.weeklyBackupsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedVolumesCount': assignedVolumesCount,
      'dailyBackupsToKeep': ?dailyBackupsToKeep,
      'monthlyBackupsToKeep': ?monthlyBackupsToKeep,
      'policyState': ?policyState,
      'provisioningState': provisioningState,
      'weeklyBackupsToKeep': ?weeklyBackupsToKeep,
    };
  }

  factory ElasticBackupPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticBackupPolicyPropertiesResponse(
      assignedVolumesCount: pulumi.Input.fromValue(map['assignedVolumesCount'] as int),
      dailyBackupsToKeep: (() { final guardedValue = map['dailyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monthlyBackupsToKeep: (() { final guardedValue = map['monthlyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      policyState: (() { final guardedValue = map['policyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      weeklyBackupsToKeep: (() { final guardedValue = map['weeklyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
