// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../project_sink_bigquery_options/project_sink_bigquery_options.dart';
import '../project_sink_exclusion/project_sink_exclusion.dart';

/// The set of arguments for ProjectSink.
class ProjectSinkArgs {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final Input<ProjectSinkBigqueryOptions>? bigqueryOptions;

  /// A user managed service account that will be used to write
  /// the log entries. The format must be `serviceAccount:some@email`. This field can only be specified if you are
  /// routing logs to a destination outside this sink's project. If not specified, a Logging service account
  /// will automatically be generated.
  final Input<String>? customWriterIdentity;

  /// A description of this sink. The maximum length of the description is 8000 characters.
  final Input<String>? description;

  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  final Input<String> destination;

  /// If set to True, then this sink is disabled and it does not export any log entries.
  final Input<bool>? disabled;

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  final Input<List<ProjectSinkExclusion>>? exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final Input<String>? filter;

  /// The name of the logging sink. Logging automatically creates two sinks: `_Required` and `_Default`.
  final Input<String>? name;

  /// The ID of the project to create the sink in. If omitted, the project associated with the provider is
  /// used.
  final Input<String>? project;

  /// Whether or not to create a unique identity associated with this sink. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, then the <span pulumi-lang-nodejs="`writerIdentity`" pulumi-lang-dotnet="`WriterIdentity`" pulumi-lang-go="`writerIdentity`" pulumi-lang-python="`writer_identity`" pulumi-lang-yaml="`writerIdentity`" pulumi-lang-java="`writerIdentity`">`writer_identity`</span> used is `serviceAccount:cloud-logs@system.gserviceaccount.com`. If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> (the default),
  /// then a unique service account is created and used for this sink. If you wish to publish logs across projects or utilize
  /// <span pulumi-lang-nodejs="`bigqueryOptions`" pulumi-lang-dotnet="`BigqueryOptions`" pulumi-lang-go="`bigqueryOptions`" pulumi-lang-python="`bigquery_options`" pulumi-lang-yaml="`bigqueryOptions`" pulumi-lang-java="`bigqueryOptions`">`bigquery_options`</span>, you must set <span pulumi-lang-nodejs="`uniqueWriterIdentity`" pulumi-lang-dotnet="`UniqueWriterIdentity`" pulumi-lang-go="`uniqueWriterIdentity`" pulumi-lang-python="`unique_writer_identity`" pulumi-lang-yaml="`uniqueWriterIdentity`" pulumi-lang-java="`uniqueWriterIdentity`">`unique_writer_identity`</span> to true.
  final Input<bool>? uniqueWriterIdentity;

  ProjectSinkArgs({
    this.bigqueryOptions,
    this.customWriterIdentity,
    this.description,
    required this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.name,
    this.project,
    this.uniqueWriterIdentity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryOptionsValue = bigqueryOptions;
    if (bigqueryOptionsValue != null) {
      map['bigqueryOptions'] = Input.mapOptionalInputValue<
          ProjectSinkBigqueryOptions,
          Map<String, dynamic>>(bigqueryOptionsValue, (value) => value.toMap());
    }
    final customWriterIdentityValue = customWriterIdentity;
    if (customWriterIdentityValue != null) {
      map['customWriterIdentity'] = customWriterIdentityValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destination'] = destination;
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = Input.mapOptionalInputValue<
              List<ProjectSinkExclusion>, List<Map<String, dynamic>>>(
          exclusionsValue,
          (value) =>
              Input.encodeList<ProjectSinkExclusion, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final uniqueWriterIdentityValue = uniqueWriterIdentity;
    if (uniqueWriterIdentityValue != null) {
      map['uniqueWriterIdentity'] = uniqueWriterIdentityValue;
    }
    return map;
  }

  factory ProjectSinkArgs.fromMap(Map<String, dynamic> map) {
    return ProjectSinkArgs(
      bigqueryOptions: Input.asOptionalInput<ProjectSinkBigqueryOptions>(
          map['bigqueryOptions']),
      customWriterIdentity:
          Input.asOptionalInput<String>(map['customWriterIdentity']),
      description: Input.asOptionalInput<String>(map['description']),
      destination: Input.asInput<String>(map['destination']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      exclusions:
          Input.asOptionalInput<List<ProjectSinkExclusion>>(map['exclusions']),
      filter: Input.asOptionalInput<String>(map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      uniqueWriterIdentity:
          Input.asOptionalInput<bool>(map['uniqueWriterIdentity']),
    );
  }
}
