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
    String? region,
    required String replicationTaskId,
    Map<String, String>? tags,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       replicationTaskId = pulumi.Input.asInput<String>(replicationTaskId),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationTaskId': replicationTaskId,
      'tags': ?tags,
    };
  }

  factory GetReplicationTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationTaskArgs(
      region: map['region'] == null ? null : map['region'] as String,
      replicationTaskId: map['replicationTaskId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
