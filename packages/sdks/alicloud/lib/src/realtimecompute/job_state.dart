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
    this.deploymentId,
    this.jobId,
    this.localVariables,
    this.namespace,
    this.resourceId,
    this.resourceQueueName,
    this.restoreStrategy,
    this.status,
    this.stopStrategy,
  });

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
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId']! as String).input(),
      jobId: map['jobId'] == null ? null : (map['jobId']! as String).input(),
      localVariables: map['localVariables'] == null ? null : (pulumi.Input.decodeList<JobLocalVariable>(map['localVariables']!, (value) => JobLocalVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      resourceQueueName: map['resourceQueueName'] == null ? null : (map['resourceQueueName']! as String).input(),
      restoreStrategy: map['restoreStrategy'] == null ? null : (JobRestoreStrategy.fromMap((map['restoreStrategy']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (JobStatus.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
      stopStrategy: map['stopStrategy'] == null ? null : (map['stopStrategy']! as String).input(),
    );
  }
}

