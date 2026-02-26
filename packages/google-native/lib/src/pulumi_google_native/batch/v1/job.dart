import 'package:pulumi/pulumi.dart';
import 'allocation_policy_response.dart';
import 'job_args.dart';
import 'job_notification_response.dart';
import 'job_status_response.dart';
import 'logs_policy_response.dart';
import 'task_group_response.dart';

/// Create a Job.
/// Auto-naming is currently not supported for this resource.
class Job extends CustomResource {
  /// Compute resource allocation for all TaskGroups in the Job.
  late final Output<AllocationPolicyResponse> allocationPolicy;

  /// When the Job was created.
  late final Output<String> createTime;

  /// ID used to uniquely identify the Job within its parent scope. This field should contain at most 63 characters and must start with lowercase characters. Only lowercase characters, numbers and '-' are accepted. The '-' character cannot be the first or the last one. A system generated ID will be used if the field is not set. The job.name field in the request will be ignored and the created resource name of the Job will be "{parent}/jobs/{job_id}".
  late final Output<String?> jobId;

  /// Labels for the Job. Labels could be user provided or system generated. For example, "labels": { "department": "finance", "environment": "test" } You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Log preservation policy for the Job.
  late final Output<LogsPolicyResponse> logsPolicy;

  /// Job name. For example: "projects/123456/locations/us-central1/jobs/job01".
  late final Output<String> name;

  /// Notification configurations.
  late final Output<List<JobNotificationResponse>> notifications;

  /// Priority of the Job. The valid value range is [0, 100). Default value is 0. Higher value indicates higher priority. A job with higher priority value is more likely to run earlier if all other requirements are satisfied.
  late final Output<String> priority;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Job status. It is read only for users.
  late final Output<JobStatusResponse> status;

  /// TaskGroups in the Job. Only one TaskGroup is supported now.
  late final Output<List<TaskGroupResponse>> taskGroups;

  /// A system generated unique ID (in UUID4 format) for the Job.
  late final Output<String> uid;

  /// The last time the Job was updated.
  late final Output<String> updateTime;

  Job(
    String name, {
    JobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:batch/v1:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocationPolicy =
        registerOutput<AllocationPolicyResponse>('allocationPolicy');
    this.createTime = registerOutput<String>('createTime');
    this.jobId = registerOutput<String?>('jobId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.logsPolicy = registerOutput<LogsPolicyResponse>('logsPolicy');
    this.name = registerOutput<String>('name');
    this.notifications =
        registerOutput<List<JobNotificationResponse>>('notifications');
    this.priority = registerOutput<String>('priority');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.status = registerOutput<JobStatusResponse>('status');
    this.taskGroups = registerOutput<List<TaskGroupResponse>>('taskGroups');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
