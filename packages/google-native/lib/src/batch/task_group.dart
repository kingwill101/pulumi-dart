// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment.dart';
import 'task_group_scheduling_policy.dart';
import 'task_spec.dart';

/// A TaskGroup defines one or more Tasks that all share the same TaskSpec.
class TaskGroup {
  /// Max number of tasks that can run in parallel. Default to min(task_count, parallel tasks per job limit). See: [Job Limits](https://cloud.google.com/batch/quotas#job_limits). Field parallelism must be 1 if the scheduling_policy is IN_ORDER.
  final String? parallelism;

  /// When true, Batch will configure SSH to allow passwordless login between VMs running the Batch tasks in the same TaskGroup.
  final bool? permissiveSsh;

  /// When true, Batch will populate a file with a list of all VMs assigned to the TaskGroup and set the BATCH_HOSTS_FILE environment variable to the path of that file. Defaults to false.
  final bool? requireHostsFile;

  /// Scheduling policy for Tasks in the TaskGroup. The default value is AS_SOON_AS_POSSIBLE.
  final TaskGroupSchedulingPolicy? schedulingPolicy;

  /// Number of Tasks in the TaskGroup. Default is 1.
  final String? taskCount;

  /// Max number of tasks that can be run on a VM at the same time. If not specified, the system will decide a value based on available compute resources on a VM and task requirements.
  final String? taskCountPerNode;

  /// An array of environment variable mappings, which are passed to Tasks with matching indices. If task_environments is used then task_count should not be specified in the request (and will be ignored). Task count will be the length of task_environments. Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT environment variable, in addition to any environment variables set in task_environments, specifying the number of Tasks in the Task's parent TaskGroup, and the specific Task's index in the TaskGroup (0 through BATCH_TASK_COUNT - 1).
  final List<Environment>? taskEnvironments;

  /// Tasks in the group share the same task spec.
  final TaskSpec taskSpec;

  /// Creates a new [TaskGroup].
  /// [parallelism] Max number of tasks that can run in parallel. Default to min(task_count, parallel tasks per job limit). See: [Job Limits](https://cloud.google.com/batch/quotas#job_limits). Field parallelism must be 1 if the scheduling_policy is IN_ORDER.
  /// [permissiveSsh] When true, Batch will configure SSH to allow passwordless login between VMs running the Batch tasks in the same TaskGroup.
  /// [requireHostsFile] When true, Batch will populate a file with a list of all VMs assigned to the TaskGroup and set the BATCH_HOSTS_FILE environment variable to the path of that file. Defaults to false.
  /// [schedulingPolicy] Scheduling policy for Tasks in the TaskGroup. The default value is AS_SOON_AS_POSSIBLE.
  /// [taskCount] Number of Tasks in the TaskGroup. Default is 1.
  /// [taskCountPerNode] Max number of tasks that can be run on a VM at the same time. If not specified, the system will decide a value based on available compute resources on a VM and task requirements.
  /// [taskEnvironments] An array of environment variable mappings, which are passed to Tasks with matching indices. If task_environments is used then task_count should not be specified in the request (and will be ignored). Task count will be the length of task_environments. Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT environment variable, in addition to any environment variables set in task_environments, specifying the number of Tasks in the Task's parent TaskGroup, and the specific Task's index in the TaskGroup (0 through BATCH_TASK_COUNT - 1).
  /// [taskSpec] Tasks in the group share the same task spec.
  TaskGroup({
    this.parallelism,
    this.permissiveSsh,
    this.requireHostsFile,
    this.schedulingPolicy,
    this.taskCount,
    this.taskCountPerNode,
    this.taskEnvironments,
    required this.taskSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parallelismValue = parallelism;
    if (parallelismValue != null) {
      map['parallelism'] = parallelismValue;
    }
    final permissiveSshValue = permissiveSsh;
    if (permissiveSshValue != null) {
      map['permissiveSsh'] = permissiveSshValue;
    }
    final requireHostsFileValue = requireHostsFile;
    if (requireHostsFileValue != null) {
      map['requireHostsFile'] = requireHostsFileValue;
    }
    final schedulingPolicyValue = schedulingPolicy;
    if (schedulingPolicyValue != null) {
      map['schedulingPolicy'] = schedulingPolicyValue.value;
    }
    final taskCountValue = taskCount;
    if (taskCountValue != null) {
      map['taskCount'] = taskCountValue;
    }
    final taskCountPerNodeValue = taskCountPerNode;
    if (taskCountPerNodeValue != null) {
      map['taskCountPerNode'] = taskCountPerNodeValue;
    }
    final taskEnvironmentsValue = taskEnvironments;
    if (taskEnvironmentsValue != null) {
      map['taskEnvironments'] =
          pulumi.Input.encodeList<Environment, Map<String, dynamic>>(
              taskEnvironmentsValue, (value) => value.toMap());
    }
    map['taskSpec'] = taskSpec.toMap();
    return map;
  }

  factory TaskGroup.fromMap(Map<String, dynamic> map) {
    return TaskGroup(
      parallelism:
          map['parallelism'] == null ? null : map['parallelism'] as String,
      permissiveSsh:
          map['permissiveSsh'] == null ? null : map['permissiveSsh'] as bool,
      requireHostsFile: map['requireHostsFile'] == null
          ? null
          : map['requireHostsFile'] as bool,
      schedulingPolicy: map['schedulingPolicy'] == null
          ? null
          : TaskGroupSchedulingPolicy.fromValue(
              map['schedulingPolicy'] as String),
      taskCount: map['taskCount'] == null ? null : map['taskCount'] as String,
      taskCountPerNode: map['taskCountPerNode'] == null
          ? null
          : map['taskCountPerNode'] as String,
      taskEnvironments: map['taskEnvironments'] == null
          ? null
          : pulumi.Input.decodeList<Environment>(
              map['taskEnvironments'],
              (value) =>
                  Environment.fromMap((value as Map).cast<String, dynamic>())),
      taskSpec:
          TaskSpec.fromMap((map['taskSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
