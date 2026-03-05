// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_backup_plans_plan_detail.dart';

class GetServerBackupPlansPlan {
  /// The creation time of backup plan.
  final pulumi.Input<String> createTime;
  /// ECS server backup plan details.
  final pulumi.Input<List<GetServerBackupPlansPlanDetail>> details;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  final pulumi.Input<bool> disabled;
  /// The ID of the server backup plan.
  final pulumi.Input<String> ecsServerBackupPlanId;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String> ecsServerBackupPlanName;
  /// The ID of the server backup plan.
  final pulumi.Input<String> id;
  /// The ID of ECS Instance.
  final pulumi.Input<String> instanceId;
  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;
  /// Backup strategy.
  final pulumi.Input<String> schedule;

  /// Creates a new [GetServerBackupPlansPlan].
  /// [createTime] The creation time of backup plan.
  /// [details] ECS server backup plan details.
  /// [disabled] Whether to disable the backup task. Valid values: `true`, `false`.
  /// [ecsServerBackupPlanId] The ID of the server backup plan.
  /// [ecsServerBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [id] The ID of the server backup plan.
  /// [instanceId] The ID of ECS Instance.
  /// [retention] Backup retention days, the minimum is 1.
  /// [schedule] Backup strategy.
  GetServerBackupPlansPlan({
    required this.createTime,
    required this.details,
    required this.disabled,
    required this.ecsServerBackupPlanId,
    required this.ecsServerBackupPlanName,
    required this.id,
    required this.instanceId,
    required this.retention,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'details': pulumi.Input.mapInputValue<List<GetServerBackupPlansPlanDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<GetServerBackupPlansPlanDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabled': disabled,
      'ecsServerBackupPlanId': ecsServerBackupPlanId,
      'ecsServerBackupPlanName': ecsServerBackupPlanName,
      'id': id,
      'instanceId': instanceId,
      'retention': retention,
      'schedule': schedule,
    };
  }

  factory GetServerBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetServerBackupPlansPlan(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      details: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServerBackupPlansPlanDetail>(map['details']!, (value) => GetServerBackupPlansPlanDetail.fromMap((value as Map).cast<String, dynamic>()))),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      ecsServerBackupPlanId: pulumi.Input.fromValue(map['ecsServerBackupPlanId'] as String),
      ecsServerBackupPlanName: pulumi.Input.fromValue(map['ecsServerBackupPlanName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}

