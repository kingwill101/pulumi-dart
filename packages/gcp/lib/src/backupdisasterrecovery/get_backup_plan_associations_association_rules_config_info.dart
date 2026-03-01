// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_associations_association_rules_config_info_last_backup_error.dart';

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

  /// Creates a new [GetBackupPlanAssociationsAssociationRulesConfigInfo].
  /// [lastBackupErrors] A block containing details of the last backup error, if any.
  /// [lastBackupState] State of last backup taken.
  /// [lastSuccessfulBackupConsistencyTime] The point in time when the last successful backup was captured from the source.
  /// [ruleId] Backup Rule id fetched from backup plan.
  GetBackupPlanAssociationsAssociationRulesConfigInfo({
    required this.lastBackupErrors,
    required this.lastBackupState,
    required this.lastSuccessfulBackupConsistencyTime,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastBackupErrors':
          pulumi.Input.encodeList<
            GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError,
            Map<String, dynamic>
          >(lastBackupErrors, (value) => value.toMap()),
      'lastBackupState': lastBackupState,
      'lastSuccessfulBackupConsistencyTime':
          lastSuccessfulBackupConsistencyTime,
      'ruleId': ruleId,
    };
  }

  factory GetBackupPlanAssociationsAssociationRulesConfigInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBackupPlanAssociationsAssociationRulesConfigInfo(
      lastBackupErrors:
          pulumi.Input.decodeList<
            GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError
          >(
            map['lastBackupErrors'],
            (value) =>
                GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      lastBackupState: map['lastBackupState'] as String,
      lastSuccessfulBackupConsistencyTime:
          map['lastSuccessfulBackupConsistencyTime'] as String,
      ruleId: map['ruleId'] as String,
    );
  }
}
