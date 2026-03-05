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
    this.bucket,
    this.createTime,
    this.status,
    this.taskId,
  });

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
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskId: (() { final guardedValue = map['taskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

