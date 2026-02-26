import 'package:pulumi/pulumi.dart';
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
class ProjectSink extends CustomResource {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  late final Output<ProjectSinkBigqueryOptions> bigqueryOptions;

  /// A user managed service account that will be used to write
  /// the log entries. The format must be `serviceAccount:some@email`. This field can only be specified if you are
  /// routing logs to a destination outside this sink's project. If not specified, a Logging service account
  /// will automatically be generated.
  late final Output<String?> customWriterIdentity;

  /// A description of this sink. The maximum length of the description is 8000 characters.
  late final Output<String?> description;

  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  late final Output<String> destination;

  /// If set to True, then this sink is disabled and it does not export any log entries.
  late final Output<bool?> disabled;

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  late final Output<List<ProjectSinkExclusion>?> exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  late final Output<String?> filter;

  /// The name of the logging sink. Logging automatically creates two sinks: `_Required` and `_Default`.
  late final Output<String> name;

  /// The ID of the project to create the sink in. If omitted, the project associated with the provider is
  /// used.
  late final Output<String> project;

  /// Whether or not to create a unique identity associated with this sink. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, then the <span pulumi-lang-nodejs="`writerIdentity`" pulumi-lang-dotnet="`WriterIdentity`" pulumi-lang-go="`writerIdentity`" pulumi-lang-python="`writer_identity`" pulumi-lang-yaml="`writerIdentity`" pulumi-lang-java="`writerIdentity`">`writer_identity`</span> used is `serviceAccount:cloud-logs@system.gserviceaccount.com`. If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> (the default),
  /// then a unique service account is created and used for this sink. If you wish to publish logs across projects or utilize
  /// <span pulumi-lang-nodejs="`bigqueryOptions`" pulumi-lang-dotnet="`BigqueryOptions`" pulumi-lang-go="`bigqueryOptions`" pulumi-lang-python="`bigquery_options`" pulumi-lang-yaml="`bigqueryOptions`" pulumi-lang-java="`bigqueryOptions`">`bigquery_options`</span>, you must set <span pulumi-lang-nodejs="`uniqueWriterIdentity`" pulumi-lang-dotnet="`UniqueWriterIdentity`" pulumi-lang-go="`uniqueWriterIdentity`" pulumi-lang-python="`unique_writer_identity`" pulumi-lang-yaml="`uniqueWriterIdentity`" pulumi-lang-java="`uniqueWriterIdentity`">`unique_writer_identity`</span> to true.
  late final Output<bool?> uniqueWriterIdentity;

  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span>.
  late final Output<String> writerIdentity;

  ProjectSink(
    String name, {
    ProjectSinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:logging/projectSink:ProjectSink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
