// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_policy.dart';
import 'job_notification.dart';
import 'logs_policy.dart';
import 'task_group.dart';

/// The set of arguments for Job.
class JobArgs {
  /// Compute resource allocation for all TaskGroups in the Job.
  final pulumi.Input<AllocationPolicy>? allocationPolicy;

  /// ID used to uniquely identify the Job within its parent scope. This field should contain at most 63 characters and must start with lowercase characters. Only lowercase characters, numbers and '-' are accepted. The '-' character cannot be the first or the last one. A system generated ID will be used if the field is not set. The job.name field in the request will be ignored and the created resource name of the Job will be "{parent}/jobs/{job_id}".
  final pulumi.Input<String>? jobId;

  /// Labels for the Job. Labels could be user provided or system generated. For example, "labels": { "department": "finance", "environment": "test" } You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Log preservation policy for the Job.
  final pulumi.Input<LogsPolicy>? logsPolicy;

  /// Notification configurations.
  final pulumi.Input<List<JobNotification>>? notifications;

  /// Priority of the Job. The valid value range is [0, 100). Default value is 0. Higher value indicates higher priority. A job with higher priority value is more likely to run earlier if all other requirements are satisfied.
  final pulumi.Input<String>? priority;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// TaskGroups in the Job. Only one TaskGroup is supported now.
  final pulumi.Input<List<TaskGroup>> taskGroups;

  JobArgs({
    this.allocationPolicy,
    this.jobId,
    this.labels,
    this.location,
    this.logsPolicy,
    this.notifications,
    this.priority,
    this.project,
    this.requestId,
    required this.taskGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocationPolicyValue = allocationPolicy;
    if (allocationPolicyValue != null) {
      map['allocationPolicy'] = pulumi.Input.mapOptionalInputValue<
              AllocationPolicy, Map<String, dynamic>>(
          allocationPolicyValue, (value) => value.toMap());
    }
    final jobIdValue = jobId;
    if (jobIdValue != null) {
      map['jobId'] = jobIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final logsPolicyValue = logsPolicy;
    if (logsPolicyValue != null) {
      map['logsPolicy'] =
          pulumi.Input.mapOptionalInputValue<LogsPolicy, Map<String, dynamic>>(
              logsPolicyValue, (value) => value.toMap());
    }
    final notificationsValue = notifications;
    if (notificationsValue != null) {
      map['notifications'] = pulumi.Input.mapOptionalInputValue<
              List<JobNotification>, List<Map<String, dynamic>>>(
          notificationsValue,
          (value) =>
              pulumi.Input.encodeList<JobNotification, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['taskGroups'] =
        pulumi.Input.mapInputValue<List<TaskGroup>, List<Map<String, dynamic>>>(
            taskGroups,
            (value) => pulumi.Input.encodeList<TaskGroup, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      allocationPolicy: pulumi.Input.asOptionalInput<AllocationPolicy>(
          map['allocationPolicy']),
      jobId: pulumi.Input.asOptionalInput<String>(map['jobId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      logsPolicy: pulumi.Input.asOptionalInput<LogsPolicy>(map['logsPolicy']),
      notifications: pulumi.Input.asOptionalInput<List<JobNotification>>(
          map['notifications']),
      priority: pulumi.Input.asOptionalInput<String>(map['priority']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      taskGroups: pulumi.Input.asInput<List<TaskGroup>>(map['taskGroups']),
    );
  }
}
