// ignore_for_file: unused_element, unnecessary_cast

class GetDataSourceBackupConfigInfoGcpBackupConfig {
  /// The name of the backup plan.
  final String backupPlan;

  /// The name of the backup plan association.
  final String backupPlanAssociation;

  /// The description of the backup plan.
  final String backupPlanDescription;

  /// The names of the backup plan rules which point to this backupvault
  final List<String> backupPlanRules;

  /// Creates a new [GetDataSourceBackupConfigInfoGcpBackupConfig].
  /// [backupPlan] The name of the backup plan.
  /// [backupPlanAssociation] The name of the backup plan association.
  /// [backupPlanDescription] The description of the backup plan.
  /// [backupPlanRules] The names of the backup plan rules which point to this backupvault
  GetDataSourceBackupConfigInfoGcpBackupConfig({
    required this.backupPlan,
    required this.backupPlanAssociation,
    required this.backupPlanDescription,
    required this.backupPlanRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'backupPlanAssociation': backupPlanAssociation,
      'backupPlanDescription': backupPlanDescription,
      'backupPlanRules': backupPlanRules,
    };
  }

  factory GetDataSourceBackupConfigInfoGcpBackupConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSourceBackupConfigInfoGcpBackupConfig(
      backupPlan: map['backupPlan'] as String,
      backupPlanAssociation: map['backupPlanAssociation'] as String,
      backupPlanDescription: map['backupPlanDescription'] as String,
      backupPlanRules: (map['backupPlanRules'] as List).cast<String>(),
    );
  }
}
