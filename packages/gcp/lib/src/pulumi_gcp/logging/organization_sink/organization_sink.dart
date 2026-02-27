import 'package:pulumi/pulumi.dart';
import '../organization_sink_bigquery_options/organization_sink_bigquery_options.dart';
import '../organization_sink_exclusion/organization_sink_exclusion.dart';
import 'organization_sink_args.dart';

/// Manages an organization-level logging sink. For more information see:
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/organizations.sinks)
/// * How-to Guides
/// * [Exporting Logs](https://cloud.google.com/logging/docs/export)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Organization-level logging sinks can be imported using this format:
///
/// * `organizations/{{organization_id}}/sinks/{{sink_id}}`
///
/// When using the `pulumi import` command, organization-level logging sinks can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/organizationSink:OrganizationSink default organizations/{{organization_id}}/sinks/{{sink_id}}
/// ```
class OrganizationSink extends CustomResource {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  late final Output<OrganizationSinkBigqueryOptions> bigqueryOptions;

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

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  late final Output<List<OrganizationSinkExclusion>?> exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  late final Output<String?> filter;

  /// Whether or not to include child folders or projects in the sink export. If true, logs
  /// associated with child projects are also exported; otherwise only logs relating to the provided organization are included.
  late final Output<bool?> includeChildren;

  /// Whether or not to intercept logs from child projects. If true, matching logs will not
  /// match with sinks in child resources, except _Required sinks. This sink will be visible to child resources when listing sinks.
  late final Output<bool?> interceptChildren;

  /// The name of the logging sink.
  late final Output<String> name;

  /// The numeric ID of the organization to be exported to the sink.
  late final Output<String> orgId;

  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  late final Output<String> writerIdentity;

  OrganizationSink(
    String name, {
    OrganizationSinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationSink:OrganizationSink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryOptions =
        registerOutput<OrganizationSinkBigqueryOptions>('bigqueryOptions');
    this.description = registerOutput<String?>('description');
    this.destination = registerOutput<String>('destination');
    this.disabled = registerOutput<bool?>('disabled');
    this.exclusions =
        registerOutput<List<OrganizationSinkExclusion>?>('exclusions');
    this.filter = registerOutput<String?>('filter');
    this.includeChildren = registerOutput<bool?>('includeChildren');
    this.interceptChildren = registerOutput<bool?>('interceptChildren');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.writerIdentity = registerOutput<String>('writerIdentity');
  }
}
