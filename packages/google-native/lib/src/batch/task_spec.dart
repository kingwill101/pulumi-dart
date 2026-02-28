// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_resource.dart';
import 'environment.dart';
import 'lifecycle_policy.dart';
import 'runnable.dart';
import 'volume.dart';

/// Spec of a task
class TaskSpec {
  /// ComputeResource requirements.
  final ComputeResource? computeResource;

  /// Environment variables to set before running the Task.
  final Environment? environment;

  /// Deprecated: please use environment(non-plural) instead.
  final Map<String, String>? environments;

  /// Lifecycle management schema when any task in a task group is failed. Currently we only support one lifecycle policy. When the lifecycle policy condition is met, the action in the policy will execute. If task execution result does not meet with the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.
  final List<LifecyclePolicy>? lifecyclePolicies;

  /// Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].
  final int? maxRetryCount;

  /// Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit.
  final String? maxRunDuration;

  /// The sequence of scripts or containers to run for this Task. Each Task using this TaskSpec executes its list of runnables in order. The Task succeeds if all of its runnables either exit with a zero status or any that exit with a non-zero status have the ignore_exit_status flag. Background runnables are killed automatically (if they have not already exited) a short time after all foreground runnables have completed. Even though this is likely to result in a non-zero exit status for the background runnable, these automatic kills are not treated as Task failures.
  final List<Runnable>? runnables;

  /// Volumes to mount before running Tasks using this TaskSpec.
  final List<Volume>? volumes;

  /// Creates a new [TaskSpec].
  /// [computeResource] ComputeResource requirements.
  /// [environment] Environment variables to set before running the Task.
  /// [environments] Deprecated: please use environment(non-plural) instead.
  /// [lifecyclePolicies] Lifecycle management schema when any task in a task group is failed. Currently we only support one lifecycle policy. When the lifecycle policy condition is met, the action in the policy will execute. If task execution result does not meet with the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.
  /// [maxRetryCount] Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].
  /// [maxRunDuration] Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit.
  /// [runnables] The sequence of scripts or containers to run for this Task. Each Task using this TaskSpec executes its list of runnables in order. The Task succeeds if all of its runnables either exit with a zero status or any that exit with a non-zero status have the ignore_exit_status flag. Background runnables are killed automatically (if they have not already exited) a short time after all foreground runnables have completed. Even though this is likely to result in a non-zero exit status for the background runnable, these automatic kills are not treated as Task failures.
  /// [volumes] Volumes to mount before running Tasks using this TaskSpec.
  TaskSpec({
    this.computeResource,
    this.environment,
    this.environments,
    this.lifecyclePolicies,
    this.maxRetryCount,
    this.maxRunDuration,
    this.runnables,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeResourceValue = computeResource;
    if (computeResourceValue != null) {
      map['computeResource'] = computeResourceValue.toMap();
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue.toMap();
    }
    final environmentsValue = environments;
    if (environmentsValue != null) {
      map['environments'] = environmentsValue;
    }
    final lifecyclePoliciesValue = lifecyclePolicies;
    if (lifecyclePoliciesValue != null) {
      map['lifecyclePolicies'] =
          pulumi.Input.encodeList<LifecyclePolicy, Map<String, dynamic>>(
              lifecyclePoliciesValue, (value) => value.toMap());
    }
    final maxRetryCountValue = maxRetryCount;
    if (maxRetryCountValue != null) {
      map['maxRetryCount'] = maxRetryCountValue;
    }
    final maxRunDurationValue = maxRunDuration;
    if (maxRunDurationValue != null) {
      map['maxRunDuration'] = maxRunDurationValue;
    }
    final runnablesValue = runnables;
    if (runnablesValue != null) {
      map['runnables'] =
          pulumi.Input.encodeList<Runnable, Map<String, dynamic>>(
              runnablesValue, (value) => value.toMap());
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = pulumi.Input.encodeList<Volume, Map<String, dynamic>>(
          volumesValue, (value) => value.toMap());
    }
    return map;
  }

  factory TaskSpec.fromMap(Map<String, dynamic> map) {
    return TaskSpec(
      computeResource: map['computeResource'] == null
          ? null
          : ComputeResource.fromMap(
              (map['computeResource'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null
          ? null
          : Environment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>()),
      environments: map['environments'] == null
          ? null
          : (map['environments'] as Map).cast<String, String>(),
      lifecyclePolicies: map['lifecyclePolicies'] == null
          ? null
          : pulumi.Input.decodeList<LifecyclePolicy>(
              map['lifecyclePolicies'],
              (value) => LifecyclePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxRetryCount:
          map['maxRetryCount'] == null ? null : map['maxRetryCount'] as int,
      maxRunDuration: map['maxRunDuration'] == null
          ? null
          : map['maxRunDuration'] as String,
      runnables: map['runnables'] == null
          ? null
          : pulumi.Input.decodeList<Runnable>(
              map['runnables'],
              (value) =>
                  Runnable.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<Volume>(
              map['volumes'],
              (value) =>
                  Volume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
