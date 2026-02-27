// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'environment3.dart';
import 'execution_stage_state.dart';
import 'job_current_state.dart';
import 'job_execution_info.dart';
import 'job_metadata.dart';
import 'job_requested_state.dart';
import 'job_type.dart';
import 'pipeline_description.dart';
import 'runtime_updatable_params.dart';
import 'step.dart';

/// The set of arguments for Job.
class JobArgs5 {
  /// The client's unique identifier of the job, re-used across retried attempts. If this field is set, the service will ensure its uniqueness. The request to create a job will fail if the service has knowledge of a previously submitted job with the same client's ID and job name. The caller may use this field to ensure idempotence of job creation across retried attempts to create a job. By default, the field is empty and, in that case, the service ignores it.
  final Input<String>? clientRequestId;

  /// The timestamp when the job was initially created. Immutable and set by the Cloud Dataflow service.
  final Input<String>? createTime;

  /// If this is specified, the job's initial state is populated from the given snapshot.
  final Input<String>? createdFromSnapshotId;

  /// The current state of the job. Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise specified. A job in the `JOB_STATE_RUNNING` state may asynchronously enter a terminal state. After a job has reached a terminal state, no further state updates may be made. This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
  final Input<JobCurrentState>? currentState;

  /// The timestamp associated with the current state.
  final Input<String>? currentStateTime;

  /// The environment for the job.
  final Input<Environment3>? environment;

  /// Deprecated.
  final Input<JobExecutionInfo>? executionInfo;

  /// The unique ID of this job. This field is set by the Cloud Dataflow service when the Job is created, and is immutable for the life of the job.
  final Input<String>? id;

  /// This field is populated by the Dataflow service to support filtering jobs by the metadata values provided here. Populated for ListJobs and all GetJob views SUMMARY and higher.
  final Input<JobMetadata>? jobMetadata;

  /// User-defined labels for this job. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  final Input<Map<String, String>>? labels;

  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.
  final Input<String>? location;

  /// The user-specified Cloud Dataflow job name. Only one Job with a given name can exist in a project within one region at any given time. Jobs in different regions can have the same name. If a caller attempts to create a Job with the same name as an already-existing Job, the attempt returns the existing Job. The name must match the regular expression `[a-z]([-a-z0-9]{0,1022}[a-z0-9])?`
  final Input<String>? name;

  /// Preliminary field: The format of this data may change at any time. A description of the user pipeline and stages through which it is executed. Created by Cloud Dataflow service. Only retrieved with JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL.
  final Input<PipelineDescription>? pipelineDescription;

  /// The ID of the Cloud Platform project that the job belongs to.
  final Input<String>? project;

  /// If this job is an update of an existing job, this field is the job ID of the job it replaced. When sending a `CreateJobRequest`, you can update a job by specifying it here. The job named here is stopped, and its intermediate state is transferred to this job.
  final Input<String>? replaceJobId;

  /// If another job is an update of this job (and thus, this job is in `JOB_STATE_UPDATED`), this field contains the ID of that job.
  final Input<String>? replacedByJobId;

  /// The job's requested state. Applies to `UpdateJob` requests. Set `requested_state` with `UpdateJob` requests to switch between the states `JOB_STATE_STOPPED` and `JOB_STATE_RUNNING`. You can also use `UpdateJob` requests to change a job's state from `JOB_STATE_RUNNING` to `JOB_STATE_CANCELLED`, `JOB_STATE_DONE`, or `JOB_STATE_DRAINED`. These states irrevocably terminate the job if it hasn't already reached a terminal state. This field has no effect on `CreateJob` requests.
  final Input<JobRequestedState>? requestedState;

  /// This field may ONLY be modified at runtime using the projects.jobs.update method to adjust job behavior. This field has no effect when specified at job creation.
  final Input<RuntimeUpdatableParams>? runtimeUpdatableParams;

  /// Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  final Input<bool>? satisfiesPzs;

  /// This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
  final Input<List<ExecutionStageState>>? stageStates;

  /// The timestamp when the job was started (transitioned to JOB_STATE_PENDING). Flexible resource scheduling jobs are started with some delay after job creation, so start_time is unset before start and is updated when the job is started by the Cloud Dataflow service. For other jobs, start_time always equals to create_time and is immutable and set by the Cloud Dataflow service.
  final Input<String>? startTime;

  /// Exactly one of step or steps_location should be specified. The top-level steps that constitute the entire job. Only retrieved with JOB_VIEW_ALL.
  final Input<List<Step>>? steps;

  /// The Cloud Storage location where the steps are stored.
  final Input<String>? stepsLocation;

  /// A set of files the system should be aware of that are used for temporary storage. These temporary files will be removed on job completion. No duplicates are allowed. No file patterns are supported. The supported files are: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final Input<List<String>>? tempFiles;

  /// The map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.
  final Input<Map<String, String>>? transformNameMapping;

  /// The type of Cloud Dataflow job.
  final Input<JobType>? type;

  /// The level of information requested in response.
  final Input<String>? view;

