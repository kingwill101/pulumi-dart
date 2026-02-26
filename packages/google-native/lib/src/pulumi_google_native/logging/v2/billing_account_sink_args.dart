// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'big_query_options.dart';
import 'billing_account_sink_output_version_format.dart';
import 'log_exclusion.dart';

/// The set of arguments for BillingAccountSink.
class BillingAccountSinkArgs {
  /// Optional. Options that affect sinks exporting data to BigQuery.
  final Input<BigQueryOptions>? bigqueryOptions;
  final Input<String> billingAccountId;

  /// Optional. A service account provided by the caller that will be used to write the log entries. The format must be serviceAccount:some@email. This field can only be specified if you are routing logs to a destination outside this sink's project. If not specified, a Logging service account will automatically be generated.
  final Input<String>? customWriterIdentity;

  /// Optional. A description of this sink.The maximum length of the description is 8000 characters.
  final Input<String>? description;

  /// The export destination: "storage.googleapis.com/[GCS_BUCKET]" "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]" "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]" "logging.googleapis.com/projects/[PROJECT_ID]" "logging.googleapis.com/projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" The sink's writer_identity, set when the sink is created, must have permission to write to the destination or else the log entries are not exported. For more information, see Exporting Logs with Sinks (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).
  final Input<String> destination;

  /// Optional. If set to true, then this sink is disabled and it does not export any log entries.
  final Input<bool>? disabled;

  /// Optional. Log entries that match any of these exclusion filters will not be exported.If a log entry is matched by both filter and one of exclusion_filters it will not be exported.
  final Input<List<LogExclusion>>? exclusions;

  /// Optional. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries). The only exported log entries are those that are in the resource owning the sink and that match the filter.For example:logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR
  final Input<String>? filter;

  /// Optional. This field applies only to sinks owned by organizations and folders. If the field is false, the default, only the logs owned by the sink's parent resource are available for export. If the field is true, then log entries from all the projects, folders, and billing accounts contained in the sink's parent resource are also available for export. Whether a particular log entry from the children is exported depends on the sink's filter expression.For example, if this field is true, then the filter resource.type=gce_instance would export all Compute Engine VM instance log entries from all projects in the sink's parent.To only export entries from certain child projects, filter on the project part of the log name:logName:("projects/test-project1/" OR "projects/test-project2/") AND resource.type=gce_instance
  final Input<bool>? includeChildren;

  /// The client-assigned sink identifier, unique within the project.For example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods. First character has to be alphanumeric.
  final Input<String>? name;

  /// Deprecated. This field is unused.
  final Input<BillingAccountSinkOutputVersionFormat>? outputVersionFormat;

  /// Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink's parent is a project, then the value returned as writer_identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink's destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a service agent (https://cloud.google.com/iam/docs/service-account-types#service-agents) used by the sinks with the same parent. For more information, see writer_identity in LogSink.
  final Input<bool>? uniqueWriterIdentity;

  BillingAccountSinkArgs({
    this.bigqueryOptions,
    required this.billingAccountId,
    this.customWriterIdentity,
    this.description,
    required this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.includeChildren,
    this.name,
    this.outputVersionFormat,
    this.uniqueWriterIdentity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryOptionsValue = bigqueryOptions;
    if (bigqueryOptionsValue != null) {
      map['bigqueryOptions'] =
          Input.mapOptionalInputValue<BigQueryOptions, Map<String, dynamic>>(
              bigqueryOptionsValue, (value) => value.toMap());
    }
    map['billingAccountId'] = billingAccountId;
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
      map['exclusions'] = Input.mapOptionalInputValue<List<LogExclusion>,
              List<Map<String, dynamic>>>(
          exclusionsValue,
          (value) => Input.encodeList<LogExclusion, Map<String, dynamic>>(
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputVersionFormatValue = outputVersionFormat;
    if (outputVersionFormatValue != null) {
      map['outputVersionFormat'] = Input.mapOptionalInputValue<
          BillingAccountSinkOutputVersionFormat,
          String>(outputVersionFormatValue, (value) => value.value);
    }
    final uniqueWriterIdentityValue = uniqueWriterIdentity;
    if (uniqueWriterIdentityValue != null) {
      map['uniqueWriterIdentity'] = uniqueWriterIdentityValue;
    }
    return map;
  }

  factory BillingAccountSinkArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountSinkArgs(
      bigqueryOptions:
          Input.asOptionalInput<BigQueryOptions>(map['bigqueryOptions']),
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      customWriterIdentity:
          Input.asOptionalInput<String>(map['customWriterIdentity']),
      description: Input.asOptionalInput<String>(map['description']),
      destination: Input.asInput<String>(map['destination']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      exclusions: Input.asOptionalInput<List<LogExclusion>>(map['exclusions']),
      filter: Input.asOptionalInput<String>(map['filter']),
      includeChildren: Input.asOptionalInput<bool>(map['includeChildren']),
      name: Input.asOptionalInput<String>(map['name']),
      outputVersionFormat:
          Input.asOptionalInput<BillingAccountSinkOutputVersionFormat>(
              map['outputVersionFormat']),
      uniqueWriterIdentity:
          Input.asOptionalInput<bool>(map['uniqueWriterIdentity']),
    );
  }
}
