// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_sink_bigquery_options/organization_sink_bigquery_options.dart';
import '../organization_sink_exclusion/organization_sink_exclusion.dart';

/// The set of arguments for OrganizationSink.
class OrganizationSinkArgs {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final Input<OrganizationSinkBigqueryOptions>? bigqueryOptions;

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
  final Input<List<OrganizationSinkExclusion>>? exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final Input<String>? filter;

  /// Whether or not to include child folders or projects in the sink export. If true, logs
  /// associated with child projects are also exported; otherwise only logs relating to the provided organization are included.
  final Input<bool>? includeChildren;

  /// Whether or not to intercept logs from child projects. If true, matching logs will not
  /// match with sinks in child resources, except _Required sinks. This sink will be visible to child resources when listing sinks.
  final Input<bool>? interceptChildren;

  /// The name of the logging sink.
  final Input<String>? name;

  /// The numeric ID of the organization to be exported to the sink.
  final Input<String> orgId;

  OrganizationSinkArgs({
    this.bigqueryOptions,
    this.description,
    required this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.includeChildren,
    this.interceptChildren,
    this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryOptionsValue = bigqueryOptions;
    if (bigqueryOptionsValue != null) {
      map['bigqueryOptions'] = Input.mapOptionalInputValue<
          OrganizationSinkBigqueryOptions,
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
      map['exclusions'] = Input.mapOptionalInputValue<
              List<OrganizationSinkExclusion>, List<Map<String, dynamic>>>(
          exclusionsValue,
          (value) =>
              Input.encodeList<OrganizationSinkExclusion, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
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
    map['orgId'] = orgId;
    return map;
  }

  factory OrganizationSinkArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSinkArgs(
      bigqueryOptions: Input.asOptionalInput<OrganizationSinkBigqueryOptions>(
          map['bigqueryOptions']),
      description: Input.asOptionalInput<String>(map['description']),
      destination: Input.asInput<String>(map['destination']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      exclusions: Input.asOptionalInput<List<OrganizationSinkExclusion>>(
          map['exclusions']),
      filter: Input.asOptionalInput<String>(map['filter']),
      includeChildren: Input.asOptionalInput<bool>(map['includeChildren']),
      interceptChildren: Input.asOptionalInput<bool>(map['interceptChildren']),
      name: Input.asOptionalInput<String>(map['name']),
      orgId: Input.asInput<String>(map['orgId']),
    );
  }
}
