// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../billing_account_bucket_config_cmek_settings/billing_account_bucket_config_cmek_settings.dart';
import '../billing_account_bucket_config_index_config/billing_account_bucket_config_index_config.dart';

/// The set of arguments for BillingAccountBucketConfig.
class BillingAccountBucketConfigArgs {
  /// The parent resource that contains the logging bucket.
  final Input<String> billingAccount;

  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final Input<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final Input<BillingAccountBucketConfigCmekSettings>? cmekSettings;

  /// Describes this bucket.
  final Input<String>? description;

  /// A list of indexed fields and related configuration data. Structure is documented below.
  final Input<List<BillingAccountBucketConfigIndexConfig>>? indexConfigs;

  /// The location of the bucket.
  final Input<String> location;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  final Input<int>? retentionDays;

  BillingAccountBucketConfigArgs({
    required this.billingAccount,
    required this.bucketId,
    this.cmekSettings,
    this.description,
    this.indexConfigs,
    required this.location,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccount'] = billingAccount;
    map['bucketId'] = bucketId;
    final cmekSettingsValue = cmekSettings;
    if (cmekSettingsValue != null) {
      map['cmekSettings'] = Input.mapOptionalInputValue<
          BillingAccountBucketConfigCmekSettings,
          Map<String, dynamic>>(cmekSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final indexConfigsValue = indexConfigs;
    if (indexConfigsValue != null) {
      map['indexConfigs'] = Input.mapOptionalInputValue<
              List<BillingAccountBucketConfigIndexConfig>,
              List<Map<String, dynamic>>>(
          indexConfigsValue,
          (value) => Input.encodeList<BillingAccountBucketConfigIndexConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['location'] = location;
    final retentionDaysValue = retentionDays;
    if (retentionDaysValue != null) {
      map['retentionDays'] = retentionDaysValue;
    }
    return map;
  }

  factory BillingAccountBucketConfigArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountBucketConfigArgs(
      billingAccount: Input.asInput<String>(map['billingAccount']),
      bucketId: Input.asInput<String>(map['bucketId']),
      cmekSettings:
          Input.asOptionalInput<BillingAccountBucketConfigCmekSettings>(
              map['cmekSettings']),
      description: Input.asOptionalInput<String>(map['description']),
      indexConfigs:
          Input.asOptionalInput<List<BillingAccountBucketConfigIndexConfig>>(
              map['indexConfigs']),
      location: Input.asInput<String>(map['location']),
      retentionDays: Input.asOptionalInput<int>(map['retentionDays']),
    );
  }
}
