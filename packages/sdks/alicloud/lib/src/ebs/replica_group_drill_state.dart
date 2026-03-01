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
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? replicaGroupDrillId,
    pulumi.Output<String>? status,
  }) :
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      replicaGroupDrillId = pulumi.Input.asOptionalInput<String>(replicaGroupDrillId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'replicaGroupDrillId': ?replicaGroupDrillId,
      'status': ?status,
    };
  }

  factory ReplicaGroupDrillState.fromMap(Map<String, dynamic> map) {
    return ReplicaGroupDrillState(
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      replicaGroupDrillId: map['replicaGroupDrillId'] == null ? null : pulumi.Output.create<String>(map['replicaGroupDrillId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

