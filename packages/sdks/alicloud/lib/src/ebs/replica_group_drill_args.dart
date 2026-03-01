// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_replica_group_drill_replica_group_drill_args_doc}
/// The set of arguments for ReplicaGroupDrill.
/// {@endtemplate}
/// {@macro pulumi_ebs_replica_group_drill_replica_group_drill_args_doc}
class ReplicaGroupDrillArgs {
  /// The ID of the replication group. You can use the describediskreplicaggroups interface to query the asynchronous replication group list to obtain the value of the replication group ID input parameter.
  final pulumi.Input<String> groupId;

  /// Creates a new [ReplicaGroupDrillArgs].
  /// [groupId] The ID of the replication group. You can use the describediskreplicaggroups interface to query the asynchronous replication group list to obtain the value of the replication group ID input parameter.
  ReplicaGroupDrillArgs({
    required pulumi.Output<String> groupId,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
    };
  }

  factory ReplicaGroupDrillArgs.fromMap(Map<String, dynamic> map) {
    return ReplicaGroupDrillArgs(
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
    );
  }
}