  JobArgs5({
    this.clientRequestId,
    this.createTime,
    this.createdFromSnapshotId,
    this.currentState,
    this.currentStateTime,
    this.environment,
    this.executionInfo,
    this.id,
    this.jobMetadata,
    this.labels,
    this.location,
    this.name,
    this.pipelineDescription,
    this.project,
    this.replaceJobId,
    this.replacedByJobId,
    this.requestedState,
    this.runtimeUpdatableParams,
    this.satisfiesPzs,
    this.stageStates,
    this.startTime,
    this.steps,
    this.stepsLocation,
    this.tempFiles,
    this.transformNameMapping,
    this.type,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientRequestIdValue = clientRequestId;
    if (clientRequestIdValue != null) {
      map['clientRequestId'] = clientRequestIdValue;
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final createdFromSnapshotIdValue = createdFromSnapshotId;
    if (createdFromSnapshotIdValue != null) {
      map['createdFromSnapshotId'] = createdFromSnapshotIdValue;
    }
    final currentStateValue = currentState;
    if (currentStateValue != null) {
      map['currentState'] =
          Input.mapOptionalInputValue<JobCurrentState, String>(
              currentStateValue, (value) => value.value);
    }
    final currentStateTimeValue = currentStateTime;
    if (currentStateTimeValue != null) {
      map['currentStateTime'] = currentStateTimeValue;
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] =
          Input.mapOptionalInputValue<Environment3, Map<String, dynamic>>(
              environmentValue, (value) => value.toMap());
    }
    final executionInfoValue = executionInfo;
    if (executionInfoValue != null) {
      map['executionInfo'] =
          Input.mapOptionalInputValue<JobExecutionInfo, Map<String, dynamic>>(
              executionInfoValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final jobMetadataValue = jobMetadata;
    if (jobMetadataValue != null) {
      map['jobMetadata'] =
          Input.mapOptionalInputValue<JobMetadata, Map<String, dynamic>>(
              jobMetadataValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pipelineDescriptionValue = pipelineDescription;
    if (pipelineDescriptionValue != null) {
      map['pipelineDescription'] = Input.mapOptionalInputValue<
              PipelineDescription, Map<String, dynamic>>(
          pipelineDescriptionValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final replaceJobIdValue = replaceJobId;
    if (replaceJobIdValue != null) {
      map['replaceJobId'] = replaceJobIdValue;
    }
    final replacedByJobIdValue = replacedByJobId;
    if (replacedByJobIdValue != null) {
      map['replacedByJobId'] = replacedByJobIdValue;
    }
    final requestedStateValue = requestedState;
    if (requestedStateValue != null) {
      map['requestedState'] =
          Input.mapOptionalInputValue<JobRequestedState, String>(
              requestedStateValue, (value) => value.value);
    }
    final runtimeUpdatableParamsValue = runtimeUpdatableParams;
    if (runtimeUpdatableParamsValue != null) {
      map['runtimeUpdatableParams'] = Input.mapOptionalInputValue<
              RuntimeUpdatableParams, Map<String, dynamic>>(
          runtimeUpdatableParamsValue, (value) => value.toMap());
    }
    final satisfiesPzsValue = satisfiesPzs;
    if (satisfiesPzsValue != null) {
      map['satisfiesPzs'] = satisfiesPzsValue;
    }
    final stageStatesValue = stageStates;
    if (stageStatesValue != null) {
      map['stageStates'] = Input.mapOptionalInputValue<
              List<ExecutionStageState>, List<Map<String, dynamic>>>(
          stageStatesValue,
          (value) =>
              Input.encodeList<ExecutionStageState, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final stepsValue = steps;
    if (stepsValue != null) {
      map['steps'] =
          Input.mapOptionalInputValue<List<Step>, List<Map<String, dynamic>>>(
              stepsValue,
              (value) => Input.encodeList<Step, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final stepsLocationValue = stepsLocation;
    if (stepsLocationValue != null) {
      map['stepsLocation'] = stepsLocationValue;
    }
    final tempFilesValue = tempFiles;
    if (tempFilesValue != null) {
      map['tempFiles'] = tempFilesValue;
    }
    final transformNameMappingValue = transformNameMapping;
    if (transformNameMappingValue != null) {
      map['transformNameMapping'] = transformNameMappingValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<JobType, String>(
          typeValue, (value) => value.value);
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory JobArgs5.fromMap(Map<String, dynamic> map) {
    return JobArgs5(
      clientRequestId: Input.asOptionalInput<String>(map['clientRequestId']),
      createTime: Input.asOptionalInput<String>(map['createTime']),
      createdFromSnapshotId:
          Input.asOptionalInput<String>(map['createdFromSnapshotId']),
      currentState: Input.asOptionalInput<JobCurrentState>(map['currentState']),
      currentStateTime: Input.asOptionalInput<String>(map['currentStateTime']),
      environment: Input.asOptionalInput<Environment3>(map['environment']),
      executionInfo:
          Input.asOptionalInput<JobExecutionInfo>(map['executionInfo']),
      id: Input.asOptionalInput<String>(map['id']),
      jobMetadata: Input.asOptionalInput<JobMetadata>(map['jobMetadata']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      pipelineDescription: Input.asOptionalInput<PipelineDescription>(
          map['pipelineDescription']),
      project: Input.asOptionalInput<String>(map['project']),
      replaceJobId: Input.asOptionalInput<String>(map['replaceJobId']),
      replacedByJobId: Input.asOptionalInput<String>(map['replacedByJobId']),
      requestedState:
          Input.asOptionalInput<JobRequestedState>(map['requestedState']),
      runtimeUpdatableParams: Input.asOptionalInput<RuntimeUpdatableParams>(
          map['runtimeUpdatableParams']),
      satisfiesPzs: Input.asOptionalInput<bool>(map['satisfiesPzs']),
      stageStates:
          Input.asOptionalInput<List<ExecutionStageState>>(map['stageStates']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
      steps: Input.asOptionalInput<List<Step>>(map['steps']),
      stepsLocation: Input.asOptionalInput<String>(map['stepsLocation']),
      tempFiles: Input.asOptionalInput<List<String>>(map['tempFiles']),
      transformNameMapping: Input.asOptionalInput<Map<String, String>>(
          map['transformNameMapping']),
      type: Input.asOptionalInput<JobType>(map['type']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
