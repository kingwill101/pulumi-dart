// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_response_run_v1.dart';
import 'volume_response_run_v1.dart';

/// TaskSpec is a description of a task.
class TaskSpecResponseRunV1 {
  /// Optional. List of containers belonging to the task. We disallow a number of fields on this Container. Only a single container may be provided.
  final List<ContainerResponseRunV1> containers;

  /// Optional. Number of retries allowed per task, before marking this job failed. Defaults to 3.
  final int maxRetries;

  /// Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final String serviceAccountName;

  /// Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  final String timeoutSeconds;

  /// Optional. List of volumes that can be mounted by containers belonging to the task.
  final List<VolumeResponseRunV1> volumes;

  TaskSpecResponseRunV1({
    required this.containers,
    required this.maxRetries,
    required this.serviceAccountName,
    required this.timeoutSeconds,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containers'] =
        pulumi.Input.encodeList<ContainerResponseRunV1, Map<String, dynamic>>(
            containers, (value) => value.toMap());
    map['maxRetries'] = maxRetries;
    map['serviceAccountName'] = serviceAccountName;
    map['timeoutSeconds'] = timeoutSeconds;
    map['volumes'] =
        pulumi.Input.encodeList<VolumeResponseRunV1, Map<String, dynamic>>(
            volumes, (value) => value.toMap());
    return map;
  }

  factory TaskSpecResponseRunV1.fromMap(Map<String, dynamic> map) {
    return TaskSpecResponseRunV1(
      containers: pulumi.Input.decodeList<ContainerResponseRunV1>(
          map['containers'],
          (value) => ContainerResponseRunV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      maxRetries: map['maxRetries'] as int,
      serviceAccountName: map['serviceAccountName'] as String,
      timeoutSeconds: map['timeoutSeconds'] as String,
      volumes: pulumi.Input.decodeList<VolumeResponseRunV1>(
          map['volumes'],
          (value) => VolumeResponseRunV1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
