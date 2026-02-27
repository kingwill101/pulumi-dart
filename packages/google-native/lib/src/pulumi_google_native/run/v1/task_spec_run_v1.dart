// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_run_v1.dart';
import 'volume_run_v1.dart';

/// TaskSpec is a description of a task.
class TaskSpecRunV1 {
  /// Optional. List of containers belonging to the task. We disallow a number of fields on this Container. Only a single container may be provided.
  final List<ContainerRunV1>? containers;

  /// Optional. Number of retries allowed per task, before marking this job failed. Defaults to 3.
  final int? maxRetries;

  /// Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final String? serviceAccountName;

  /// Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  final String? timeoutSeconds;

  /// Optional. List of volumes that can be mounted by containers belonging to the task.
  final List<VolumeRunV1>? volumes;

  TaskSpecRunV1({
    this.containers,
    this.maxRetries,
    this.serviceAccountName,
    this.timeoutSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] =
          pulumi.Input.encodeList<ContainerRunV1, Map<String, dynamic>>(
              containersValue, (value) => value.toMap());
    }
    final maxRetriesValue = maxRetries;
    if (maxRetriesValue != null) {
      map['maxRetries'] = maxRetriesValue;
    }
    final serviceAccountNameValue = serviceAccountName;
    if (serviceAccountNameValue != null) {
      map['serviceAccountName'] = serviceAccountNameValue;
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] =
          pulumi.Input.encodeList<VolumeRunV1, Map<String, dynamic>>(
              volumesValue, (value) => value.toMap());
    }
    return map;
  }

  factory TaskSpecRunV1.fromMap(Map<String, dynamic> map) {
    return TaskSpecRunV1(
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<ContainerRunV1>(
              map['containers'],
              (value) => ContainerRunV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      serviceAccountName: map['serviceAccountName'] == null
          ? null
          : map['serviceAccountName'] as String,
      timeoutSeconds: map['timeoutSeconds'] == null
          ? null
          : map['timeoutSeconds'] as String,
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<VolumeRunV1>(
              map['volumes'],
              (value) =>
                  VolumeRunV1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
