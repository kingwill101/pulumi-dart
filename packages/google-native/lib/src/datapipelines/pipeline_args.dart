// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_schedule_spec.dart';
import 'google_cloud_datapipelines_v1_workload.dart';
import 'pipeline_state.dart';
import 'pipeline_type.dart';

/// {@template pulumi_datapipelines_v1_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_datapipelines_v1_pipeline_args_doc}
class PipelineArgs {
  /// The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  /// The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling `google.cloud.location.Locations.ListLocations`. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in [App Engine regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected project and location.
  final pulumi.Input<String>? name;
  /// Immutable. The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  final pulumi.Input<Map<String, String>>? pipelineSources;
  final pulumi.Input<String>? project;
  /// Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  final pulumi.Input<GoogleCloudDatapipelinesV1ScheduleSpec>? scheduleInfo;
  /// Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  final pulumi.Input<String>? schedulerServiceAccountEmail;
  /// The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through UpdatePipeline requests.
  final pulumi.Input<PipelineState> state;
  /// The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  final pulumi.Input<PipelineType> type;
  /// Workload information for creating new jobs.
  final pulumi.Input<GoogleCloudDatapipelinesV1Workload>? workload;

  /// Creates a new [PipelineArgs].
  /// [displayName] The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  /// [location] Optional.
  /// [name] The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling `google.cloud.location.Locations.ListLocations`. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in [App Engine regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected project and location.
  /// [pipelineSources] Immutable. The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  /// [project] Optional.
  /// [scheduleInfo] Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  /// [schedulerServiceAccountEmail] Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  /// [state] The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through UpdatePipeline requests.
  /// [type] The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  /// [workload] Workload information for creating new jobs.
  PipelineArgs({
    required String displayName,
    String? location,
    String? name,
    Map<String, String>? pipelineSources,
    String? project,
    GoogleCloudDatapipelinesV1ScheduleSpec? scheduleInfo,
    String? schedulerServiceAccountEmail,
    required PipelineState state,
    required PipelineType type,
    GoogleCloudDatapipelinesV1Workload? workload,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      pipelineSources = pulumi.Input.asOptionalInput<Map<String, String>>(pipelineSources),
      project = pulumi.Input.asOptionalInput<String>(project),
      scheduleInfo = pulumi.Input.asOptionalInput<GoogleCloudDatapipelinesV1ScheduleSpec>(scheduleInfo),
      schedulerServiceAccountEmail = pulumi.Input.asOptionalInput<String>(schedulerServiceAccountEmail),
      state = pulumi.Input.asInput<PipelineState>(state),
      type = pulumi.Input.asInput<PipelineType>(type),
      workload = pulumi.Input.asOptionalInput<GoogleCloudDatapipelinesV1Workload>(workload);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'location': ?location,
      'name': ?name,
      'pipelineSources': ?pipelineSources,
      'project': ?project,
      'scheduleInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1ScheduleSpec, Map<String, dynamic>>(scheduleInfo, (value) => value.toMap()),
      'schedulerServiceAccountEmail': ?schedulerServiceAccountEmail,
      'state': pulumi.Input.mapInputValue<PipelineState, String>(state, (value) => value.value),
      'type': pulumi.Input.mapInputValue<PipelineType, String>(type, (value) => value.value),
      'workload': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1Workload, Map<String, dynamic>>(workload, (value) => value.toMap()),
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      displayName: map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pipelineSources: map['pipelineSources'] == null ? null : (map['pipelineSources'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      scheduleInfo: map['scheduleInfo'] == null ? null : GoogleCloudDatapipelinesV1ScheduleSpec.fromMap((map['scheduleInfo'] as Map).cast<String, dynamic>()),
      schedulerServiceAccountEmail: map['schedulerServiceAccountEmail'] == null ? null : map['schedulerServiceAccountEmail'] as String,
      state: PipelineState.fromValue(map['state'] as String),
      type: PipelineType.fromValue(map['type'] as String),
      workload: map['workload'] == null ? null : GoogleCloudDatapipelinesV1Workload.fromMap((map['workload'] as Map).cast<String, dynamic>()),
    );
  }
}

