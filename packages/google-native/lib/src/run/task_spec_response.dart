// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_response.dart';
import 'volume_response.dart';

/// TaskSpec is a description of a task.
class TaskSpecResponse {
  /// Optional. List of containers belonging to the task. We disallow a number of fields on this Container. Only a single container may be provided.
  final List<ContainerResponse> containers;

  /// Optional. Number of retries allowed per task, before marking this job failed. Defaults to 3.
  final int maxRetries;

  /// Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final String serviceAccountName;

  /// Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  final String timeoutSeconds;

  /// Optional. List of volumes that can be mounted by containers belonging to the task.
  final List<VolumeResponse> volumes;

  /// Creates a new [TaskSpecResponse].
  /// [containers] Optional. List of containers belonging to the task. We disallow a number of fields on this Container. Only a single container may be provided.
  /// [maxRetries] Optional. Number of retries allowed per task, before marking this job failed. Defaults to 3.
  /// [serviceAccountName] Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  /// [timeoutSeconds] Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  /// [volumes] Optional. List of volumes that can be mounted by containers belonging to the task.
  TaskSpecResponse({
    required this.containers,
    required this.maxRetries,
    required this.serviceAccountName,
    required this.timeoutSeconds,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers':
          pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(
            containers,
            (value) => value.toMap(),
          ),
      'maxRetries': maxRetries,
      'serviceAccountName': serviceAccountName,
      'timeoutSeconds': timeoutSeconds,
      'volumes': pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(
        volumes,
        (value) => value.toMap(),
      ),
    };
  }

  factory TaskSpecResponse.fromMap(Map<String, dynamic> map) {
    return TaskSpecResponse(
      containers: pulumi.Input.decodeList<ContainerResponse>(
        map['containers'],
        (value) =>
            ContainerResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      maxRetries: map['maxRetries'] as int,
      serviceAccountName: map['serviceAccountName'] as String,
      timeoutSeconds: map['timeoutSeconds'] as String,
      volumes: pulumi.Input.decodeList<VolumeResponse>(
        map['volumes'],
        (value) =>
            VolumeResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
