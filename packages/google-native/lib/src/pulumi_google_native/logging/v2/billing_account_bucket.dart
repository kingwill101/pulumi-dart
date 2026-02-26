import 'package:pulumi/pulumi.dart';
import 'billing_account_bucket_args.dart';
import 'cmek_settings_response.dart';
import 'index_config_response.dart';

/// Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.
/// Auto-naming is currently not supported for this resource.
class BillingAccountBucket extends CustomResource {
  /// Whether log analytics is enabled for this bucket.Once enabled, log analytics features cannot be disabled.
  late final Output<bool> analyticsEnabled;
  late final Output<String> billingAccountId;

  /// Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  late final Output<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  late final Output<CmekSettingsResponse> cmekSettings;

  /// The creation timestamp of the bucket. This is not set for any of the default buckets.
  late final Output<String> createTime;

  /// Describes this bucket.
  late final Output<String> description;

  /// A list of indexed fields and related configuration data.
  late final Output<List<IndexConfigResponse>> indexConfigs;

  /// The bucket lifecycle state.
  late final Output<String> lifecycleState;
  late final Output<String> location;

  /// Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  late final Output<bool> locked;

  /// The resource name of the bucket.For example:projects/my-project/locations/global/buckets/my-bucketFor a list of supported locations, see Supported Regions (https://cloud.google.com/logging/docs/region-support)For the location of global it is unspecified where log entries are actually stored.After a bucket has been created, the location cannot be changed.
  late final Output<String> name;

  /// Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
  late final Output<List<String>> restrictedFields;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  late final Output<int> retentionDays;

  /// The last update timestamp of the bucket.
  late final Output<String> updateTime;

  BillingAccountBucket(
    String name, {
    BillingAccountBucketArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:logging/v2:BillingAccountBucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.analyticsEnabled = Output.createUnknown<bool>();
    this.billingAccountId = Output.createUnknown<String>();
    this.bucketId = Output.createUnknown<String>();
    this.cmekSettings = Output.createUnknown<CmekSettingsResponse>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.indexConfigs = Output.createUnknown<List<IndexConfigResponse>>();
    this.lifecycleState = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.locked = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.restrictedFields = Output.createUnknown<List<String>>();
    this.retentionDays = Output.createUnknown<int>();
    this.updateTime = Output.createUnknown<String>();
  }
}
