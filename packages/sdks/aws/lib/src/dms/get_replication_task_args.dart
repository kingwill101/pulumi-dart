// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_replication_task_get_replication_task_args_doc}
/// Arguments for getReplicationTask.
/// {@endtemplate}
/// {@macro pulumi_dms_get_replication_task_get_replication_task_args_doc}
class GetReplicationTaskArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The replication task identifier.
  final pulumi.Input<String> replicationTaskId;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetReplicationTaskArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationTaskId] The replication task identifier.
  /// [tags] Optional.
  GetReplicationTaskArgs({
    this.region,
    required this.replicationTaskId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationTaskId': replicationTaskId,
      'tags': ?tags,
    };
  }

  factory GetReplicationTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationTaskArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationTaskId: pulumi.Input.fromValue(
        map['replicationTaskId'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
