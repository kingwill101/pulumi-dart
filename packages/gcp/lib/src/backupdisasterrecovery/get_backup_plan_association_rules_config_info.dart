// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_association_rules_config_info_last_backup_error.dart';

class GetBackupPlanAssociationRulesConfigInfo {
  /// google.rpc.Status object to store the last backup error
  final List<GetBackupPlanAssociationRulesConfigInfoLastBackupError>
  lastBackupErrors;

  /// State of last backup taken.
  final String lastBackupState;

  /// Backup Rule id fetched from backup plan.
  final String ruleId;

  /// Creates a new [GetBackupPlanAssociationRulesConfigInfo].
  /// [lastBackupErrors] google.rpc.Status object to store the last backup error
  /// [lastBackupState] State of last backup taken.
  /// [ruleId] Backup Rule id fetched from backup plan.
  GetBackupPlanAssociationRulesConfigInfo({
    required this.lastBackupErrors,
    required this.lastBackupState,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastBackupErrors':
          pulumi.Input.encodeList<
            GetBackupPlanAssociationRulesConfigInfoLastBackupError,
            Map<String, dynamic>
          >(lastBackupErrors, (value) => value.toMap()),
      'lastBackupState': lastBackupState,
      'ruleId': ruleId,
    };
  }

  factory GetBackupPlanAssociationRulesConfigInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBackupPlanAssociationRulesConfigInfo(
      lastBackupErrors:
          pulumi.Input.decodeList<
            GetBackupPlanAssociationRulesConfigInfoLastBackupError
          >(
            map['lastBackupErrors'],
            (value) =>
                GetBackupPlanAssociationRulesConfigInfoLastBackupError.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      lastBackupState: map['lastBackupState'] as String,
      ruleId: map['ruleId'] as String,
    );
  }
}
