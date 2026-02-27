// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../billing_account_sink_bigquery_options/billing_account_sink_bigquery_options.dart';
import '../billing_account_sink_exclusion/billing_account_sink_exclusion.dart';

/// The set of arguments for BillingAccountSink.
class BillingAccountSinkArgs {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final pulumi.Input<BillingAccountSinkBigqueryOptions>? bigqueryOptions;

  /// The billing account exported to the sink.
  final pulumi.Input<String> billingAccount;

  /// A description of this sink. The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;

  /// The destination of the sink (or, in other words, where logs are written to). Can be a
  /// Cloud Storage bucket, a PubSub topic, a BigQuery dataset or a Cloud Logging bucket. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]]/locations/global/buckets/[BUCKET_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  final pulumi.Input<String> destination;

  /// If set to True, then this sink is disabled and it does not export any log entries.
  final pulumi.Input<bool>? disabled;

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  final pulumi.Input<List<BillingAccountSinkExclusion>>? exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final pulumi.Input<String>? filter;

  /// The name of the logging sink.
  final pulumi.Input<String>? name;

  BillingAccountSinkArgs({
    this.bigqueryOptions,
    required this.billingAccount,
    this.description,
    required this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryOptionsValue = bigqueryOptions;
    if (bigqueryOptionsValue != null) {
      map['bigqueryOptions'] = pulumi.Input.mapOptionalInputValue<
          BillingAccountSinkBigqueryOptions,
          Map<String, dynamic>>(bigqueryOptionsValue, (value) => value.toMap());
    }
    map['billingAccount'] = billingAccount;
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
      map['exclusions'] = pulumi.Input.mapOptionalInputValue<
              List<BillingAccountSinkExclusion>, List<Map<String, dynamic>>>(
          exclusionsValue,
          (value) => pulumi.Input.encodeList<BillingAccountSinkExclusion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory BillingAccountSinkArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountSinkArgs(
      bigqueryOptions:
          pulumi.Input.asOptionalInput<BillingAccountSinkBigqueryOptions>(
              map['bigqueryOptions']),
      billingAccount: pulumi.Input.asInput<String>(map['billingAccount']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destination: pulumi.Input.asInput<String>(map['destination']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      exclusions:
          pulumi.Input.asOptionalInput<List<BillingAccountSinkExclusion>>(
              map['exclusions']),
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
