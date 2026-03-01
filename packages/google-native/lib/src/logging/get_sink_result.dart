// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_options_response.dart';
import 'log_exclusion_response.dart';

/// Result data returned by getSink.
class GetSinkResult {
  /// Optional. Options that affect sinks exporting data to BigQuery.
  final BigQueryOptionsResponse bigqueryOptions;

  /// The creation timestamp of the sink.This field may not be present for older sinks.
  final String createTime;

  /// Optional. A description of this sink.The maximum length of the description is 8000 characters.
  final String description;

  /// The export destination: "storage.googleapis.com/[GCS_BUCKET]" "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]" "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]" "logging.googleapis.com/projects/[PROJECT_ID]" "logging.googleapis.com/projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" The sink's writer_identity, set when the sink is created, must have permission to write to the destination or else the log entries are not exported. For more information, see Exporting Logs with Sinks (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).
  final String destination;

  /// Optional. If set to true, then this sink is disabled and it does not export any log entries.
  final bool disabled;

  /// Optional. Log entries that match any of these exclusion filters will not be exported.If a log entry is matched by both filter and one of exclusion_filters it will not be exported.
  final List<LogExclusionResponse> exclusions;

  /// Optional. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries). The only exported log entries are those that are in the resource owning the sink and that match the filter.For example:logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR
  final String filter;

  /// Optional. This field applies only to sinks owned by organizations and folders. If the field is false, the default, only the logs owned by the sink's parent resource are available for export. If the field is true, then log entries from all the projects, folders, and billing accounts contained in the sink's parent resource are also available for export. Whether a particular log entry from the children is exported depends on the sink's filter expression.For example, if this field is true, then the filter resource.type=gce_instance would export all Compute Engine VM instance log entries from all projects in the sink's parent.To only export entries from certain child projects, filter on the project part of the log name:logName:("projects/test-project1/" OR "projects/test-project2/") AND resource.type=gce_instance
  final bool includeChildren;

  /// The client-assigned sink identifier, unique within the project.For example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods. First character has to be alphanumeric.
  final String name;

  /// Deprecated. This field is unused.
  final String outputVersionFormat;

  /// The last update timestamp of the sink.This field may not be present for older sinks.
  final String updateTime;

  /// An IAM identity—a service account or group—under which Cloud Logging writes the exported log entries to the sink's destination. This field is either set by specifying custom_writer_identity or set automatically by sinks.create and sinks.update based on the value of unique_writer_identity in those methods.Until you grant this identity write-access to the destination, log entry exports from this sink will fail. For more information, see Granting Access for a Resource (https://cloud.google.com/iam/docs/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource). Consult the destination service's documentation to determine the appropriate IAM roles to assign to the identity.Sinks that have a destination that is a log bucket in the same project as the sink cannot have a writer_identity and no additional permissions are required.
  final String writerIdentity;

  /// Creates a new [GetSinkResult].
  /// [bigqueryOptions] Optional. Options that affect sinks exporting data to BigQuery.
  /// [createTime] The creation timestamp of the sink.This field may not be present for older sinks.
  /// [description] Optional. A description of this sink.The maximum length of the description is 8000 characters.
  /// [destination] The export destination: "storage.googleapis.com/[GCS_BUCKET]" "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]" "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]" "logging.googleapis.com/projects/[PROJECT_ID]" "logging.googleapis.com/projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" The sink's writer_identity, set when the sink is created, must have permission to write to the destination or else the log entries are not exported. For more information, see Exporting Logs with Sinks (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).
  /// [disabled] Optional. If set to true, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Optional. Log entries that match any of these exclusion filters will not be exported.If a log entry is matched by both filter and one of exclusion_filters it will not be exported.
  /// [filter] Optional. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries). The only exported log entries are those that are in the resource owning the sink and that match the filter.For example:logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR
  /// [includeChildren] Optional. This field applies only to sinks owned by organizations and folders. If the field is false, the default, only the logs owned by the sink's parent resource are available for export. If the field is true, then log entries from all the projects, folders, and billing accounts contained in the sink's parent resource are also available for export. Whether a particular log entry from the children is exported depends on the sink's filter expression.For example, if this field is true, then the filter resource.type=gce_instance would export all Compute Engine VM instance log entries from all projects in the sink's parent.To only export entries from certain child projects, filter on the project part of the log name:logName:("projects/test-project1/" OR "projects/test-project2/") AND resource.type=gce_instance
  /// [name] The client-assigned sink identifier, unique within the project.For example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods. First character has to be alphanumeric.
  /// [outputVersionFormat] Deprecated. This field is unused.
  /// [updateTime] The last update timestamp of the sink.This field may not be present for older sinks.
  /// [writerIdentity] An IAM identity—a service account or group—under which Cloud Logging writes the exported log entries to the sink's destination. This field is either set by specifying custom_writer_identity or set automatically by sinks.create and sinks.update based on the value of unique_writer_identity in those methods.Until you grant this identity write-access to the destination, log entry exports from this sink will fail. For more information, see Granting Access for a Resource (https://cloud.google.com/iam/docs/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource). Consult the destination service's documentation to determine the appropriate IAM roles to assign to the identity.Sinks that have a destination that is a log bucket in the same project as the sink cannot have a writer_identity and no additional permissions are required.
  GetSinkResult({
    required this.bigqueryOptions,
    required this.createTime,
    required this.description,
    required this.destination,
    required this.disabled,
    required this.exclusions,
    required this.filter,
    required this.includeChildren,
    required this.name,
    required this.outputVersionFormat,
    required this.updateTime,
    required this.writerIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions': bigqueryOptions.toMap(),
      'createTime': createTime,
      'description': description,
      'destination': destination,
      'disabled': disabled,
      'exclusions':
          pulumi.Input.encodeList<LogExclusionResponse, Map<String, dynamic>>(
            exclusions,
            (value) => value.toMap(),
          ),
      'filter': filter,
      'includeChildren': includeChildren,
      'name': name,
      'outputVersionFormat': outputVersionFormat,
      'updateTime': updateTime,
      'writerIdentity': writerIdentity,
    };
  }

  factory GetSinkResult.fromMap(Map<String, dynamic> map) {
    return GetSinkResult(
      bigqueryOptions: BigQueryOptionsResponse.fromMap(
        (map['bigqueryOptions'] as Map).cast<String, dynamic>(),
      ),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      destination: map['destination'] as String,
      disabled: map['disabled'] as bool,
      exclusions: pulumi.Input.decodeList<LogExclusionResponse>(
        map['exclusions'],
        (value) => LogExclusionResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      filter: map['filter'] as String,
      includeChildren: map['includeChildren'] as bool,
      name: map['name'] as String,
      outputVersionFormat: map['outputVersionFormat'] as String,
      updateTime: map['updateTime'] as String,
      writerIdentity: map['writerIdentity'] as String,
    );
  }
}
