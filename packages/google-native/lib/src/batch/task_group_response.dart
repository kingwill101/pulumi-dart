// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_response.dart';
import 'task_spec_response.dart';

/// A TaskGroup defines one or more Tasks that all share the same TaskSpec.
class TaskGroupResponse {
  /// TaskGroup name. The system generates this field based on parent Job name. For example: "projects/123456/locations/us-west1/jobs/job01/taskGroups/group01".
  final String name;
  /// Max number of tasks that can run in parallel. Default to min(task_count, parallel tasks per job limit). See: [Job Limits](https://cloud.google.com/batch/quotas#job_limits). Field parallelism must be 1 if the scheduling_policy is IN_ORDER.
  final String parallelism;
  /// When true, Batch will configure SSH to allow passwordless login between VMs running the Batch tasks in the same TaskGroup.
  final bool permissiveSsh;
  /// When true, Batch will populate a file with a list of all VMs assigned to the TaskGroup and set the BATCH_HOSTS_FILE environment variable to the path of that file. Defaults to false.
  final bool requireHostsFile;
  /// Scheduling policy for Tasks in the TaskGroup. The default value is AS_SOON_AS_POSSIBLE.
  final String schedulingPolicy;
  /// Number of Tasks in the TaskGroup. Default is 1.
  final String taskCount;
  /// Max number of tasks that can be run on a VM at the same time. If not specified, the system will decide a value based on available compute resources on a VM and task requirements.
  final String taskCountPerNode;
  /// An array of environment variable mappings, which are passed to Tasks with matching indices. If task_environments is used then task_count should not be specified in the request (and will be ignored). Task count will be the length of task_environments. Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT environment variable, in addition to any environment variables set in task_environments, specifying the number of Tasks in the Task's parent TaskGroup, and the specific Task's index in the TaskGroup (0 through BATCH_TASK_COUNT - 1).
  final List<EnvironmentResponse> taskEnvironments;
  /// Tasks in the group share the same task spec.
  final TaskSpecResponse taskSpec;

  /// Creates a new [TaskGroupResponse].
  /// [name] TaskGroup name. The system generates this field based on parent Job name. For example: "projects/123456/locations/us-west1/jobs/job01/taskGroups/group01".
  /// [parallelism] Max number of tasks that can run in parallel. Default to min(task_count, parallel tasks per job limit). See: [Job Limits](https://cloud.google.com/batch/quotas#job_limits). Field parallelism must be 1 if the scheduling_policy is IN_ORDER.
  /// [permissiveSsh] When true, Batch will configure SSH to allow passwordless login between VMs running the Batch tasks in the same TaskGroup.
  /// [requireHostsFile] When true, Batch will populate a file with a list of all VMs assigned to the TaskGroup and set the BATCH_HOSTS_FILE environment variable to the path of that file. Defaults to false.
  /// [schedulingPolicy] Scheduling policy for Tasks in the TaskGroup. The default value is AS_SOON_AS_POSSIBLE.
  /// [taskCount] Number of Tasks in the TaskGroup. Default is 1.
  /// [taskCountPerNode] Max number of tasks that can be run on a VM at the same time. If not specified, the system will decide a value based on available compute resources on a VM and task requirements.
  /// [taskEnvironments] An array of environment variable mappings, which are passed to Tasks with matching indices. If task_environments is used then task_count should not be specified in the request (and will be ignored). Task count will be the length of task_environments. Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT environment variable, in addition to any environment variables set in task_environments, specifying the number of Tasks in the Task's parent TaskGroup, and the specific Task's index in the TaskGroup (0 through BATCH_TASK_COUNT - 1).
  /// [taskSpec] Tasks in the group share the same task spec.
  TaskGroupResponse({
    required this.name,
    required this.parallelism,
    required this.permissiveSsh,
    required this.requireHostsFile,
    required this.schedulingPolicy,
    required this.taskCount,
    required this.taskCountPerNode,
    required this.taskEnvironments,
    required this.taskSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parallelism': parallelism,
      'permissiveSsh': permissiveSsh,
      'requireHostsFile': requireHostsFile,
      'schedulingPolicy': schedulingPolicy,
      'taskCount': taskCount,
      'taskCountPerNode': taskCountPerNode,
      'taskEnvironments': pulumi.Input.encodeList<EnvironmentResponse, Map<String, dynamic>>(taskEnvironments, (value) => value.toMap()),
      'taskSpec': taskSpec.toMap(),
    };
  }

  factory TaskGroupResponse.fromMap(Map<String, dynamic> map) {
    return TaskGroupResponse(
      name: map['name'] as String,
      parallelism: map['parallelism'] as String,
      permissiveSsh: map['permissiveSsh'] as bool,
      requireHostsFile: map['requireHostsFile'] as bool,
      schedulingPolicy: map['schedulingPolicy'] as String,
      taskCount: map['taskCount'] as String,
      taskCountPerNode: map['taskCountPerNode'] as String,
      taskEnvironments: pulumi.Input.decodeList<EnvironmentResponse>(map['taskEnvironments'], (value) => EnvironmentResponse.fromMap((value as Map).cast<String, dynamic>())),
      taskSpec: TaskSpecResponse.fromMap((map['taskSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

