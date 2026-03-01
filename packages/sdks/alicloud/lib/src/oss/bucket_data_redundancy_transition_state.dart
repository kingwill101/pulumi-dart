// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketDataRedundancyTransition resources.
class BucketDataRedundancyTransitionState {
  /// Storage space name.
  final pulumi.Input<String>? bucket;
  /// Stores the creation time of the redundant transformation task.
  final pulumi.Input<String>? createTime;
  /// Stores the state of the redundant translation task. The values are as follows:  Queueing: in the queue.  Processing: In progress.  Finished: Finished.
  final pulumi.Input<String>? status;
  /// Unique identification of the storage redundancy conversion task.
  final pulumi.Input<String>? taskId;

  /// Creates a new [BucketDataRedundancyTransitionState].
  /// [bucket] Storage space name.
  /// [createTime] Stores the creation time of the redundant transformation task.
  /// [status] Stores the state of the redundant translation task. The values are as follows:  Queueing: in the queue.  Processing: In progress.  Finished: Finished.
  /// [taskId] Unique identification of the storage redundancy conversion task.
  BucketDataRedundancyTransitionState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? status,
    pulumi.Output<String>? taskId,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      status = pulumi.Input.asOptionalInput<String>(status),
      taskId = pulumi.Input.asOptionalInput<String>(taskId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'createTime': ?createTime,
      'status': ?status,
      'taskId': ?taskId,
    };
  }

  factory BucketDataRedundancyTransitionState.fromMap(Map<String, dynamic> map) {
    return BucketDataRedundancyTransitionState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      taskId: map['taskId'] == null ? null : pulumi.Output.create<String>(map['taskId'] as String),
    );
  }
}

