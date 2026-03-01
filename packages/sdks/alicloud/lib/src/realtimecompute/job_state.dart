// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_local_variable.dart';
import 'job_restore_strategy.dart';
import 'job_status.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// deploymentId
  final pulumi.Input<String>? deploymentId;
  /// The first ID of the resource
  final pulumi.Input<String>? jobId;
  /// Local variables See `local_variables` below.
  final pulumi.Input<List<JobLocalVariable>>? localVariables;
  /// namespace
  final pulumi.Input<String>? namespace;
  /// workspace
  final pulumi.Input<String>? resourceId;
  /// Resource Queue for Job Run
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? resourceQueueName;
  /// Restore strategy See `restore_strategy` below.
  final pulumi.Input<JobRestoreStrategy>? restoreStrategy;
  /// job status See `status` below.
  final pulumi.Input<JobStatus>? status;
  final pulumi.Input<String>? stopStrategy;

  /// Creates a new [JobState].
  /// [deploymentId] deploymentId
  /// [jobId] The first ID of the resource
  /// [localVariables] Local variables See `local_variables` below.
  /// [namespace] namespace
  /// [resourceId] workspace
  /// [resourceQueueName] Resource Queue for Job Run
  /// [restoreStrategy] Restore strategy See `restore_strategy` below.
  /// [status] job status See `status` below.
  /// [stopStrategy] Optional.
  JobState({
    pulumi.Output<String>? deploymentId,
    pulumi.Output<String>? jobId,
    pulumi.Output<List<JobLocalVariable>>? localVariables,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceQueueName,
    pulumi.Output<JobRestoreStrategy>? restoreStrategy,
    pulumi.Output<JobStatus>? status,
    pulumi.Output<String>? stopStrategy,
  }) :
      deploymentId = pulumi.Input.asOptionalInput<String>(deploymentId),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      localVariables = pulumi.Input.asOptionalInput<List<JobLocalVariable>>(localVariables),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceQueueName = pulumi.Input.asOptionalInput<String>(resourceQueueName),
      restoreStrategy = pulumi.Input.asOptionalInput<JobRestoreStrategy>(restoreStrategy),
      status = pulumi.Input.asOptionalInput<JobStatus>(status),
      stopStrategy = pulumi.Input.asOptionalInput<String>(stopStrategy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'jobId': ?jobId,
      'localVariables': ?pulumi.Input.mapOptionalInputValue<List<JobLocalVariable>, List<Map<String, dynamic>>>(localVariables, (value) => pulumi.Input.encodeList<JobLocalVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespace': ?namespace,
      'resourceId': ?resourceId,
      'resourceQueueName': ?resourceQueueName,
      'restoreStrategy': ?pulumi.Input.mapOptionalInputValue<JobRestoreStrategy, Map<String, dynamic>>(restoreStrategy, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<JobStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'stopStrategy': ?stopStrategy,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      deploymentId: map['deploymentId'] == null ? null : pulumi.Output.create<String>(map['deploymentId'] as String),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      localVariables: map['localVariables'] == null ? null : pulumi.Output.create<List<JobLocalVariable>>(pulumi.Input.decodeList<JobLocalVariable>(map['localVariables'], (value) => JobLocalVariable.fromMap((value as Map).cast<String, dynamic>()))),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceQueueName: map['resourceQueueName'] == null ? null : pulumi.Output.create<String>(map['resourceQueueName'] as String),
      restoreStrategy: map['restoreStrategy'] == null ? null : pulumi.Output.create<JobRestoreStrategy>(JobRestoreStrategy.fromMap((map['restoreStrategy'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<JobStatus>(JobStatus.fromMap((map['status'] as Map).cast<String, dynamic>())),
      stopStrategy: map['stopStrategy'] == null ? null : pulumi.Output.create<String>(map['stopStrategy'] as String),
    );
  }
}

