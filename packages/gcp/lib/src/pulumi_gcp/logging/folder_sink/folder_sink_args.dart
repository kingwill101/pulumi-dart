// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../folder_sink_bigquery_options/folder_sink_bigquery_options.dart';
import '../folder_sink_exclusion/folder_sink_exclusion.dart';

/// The set of arguments for FolderSink.
class FolderSinkArgs {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final Input<FolderSinkBigqueryOptions>? bigqueryOptions;

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

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  final Input<List<FolderSinkExclusion>>? exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final Input<String>? filter;

  /// The folder to be exported to the sink. Note that either `[FOLDER_ID]` or `folders/[FOLDER_ID]` is
  /// accepted.
  final Input<String> folder;

  /// Whether or not to include children folders in the sink export. If true, logs
  /// associated with child projects are also exported; otherwise only logs relating to the provided folder are included.
  final Input<bool>? includeChildren;

  /// Whether or not to intercept logs from child projects. If true, matching logs will not
  /// match with sinks in child resources, except _Required sinks. This sink will be visible to child resources when listing sinks.
  final Input<bool>? interceptChildren;

  /// The name of the logging sink.
  final Input<String>? name;

  FolderSinkArgs({
    this.bigqueryOptions,
    this.description,
    required this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    required this.folder,
    this.includeChildren,
    this.interceptChildren,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryOptionsValue = bigqueryOptions;
    if (bigqueryOptionsValue != null) {
      map['bigqueryOptions'] = Input.mapOptionalInputValue<
          FolderSinkBigqueryOptions,
          Map<String, dynamic>>(bigqueryOptionsValue, (value) => value.toMap());
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
      map['exclusions'] = Input.mapOptionalInputValue<List<FolderSinkExclusion>,
              List<Map<String, dynamic>>>(
          exclusionsValue,
          (value) =>
              Input.encodeList<FolderSinkExclusion, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['folder'] = folder;
    final includeChildrenValue = includeChildren;
    if (includeChildrenValue != null) {
      map['includeChildren'] = includeChildrenValue;
    }
    final interceptChildrenValue = interceptChildren;
    if (interceptChildrenValue != null) {
      map['interceptChildren'] = interceptChildrenValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FolderSinkArgs.fromMap(Map<String, dynamic> map) {
    return FolderSinkArgs(
      bigqueryOptions: Input.asOptionalInput<FolderSinkBigqueryOptions>(
          map['bigqueryOptions']),
      description: Input.asOptionalInput<String>(map['description']),
      destination: Input.asInput<String>(map['destination']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      exclusions:
          Input.asOptionalInput<List<FolderSinkExclusion>>(map['exclusions']),
      filter: Input.asOptionalInput<String>(map['filter']),
      folder: Input.asInput<String>(map['folder']),
      includeChildren: Input.asOptionalInput<bool>(map['includeChildren']),
      interceptChildren: Input.asOptionalInput<bool>(map['interceptChildren']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
