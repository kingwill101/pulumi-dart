// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'container_response2.dart';
import 'volume_response5.dart';

/// TaskSpec is a description of a task.
class TaskSpecResponse2 {
  /// Optional. List of containers belonging to the task. We disallow a number of fields on this Container. Only a single container may be provided.
  final List<ContainerResponse2> containers;

  /// Optional. Number of retries allowed per task, before marking this job failed. Defaults to 3.
  final int maxRetries;

  /// Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final String serviceAccountName;

  /// Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  final String timeoutSeconds;

  /// Optional. List of volumes that can be mounted by containers belonging to the task.
  final List<VolumeResponse5> volumes;

  TaskSpecResponse2({
    required this.containers,
    required this.maxRetries,
    required this.serviceAccountName,
    required this.timeoutSeconds,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containers'] =
        Input.encodeList<ContainerResponse2, Map<String, dynamic>>(
            containers, (value) => value.toMap());
    map['maxRetries'] = maxRetries;
    map['serviceAccountName'] = serviceAccountName;
    map['timeoutSeconds'] = timeoutSeconds;
    map['volumes'] = Input.encodeList<VolumeResponse5, Map<String, dynamic>>(
        volumes, (value) => value.toMap());
    return map;
  }

  factory TaskSpecResponse2.fromMap(Map<String, dynamic> map) {
    return TaskSpecResponse2(
      containers: Input.decodeList<ContainerResponse2>(
          map['containers'],
          (value) => ContainerResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      maxRetries: map['maxRetries'] as int,
      serviceAccountName: map['serviceAccountName'] as String,
      timeoutSeconds: map['timeoutSeconds'] as String,
      volumes: Input.decodeList<VolumeResponse5>(
          map['volumes'],
          (value) =>
              VolumeResponse5.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
