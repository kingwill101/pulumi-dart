// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_schedule_spec.dart';
import 'google_cloud_datapipelines_v1_workload.dart';
import 'pipeline_state.dart';
import 'pipeline_type.dart';

/// The set of arguments for Pipeline.
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

  PipelineArgs({
    required this.displayName,
    this.location,
    this.name,
    this.pipelineSources,
    this.project,
    this.scheduleInfo,
    this.schedulerServiceAccountEmail,
    required this.state,
    required this.type,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pipelineSourcesValue = pipelineSources;
    if (pipelineSourcesValue != null) {
      map['pipelineSources'] = pipelineSourcesValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final scheduleInfoValue = scheduleInfo;
    if (scheduleInfoValue != null) {
      map['scheduleInfo'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDatapipelinesV1ScheduleSpec,
          Map<String, dynamic>>(scheduleInfoValue, (value) => value.toMap());
    }
    final schedulerServiceAccountEmailValue = schedulerServiceAccountEmail;
    if (schedulerServiceAccountEmailValue != null) {
      map['schedulerServiceAccountEmail'] = schedulerServiceAccountEmailValue;
    }
    map['state'] = pulumi.Input.mapInputValue<PipelineState, String>(
        state, (value) => value.value);
    map['type'] = pulumi.Input.mapInputValue<PipelineType, String>(
        type, (value) => value.value);
    final workloadValue = workload;
    if (workloadValue != null) {
      map['workload'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDatapipelinesV1Workload,
          Map<String, dynamic>>(workloadValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pipelineSources: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['pipelineSources']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scheduleInfo:
          pulumi.Input.asOptionalInput<GoogleCloudDatapipelinesV1ScheduleSpec>(
              map['scheduleInfo']),
      schedulerServiceAccountEmail: pulumi.Input.asOptionalInput<String>(
          map['schedulerServiceAccountEmail']),
      state: pulumi.Input.asInput<PipelineState>(map['state']),
      type: pulumi.Input.asInput<PipelineType>(map['type']),
      workload:
          pulumi.Input.asOptionalInput<GoogleCloudDatapipelinesV1Workload>(
              map['workload']),
    );
  }
}
