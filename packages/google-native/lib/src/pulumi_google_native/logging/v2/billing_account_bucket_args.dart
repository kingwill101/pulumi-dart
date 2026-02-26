// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'cmek_settings.dart';
import 'index_config.dart';

/// The set of arguments for BillingAccountBucket.
class BillingAccountBucketArgs {
  /// Whether log analytics is enabled for this bucket.Once enabled, log analytics features cannot be disabled.
  final Input<bool>? analyticsEnabled;
  final Input<String> billingAccountId;

  /// Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  final Input<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final Input<CmekSettings>? cmekSettings;

  /// Describes this bucket.
  final Input<String>? description;

  /// A list of indexed fields and related configuration data.
  final Input<List<IndexConfig>>? indexConfigs;
  final Input<String>? location;

  /// Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  final Input<bool>? locked;

  /// Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
  final Input<List<String>>? restrictedFields;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  final Input<int>? retentionDays;

  BillingAccountBucketArgs({
    this.analyticsEnabled,
    required this.billingAccountId,
    required this.bucketId,
    this.cmekSettings,
    this.description,
    this.indexConfigs,
    this.location,
    this.locked,
    this.restrictedFields,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analyticsEnabledValue = analyticsEnabled;
    if (analyticsEnabledValue != null) {
      map['analyticsEnabled'] = analyticsEnabledValue;
    }
    map['billingAccountId'] = billingAccountId;
    map['bucketId'] = bucketId;
    final cmekSettingsValue = cmekSettings;
    if (cmekSettingsValue != null) {
      map['cmekSettings'] =
          Input.mapOptionalInputValue<CmekSettings, Map<String, dynamic>>(
              cmekSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final indexConfigsValue = indexConfigs;
    if (indexConfigsValue != null) {
      map['indexConfigs'] = Input.mapOptionalInputValue<List<IndexConfig>,
              List<Map<String, dynamic>>>(
          indexConfigsValue,
          (value) => Input.encodeList<IndexConfig, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final lockedValue = locked;
    if (lockedValue != null) {
      map['locked'] = lockedValue;
    }
    final restrictedFieldsValue = restrictedFields;
    if (restrictedFieldsValue != null) {
      map['restrictedFields'] = restrictedFieldsValue;
    }
    final retentionDaysValue = retentionDays;
    if (retentionDaysValue != null) {
      map['retentionDays'] = retentionDaysValue;
    }
    return map;
  }

  factory BillingAccountBucketArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountBucketArgs(
      analyticsEnabled: Input.asOptionalInput<bool>(map['analyticsEnabled']),
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      bucketId: Input.asInput<String>(map['bucketId']),
      cmekSettings: Input.asOptionalInput<CmekSettings>(map['cmekSettings']),
      description: Input.asOptionalInput<String>(map['description']),
      indexConfigs:
          Input.asOptionalInput<List<IndexConfig>>(map['indexConfigs']),
      location: Input.asOptionalInput<String>(map['location']),
      locked: Input.asOptionalInput<bool>(map['locked']),
      restrictedFields:
          Input.asOptionalInput<List<String>>(map['restrictedFields']),
      retentionDays: Input.asOptionalInput<int>(map['retentionDays']),
    );
  }
}
