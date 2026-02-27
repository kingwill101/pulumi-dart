import 'package:pulumi/pulumi.dart';
import '../billing_account_sink_bigquery_options/billing_account_sink_bigquery_options.dart';
import '../billing_account_sink_exclusion/billing_account_sink_exclusion.dart';
import 'billing_account_sink_args.dart';

/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.sinks)
/// * How-to Guides
/// * [Exporting Logs](https://cloud.google.com/logging/docs/export)
///
/// > **Note** You must have the "Logs Configuration Writer" IAM role (`roles/logging.configWriter`)
/// [granted on the billing account](https://cloud.google.com/billing/reference/rest/v1/billingAccounts/getIamPolicy) to
/// the credentials used with this provider. [IAM roles granted on a billing account](https://cloud.google.com/billing/docs/how-to/billing-access) are separate from the
/// typical IAM roles granted on a project.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Billing account logging sinks can be imported using this format:
///
/// * `billingAccounts/{{billing_account_id}}/sinks/{{sink_id}}`
///
/// When using the `pulumi import` command, billing account logging sinks can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/billingAccountSink:BillingAccountSink default billingAccounts/{{billing_account_id}}/sinks/{{sink_id}}
/// ```
class BillingAccountSink extends CustomResource {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  late final Output<BillingAccountSinkBigqueryOptions> bigqueryOptions;

  /// The billing account exported to the sink.
  late final Output<String> billingAccount;

  /// A description of this sink. The maximum length of the description is 8000 characters.
  late final Output<String?> description;

  /// The destination of the sink (or, in other words, where logs are written to). Can be a
  /// Cloud Storage bucket, a PubSub topic, a BigQuery dataset or a Cloud Logging bucket. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]]/locations/global/buckets/[BUCKET_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  late final Output<String> destination;

  /// If set to True, then this sink is disabled and it does not export any log entries.
  late final Output<bool?> disabled;

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  late final Output<List<BillingAccountSinkExclusion>?> exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  late final Output<String?> filter;

  /// The name of the logging sink.
  late final Output<String> name;

  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  late final Output<String> writerIdentity;

  BillingAccountSink(
    String name, {
    BillingAccountSinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:logging/billingAccountSink:BillingAccountSink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryOptions =
        registerOutput<BillingAccountSinkBigqueryOptions>('bigqueryOptions');
    this.billingAccount = registerOutput<String>('billingAccount');
    this.description = registerOutput<String?>('description');
    this.destination = registerOutput<String>('destination');
    this.disabled = registerOutput<bool?>('disabled');
    this.exclusions =
        registerOutput<List<BillingAccountSinkExclusion>?>('exclusions');
    this.filter = registerOutput<String?>('filter');
    this.name = registerOutput<String>('name');
    this.writerIdentity = registerOutput<String>('writerIdentity');
  }
}
