// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmek_settings.dart';
import 'index_config.dart';

/// The set of arguments for OrganizationBucket.
class OrganizationBucketArgs {
  /// Whether log analytics is enabled for this bucket.Once enabled, log analytics features cannot be disabled.
  final pulumi.Input<bool>? analyticsEnabled;

  /// Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  final pulumi.Input<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final pulumi.Input<CmekSettings>? cmekSettings;

  /// Describes this bucket.
  final pulumi.Input<String>? description;

  /// A list of indexed fields and related configuration data.
  final pulumi.Input<List<IndexConfig>>? indexConfigs;
  final pulumi.Input<String>? location;

  /// Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  final pulumi.Input<bool>? locked;
  final pulumi.Input<String> organizationId;

  /// Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
  final pulumi.Input<List<String>>? restrictedFields;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  final pulumi.Input<int>? retentionDays;

  OrganizationBucketArgs({
    this.analyticsEnabled,
    required this.bucketId,
    this.cmekSettings,
    this.description,
    this.indexConfigs,
    this.location,
    this.locked,
    required this.organizationId,
    this.restrictedFields,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analyticsEnabledValue = analyticsEnabled;
    if (analyticsEnabledValue != null) {
      map['analyticsEnabled'] = analyticsEnabledValue;
    }
    map['bucketId'] = bucketId;
    final cmekSettingsValue = cmekSettings;
    if (cmekSettingsValue != null) {
      map['cmekSettings'] = pulumi.Input.mapOptionalInputValue<CmekSettings,
          Map<String, dynamic>>(cmekSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final indexConfigsValue = indexConfigs;
    if (indexConfigsValue != null) {
      map['indexConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<IndexConfig>, List<Map<String, dynamic>>>(
          indexConfigsValue,
          (value) => pulumi.Input.encodeList<IndexConfig, Map<String, dynamic>>(
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
    map['organizationId'] = organizationId;
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

  factory OrganizationBucketArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationBucketArgs(
      analyticsEnabled:
          pulumi.Input.asOptionalInput<bool>(map['analyticsEnabled']),
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      cmekSettings:
          pulumi.Input.asOptionalInput<CmekSettings>(map['cmekSettings']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      indexConfigs:
          pulumi.Input.asOptionalInput<List<IndexConfig>>(map['indexConfigs']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      locked: pulumi.Input.asOptionalInput<bool>(map['locked']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      restrictedFields:
          pulumi.Input.asOptionalInput<List<String>>(map['restrictedFields']),
      retentionDays: pulumi.Input.asOptionalInput<int>(map['retentionDays']),
    );
  }
}
