// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicaGroupDrill resources.
class ReplicaGroupDrillState {
  /// The ID of the replication group. You can use the describediskreplicaggroups interface to query the asynchronous replication group list to obtain the value of the replication group ID input parameter.
  final pulumi.Input<String>? groupId;
  /// The first ID of the resource.
  final pulumi.Input<String>? replicaGroupDrillId;
  /// Walkthrough status. _failed: Execution failed._failed: Cleanup failed.
  final pulumi.Input<String>? status;

  /// Creates a new [ReplicaGroupDrillState].
  /// [groupId] The ID of the replication group. You can use the describediskreplicaggroups interface to query the asynchronous replication group list to obtain the value of the replication group ID input parameter.
  /// [replicaGroupDrillId] The first ID of the resource.
  /// [status] Walkthrough status. _failed: Execution failed._failed: Cleanup failed.
  ReplicaGroupDrillState({
    this.groupId,
    this.replicaGroupDrillId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'replicaGroupDrillId': ?replicaGroupDrillId,
      'status': ?status,
    };
  }

  factory ReplicaGroupDrillState.fromMap(Map<String, dynamic> map) {
    return ReplicaGroupDrillState(
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      replicaGroupDrillId: map['replicaGroupDrillId'] == null ? null : (map['replicaGroupDrillId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

