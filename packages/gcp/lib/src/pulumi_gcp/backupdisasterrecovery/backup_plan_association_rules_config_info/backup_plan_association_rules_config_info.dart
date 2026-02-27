// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_plan_association_rules_config_info_last_backup_error/backup_plan_association_rules_config_info_last_backup_error.dart';

class BackupPlanAssociationRulesConfigInfo {
  /// (Output)
  /// google.rpc.Status object to store the last backup error
  /// Structure is documented below.
  final List<BackupPlanAssociationRulesConfigInfoLastBackupError>?
      lastBackupErrors;

  /// (Output)
  /// State of last backup taken.
  final String? lastBackupState;

  /// (Output)
  /// Backup Rule id fetched from backup plan.
  final String? ruleId;

  BackupPlanAssociationRulesConfigInfo({
    this.lastBackupErrors,
    this.lastBackupState,
    this.ruleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lastBackupErrorsValue = lastBackupErrors;
    if (lastBackupErrorsValue != null) {
      map['lastBackupErrors'] = pulumi.Input.encodeList<
              BackupPlanAssociationRulesConfigInfoLastBackupError,
              Map<String, dynamic>>(
          lastBackupErrorsValue, (value) => value.toMap());
    }
    final lastBackupStateValue = lastBackupState;
    if (lastBackupStateValue != null) {
      map['lastBackupState'] = lastBackupStateValue;
    }
    final ruleIdValue = ruleId;
    if (ruleIdValue != null) {
      map['ruleId'] = ruleIdValue;
    }
    return map;
  }

  factory BackupPlanAssociationRulesConfigInfo.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanAssociationRulesConfigInfo(
      lastBackupErrors: map['lastBackupErrors'] == null
          ? null
          : pulumi.Input.decodeList<
                  BackupPlanAssociationRulesConfigInfoLastBackupError>(
              map['lastBackupErrors'],
              (value) =>
                  BackupPlanAssociationRulesConfigInfoLastBackupError.fromMap(
                      (value as Map).cast<String, dynamic>())),
      lastBackupState: map['lastBackupState'] == null
          ? null
          : map['lastBackupState'] as String,
      ruleId: map['ruleId'] == null ? null : map['ruleId'] as String,
    );
  }
}
