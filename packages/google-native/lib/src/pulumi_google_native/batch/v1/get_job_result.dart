// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'allocation_policy_response.dart';
import 'job_notification_response.dart';
import 'job_status_response.dart';
import 'logs_policy_response.dart';
import 'task_group_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// Compute resource allocation for all TaskGroups in the Job.
  final AllocationPolicyResponse allocationPolicy;

  /// When the Job was created.
  final String createTime;

  /// Labels for the Job. Labels could be user provided or system generated. For example, "labels": { "department": "finance", "environment": "test" } You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  final Map<String, String> labels;

  /// Log preservation policy for the Job.
  final LogsPolicyResponse logsPolicy;

  /// Job name. For example: "projects/123456/locations/us-central1/jobs/job01".
  final String name;

  /// Notification configurations.
  final List<JobNotificationResponse> notifications;

  /// Priority of the Job. The valid value range is [0, 100). Default value is 0. Higher value indicates higher priority. A job with higher priority value is more likely to run earlier if all other requirements are satisfied.
  final String priority;

  /// Job status. It is read only for users.
  final JobStatusResponse status;

  /// TaskGroups in the Job. Only one TaskGroup is supported now.
  final List<TaskGroupResponse> taskGroups;

  /// A system generated unique ID (in UUID4 format) for the Job.
  final String uid;

  /// The last time the Job was updated.
  final String updateTime;

  GetJobResult({
    required this.allocationPolicy,
    required this.createTime,
    required this.labels,
    required this.logsPolicy,
    required this.name,
    required this.notifications,
    required this.priority,
    required this.status,
    required this.taskGroups,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationPolicy'] = allocationPolicy.toMap();
    map['createTime'] = createTime;
    map['labels'] = labels;
    map['logsPolicy'] = logsPolicy.toMap();
    map['name'] = name;
    map['notifications'] =
        Input.encodeList<JobNotificationResponse, Map<String, dynamic>>(
            notifications, (value) => value.toMap());
    map['priority'] = priority;
    map['status'] = status.toMap();
    map['taskGroups'] =
        Input.encodeList<TaskGroupResponse, Map<String, dynamic>>(
            taskGroups, (value) => value.toMap());
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      allocationPolicy: AllocationPolicyResponse.fromMap(
          (map['allocationPolicy'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      logsPolicy: LogsPolicyResponse.fromMap(
          (map['logsPolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      notifications: Input.decodeList<JobNotificationResponse>(
          map['notifications'],
          (value) => JobNotificationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      priority: map['priority'] as String,
      status: JobStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      taskGroups: Input.decodeList<TaskGroupResponse>(
          map['taskGroups'],
          (value) => TaskGroupResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
