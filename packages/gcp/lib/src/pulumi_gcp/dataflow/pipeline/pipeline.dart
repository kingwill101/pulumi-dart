import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_schedule_info/pipeline_schedule_info.dart';
import '../pipeline_workload/pipeline_workload.dart';
import 'pipeline_args.dart';

/// The main pipeline entity and all the necessary metadata for launching and managing linked jobs.
///
///
/// To get more information about Pipeline, see:
///
/// * [API documentation](https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataflow)
///
/// ## Example Usage
///
/// ### Data Pipeline Pipeline
///
///
///
///
/// ## Import
///
/// Pipeline can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/pipelines/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Pipeline can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataflow/pipeline:Pipeline default projects/{{project}}/locations/{{region}}/pipelines/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataflow/pipeline:Pipeline default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataflow/pipeline:Pipeline default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataflow/pipeline:Pipeline default {{name}}
/// ```
class Pipeline extends pulumi.CustomResource {
  /// The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  late final pulumi.Output<String?> displayName;

  /// Number of jobs.
  late final pulumi.Output<int> jobCount;

  /// The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> lastUpdateTime;

  /// "The pipeline name. For example': 'projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID."
  /// "- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects."
  /// "LOCATION_ID is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in App Engine regions."
  /// "PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location."
  late final pulumi.Output<String> name;

  /// The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  late final pulumi.Output<Map<String, String>?> pipelineSources;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A reference to the region
  late final pulumi.Output<String?> region;

  /// Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec
  /// Structure is documented below.
  late final pulumi.Output<PipelineScheduleInfo?> scheduleInfo;

  /// Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  late final pulumi.Output<String> schedulerServiceAccountEmail;

  /// The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state
  /// Possible values are: `STATE_UNSPECIFIED`, `STATE_RESUMING`, `STATE_ACTIVE`, `STATE_STOPPING`, `STATE_ARCHIVED`, `STATE_PAUSED`.
  late final pulumi.Output<String> state;

  /// The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype
  /// Possible values are: `PIPELINE_TYPE_UNSPECIFIED`, `PIPELINE_TYPE_BATCH`, `PIPELINE_TYPE_STREAMING`.
  late final pulumi.Output<String> type;

  /// Workload information for creating new jobs.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload
  /// Structure is documented below.
  late final pulumi.Output<PipelineWorkload?> workload;

  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataflow/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.jobCount = registerOutput<int>('jobCount');
    this.lastUpdateTime = registerOutput<String>('lastUpdateTime');
    this.name = registerOutput<String>('name');
    this.pipelineSources =
        registerOutput<Map<String, String>?>('pipelineSources');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
    this.scheduleInfo = registerOutput<PipelineScheduleInfo?>('scheduleInfo');
    this.schedulerServiceAccountEmail =
        registerOutput<String>('schedulerServiceAccountEmail');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.workload = registerOutput<PipelineWorkload?>('workload');
  }
}
