import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_sink_bigquery_options/project_sink_bigquery_options.dart';
import '../project_sink_exclusion/project_sink_exclusion.dart';
import 'project_sink_args.dart';

/// ## Import
///
/// Project-level logging sinks can be imported using their URI, e.g.
///
/// * `projects/{{project_id}}/sinks/{{name}}`
///
/// When using the `pulumi import` command, project-level logging sinks can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/projectSink:ProjectSink default projects/{{project_id}}/sinks/{{name}}
/// ```
class ProjectSink extends pulumi.CustomResource {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  late final pulumi.Output<ProjectSinkBigqueryOptions> bigqueryOptions;

  /// A user managed service account that will be used to write
  /// the log entries. The format must be `serviceAccount:some@email`. This field can only be specified if you are
  /// routing logs to a destination outside this sink's project. If not specified, a Logging service account
  /// will automatically be generated.
  late final pulumi.Output<String?> customWriterIdentity;

  /// A description of this sink. The maximum length of the description is 8000 characters.
  late final pulumi.Output<String?> description;

  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  late final pulumi.Output<String> destination;

  /// If set to True, then this sink is disabled and it does not export any log entries.
  late final pulumi.Output<bool?> disabled;

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  late final pulumi.Output<List<ProjectSinkExclusion>?> exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String?> filter;

  /// The name of the logging sink. Logging automatically creates two sinks: `_Required` and `_Default`.
  late final pulumi.Output<String> name;

  /// The ID of the project to create the sink in. If omitted, the project associated with the provider is
  /// used.
  late final pulumi.Output<String> project;

  /// Whether or not to create a unique identity associated with this sink. If `false`, then the `writer_identity` used is `serviceAccount:cloud-logs@system.gserviceaccount.com`. If `true` (the default),
  /// then a unique service account is created and used for this sink. If you wish to publish logs across projects or utilize
  /// `bigquery_options`, you must set `unique_writer_identity` to true.
  late final pulumi.Output<bool?> uniqueWriterIdentity;

  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  late final pulumi.Output<String> writerIdentity;

  ProjectSink(
    String name, {
    ProjectSinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/projectSink:ProjectSink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigqueryOptions =
        registerOutput<ProjectSinkBigqueryOptions>('bigqueryOptions');
    this.customWriterIdentity = registerOutput<String?>('customWriterIdentity');
    this.description = registerOutput<String?>('description');
    this.destination = registerOutput<String>('destination');
    this.disabled = registerOutput<bool?>('disabled');
    this.exclusions = registerOutput<List<ProjectSinkExclusion>?>('exclusions');
    this.filter = registerOutput<String?>('filter');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.uniqueWriterIdentity = registerOutput<bool?>('uniqueWriterIdentity');
    this.writerIdentity = registerOutput<String>('writerIdentity');
  }
}
