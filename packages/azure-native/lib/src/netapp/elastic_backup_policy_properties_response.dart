// ignore_for_file: unused_element, unnecessary_cast


/// Elastic Backup Policy properties
class ElasticBackupPolicyPropertiesResponse {
  /// The number of volumes currently using this Backup Policy.
  final int assignedVolumesCount;
  /// Daily backups count to keep
  final int? dailyBackupsToKeep;
  /// Monthly backups count to keep
  final int? monthlyBackupsToKeep;
  /// The property to identify whether Backup Policy is enabled or not
  final String? policyState;
  /// Azure lifecycle management.
  final String provisioningState;
  /// Weekly backups count to keep
  final int? weeklyBackupsToKeep;

  /// Creates a new [ElasticBackupPolicyPropertiesResponse].
  /// [assignedVolumesCount] The number of volumes currently using this Backup Policy.
  /// [dailyBackupsToKeep] Daily backups count to keep
  /// [monthlyBackupsToKeep] Monthly backups count to keep
  /// [policyState] The property to identify whether Backup Policy is enabled or not
  /// [provisioningState] Azure lifecycle management.
  /// [weeklyBackupsToKeep] Weekly backups count to keep
  ElasticBackupPolicyPropertiesResponse({
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
      assignedVolumesCount: map['assignedVolumesCount'] as int,
      dailyBackupsToKeep: map['dailyBackupsToKeep'] == null ? null : map['dailyBackupsToKeep'] as int,
      monthlyBackupsToKeep: map['monthlyBackupsToKeep'] == null ? null : map['monthlyBackupsToKeep'] as int,
      policyState: map['policyState'] == null ? null : map['policyState'] as String,
      provisioningState: map['provisioningState'] as String,
      weeklyBackupsToKeep: map['weeklyBackupsToKeep'] == null ? null : map['weeklyBackupsToKeep'] as int,
    );
  }
}

