// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_recovery_plan_boot_recovery_group_post_action.dart';
import 'replication_recovery_plan_boot_recovery_group_pre_action.dart';

class ReplicationRecoveryPlanBootRecoveryGroup {
  /// one or more `action` block as defined below. which will be executed after the group recovery.
  final List<ReplicationRecoveryPlanBootRecoveryGroupPostAction>? postActions;
  /// one or more `action` block as defined below. which will be executed before the group recovery.
  final List<ReplicationRecoveryPlanBootRecoveryGroupPreAction>? preActions;
  /// One or more protected VM IDs.
  final List<String>? replicatedProtectedItems;

  /// Creates a new [ReplicationRecoveryPlanBootRecoveryGroup].
  /// [postActions] one or more `action` block as defined below. which will be executed after the group recovery.
  /// [preActions] one or more `action` block as defined below. which will be executed before the group recovery.
  /// [replicatedProtectedItems] One or more protected VM IDs.
  ReplicationRecoveryPlanBootRecoveryGroup({
    this.postActions,
    this.preActions,
    this.replicatedProtectedItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postActions': ?postActions == null ? null : pulumi.Input.encodeList<ReplicationRecoveryPlanBootRecoveryGroupPostAction, Map<String, dynamic>>(postActions!, (value) => value.toMap()),
      'preActions': ?preActions == null ? null : pulumi.Input.encodeList<ReplicationRecoveryPlanBootRecoveryGroupPreAction, Map<String, dynamic>>(preActions!, (value) => value.toMap()),
      'replicatedProtectedItems': ?replicatedProtectedItems,
    };
  }

  factory ReplicationRecoveryPlanBootRecoveryGroup.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanBootRecoveryGroup(
      postActions: map['postActions'] == null ? null : pulumi.Input.decodeList<ReplicationRecoveryPlanBootRecoveryGroupPostAction>(map['postActions'], (value) => ReplicationRecoveryPlanBootRecoveryGroupPostAction.fromMap((value as Map).cast<String, dynamic>())),
      preActions: map['preActions'] == null ? null : pulumi.Input.decodeList<ReplicationRecoveryPlanBootRecoveryGroupPreAction>(map['preActions'], (value) => ReplicationRecoveryPlanBootRecoveryGroupPreAction.fromMap((value as Map).cast<String, dynamic>())),
      replicatedProtectedItems: map['replicatedProtectedItems'] == null ? null : (map['replicatedProtectedItems'] as List).cast<String>(),
    );
  }
}

