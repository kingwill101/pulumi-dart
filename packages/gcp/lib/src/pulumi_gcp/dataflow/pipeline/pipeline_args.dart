// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_schedule_info/pipeline_schedule_info.dart';
import '../pipeline_workload/pipeline_workload.dart';

/// The set of arguments for Pipeline.
class PipelineArgs {
  /// The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  final pulumi.Input<String>? displayName;

  /// "The pipeline name. For example': 'projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID."
  /// "- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects."
  /// "LOCATION_ID is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in App Engine regions."
  /// "PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location."
  final pulumi.Input<String>? name;

  /// The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? pipelineSources;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region
  final pulumi.Input<String>? region;

  /// Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec
  /// Structure is documented below.
  final pulumi.Input<PipelineScheduleInfo>? scheduleInfo;

  /// Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  final pulumi.Input<String>? schedulerServiceAccountEmail;

  /// The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state
  /// Possible values are: `STATE_UNSPECIFIED`, `STATE_RESUMING`, `STATE_ACTIVE`, `STATE_STOPPING`, `STATE_ARCHIVED`, `STATE_PAUSED`.
  final pulumi.Input<String> state;

  /// The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype
  /// Possible values are: `PIPELINE_TYPE_UNSPECIFIED`, `PIPELINE_TYPE_BATCH`, `PIPELINE_TYPE_STREAMING`.
  final pulumi.Input<String> type;

  /// Workload information for creating new jobs.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload
  /// Structure is documented below.
  final pulumi.Input<PipelineWorkload>? workload;

  PipelineArgs({
    this.displayName,
    this.name,
    this.pipelineSources,
    this.project,
    this.region,
    this.scheduleInfo,
    this.schedulerServiceAccountEmail,
    required this.state,
    required this.type,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scheduleInfoValue = scheduleInfo;
    if (scheduleInfoValue != null) {
      map['scheduleInfo'] = pulumi.Input.mapOptionalInputValue<
          PipelineScheduleInfo,
          Map<String, dynamic>>(scheduleInfoValue, (value) => value.toMap());
    }
    final schedulerServiceAccountEmailValue = schedulerServiceAccountEmail;
    if (schedulerServiceAccountEmailValue != null) {
      map['schedulerServiceAccountEmail'] = schedulerServiceAccountEmailValue;
    }
    map['state'] = state;
    map['type'] = type;
    final workloadValue = workload;
    if (workloadValue != null) {
      map['workload'] = pulumi.Input.mapOptionalInputValue<PipelineWorkload,
          Map<String, dynamic>>(workloadValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pipelineSources: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['pipelineSources']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scheduleInfo: pulumi.Input.asOptionalInput<PipelineScheduleInfo>(
          map['scheduleInfo']),
      schedulerServiceAccountEmail: pulumi.Input.asOptionalInput<String>(
          map['schedulerServiceAccountEmail']),
      state: pulumi.Input.asInput<String>(map['state']),
      type: pulumi.Input.asInput<String>(map['type']),
      workload: pulumi.Input.asOptionalInput<PipelineWorkload>(map['workload']),
    );
  }
}
