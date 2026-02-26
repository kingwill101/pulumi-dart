// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_backup_plan_associations_association_rules_config_info_last_backup_error/get_backup_plan_associations_association_rules_config_info_last_backup_error.dart';

class GetBackupPlanAssociationsAssociationRulesConfigInfo {
  /// A block containing details of the last backup error, if any.
  final List<GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError>
      lastBackupErrors;

  /// State of last backup taken.
  final String lastBackupState;

  /// The point in time when the last successful backup was captured from the source.
  final String lastSuccessfulBackupConsistencyTime;

  /// Backup Rule id fetched from backup plan.
  final String ruleId;

  GetBackupPlanAssociationsAssociationRulesConfigInfo({
    required this.lastBackupErrors,
    required this.lastBackupState,
    required this.lastSuccessfulBackupConsistencyTime,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastBackupErrors'] = Input.encodeList<
        GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError,
        Map<String, dynamic>>(lastBackupErrors, (value) => value.toMap());
    map['lastBackupState'] = lastBackupState;
    map['lastSuccessfulBackupConsistencyTime'] =
        lastSuccessfulBackupConsistencyTime;
    map['ruleId'] = ruleId;
    return map;
  }

  factory GetBackupPlanAssociationsAssociationRulesConfigInfo.fromMap(
      Map<String, dynamic> map) {
    return GetBackupPlanAssociationsAssociationRulesConfigInfo(
      lastBackupErrors: Input.decodeList<
              GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError>(
          map['lastBackupErrors'],
          (value) =>
              GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError
                  .fromMap((value as Map).cast<String, dynamic>())),
      lastBackupState: map['lastBackupState'] as String,
      lastSuccessfulBackupConsistencyTime:
          map['lastSuccessfulBackupConsistencyTime'] as String,
      ruleId: map['ruleId'] as String,
    );
  }
}
