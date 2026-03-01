// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_sink_bigquery_options.dart';
import 'folder_sink_exclusion.dart';

/// {@template pulumi_logging_folder_sink_folder_sink_args_doc}
/// The set of arguments for FolderSink.
/// {@endtemplate}
/// {@macro pulumi_logging_folder_sink_folder_sink_args_doc}
class FolderSinkArgs {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final pulumi.Input<FolderSinkBigqueryOptions>? bigqueryOptions;

  /// A description of this sink. The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;

  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  final pulumi.Input<String> destination;

  /// If set to True, then this sink is disabled and it does not export any log entries.
  final pulumi.Input<bool>? disabled;

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  final pulumi.Input<List<FolderSinkExclusion>>? exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final pulumi.Input<String>? filter;

  /// The folder to be exported to the sink. Note that either `[FOLDER_ID]` or `folders/[FOLDER_ID]` is
  /// accepted.
  final pulumi.Input<String> folder;

  /// Whether or not to include children folders in the sink export. If true, logs
  /// associated with child projects are also exported; otherwise only logs relating to the provided folder are included.
  final pulumi.Input<bool>? includeChildren;

  /// Whether or not to intercept logs from child projects. If true, matching logs will not
  /// match with sinks in child resources, except _Required sinks. This sink will be visible to child resources when listing sinks.
  final pulumi.Input<bool>? interceptChildren;

  /// The name of the logging sink.
  final pulumi.Input<String>? name;

  /// Creates a new [FolderSinkArgs].
  /// [bigqueryOptions] Options that affect sinks exporting data to BigQuery. Structure documented below.
  /// [description] A description of this sink. The maximum length of the description is 8000 characters.
  /// [destination] The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  /// [disabled] If set to True, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  /// [filter] The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// [folder] The folder to be exported to the sink. Note that either `[FOLDER_ID]` or `folders/[FOLDER_ID]` is
  /// [includeChildren] Whether or not to include children folders in the sink export. If true, logs
  /// [interceptChildren] Whether or not to intercept logs from child projects. If true, matching logs will not
  /// [name] The name of the logging sink.
  FolderSinkArgs({
    FolderSinkBigqueryOptions? bigqueryOptions,
    String? description,
    required String destination,
    bool? disabled,
    List<FolderSinkExclusion>? exclusions,
    String? filter,
    required String folder,
    bool? includeChildren,
    bool? interceptChildren,
    String? name,
  }) : bigqueryOptions = pulumi
           .Input.asOptionalInput<FolderSinkBigqueryOptions>(bigqueryOptions),
       description = pulumi.Input.asOptionalInput<String>(description),
       destination = pulumi.Input.asInput<String>(destination),
       disabled = pulumi.Input.asOptionalInput<bool>(disabled),
       exclusions = pulumi.Input.asOptionalInput<List<FolderSinkExclusion>>(
         exclusions,
       ),
       filter = pulumi.Input.asOptionalInput<String>(filter),
       folder = pulumi.Input.asInput<String>(folder),
       includeChildren = pulumi.Input.asOptionalInput<bool>(includeChildren),
       interceptChildren = pulumi.Input.asOptionalInput<bool>(
         interceptChildren,
       ),
       name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions':
          ?pulumi.Input.mapOptionalInputValue<
            FolderSinkBigqueryOptions,
            Map<String, dynamic>
          >(bigqueryOptions, (value) => value.toMap()),
      'description': ?description,
      'destination': destination,
      'disabled': ?disabled,
      'exclusions':
          ?pulumi.Input.mapOptionalInputValue<
            List<FolderSinkExclusion>,
            List<Map<String, dynamic>>
          >(
            exclusions,
            (value) =>
                pulumi.Input.encodeList<
                  FolderSinkExclusion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'filter': ?filter,
      'folder': folder,
      'includeChildren': ?includeChildren,
      'interceptChildren': ?interceptChildren,
      'name': ?name,
    };
  }

  factory FolderSinkArgs.fromMap(Map<String, dynamic> map) {
    return FolderSinkArgs(
      bigqueryOptions: map['bigqueryOptions'] == null
          ? null
          : FolderSinkBigqueryOptions.fromMap(
              (map['bigqueryOptions'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      destination: map['destination'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      exclusions: map['exclusions'] == null
          ? null
          : pulumi.Input.decodeList<FolderSinkExclusion>(
              map['exclusions'],
              (value) => FolderSinkExclusion.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      filter: map['filter'] == null ? null : map['filter'] as String,
      folder: map['folder'] as String,
      includeChildren: map['includeChildren'] == null
          ? null
          : map['includeChildren'] as bool,
      interceptChildren: map['interceptChildren'] == null
          ? null
          : map['interceptChildren'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
