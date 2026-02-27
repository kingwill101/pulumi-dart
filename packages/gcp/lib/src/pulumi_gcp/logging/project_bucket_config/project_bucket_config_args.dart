// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_bucket_config_cmek_settings/project_bucket_config_cmek_settings.dart';
import '../project_bucket_config_index_config/project_bucket_config_index_config.dart';

/// The set of arguments for ProjectBucketConfig.
class ProjectBucketConfigArgs {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final pulumi.Input<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed. Structure is documented below.
  final pulumi.Input<ProjectBucketConfigCmekSettings>? cmekSettings;

  /// Describes this bucket.
  final pulumi.Input<String>? description;

  /// Whether or not Log Analytics is enabled. Logs for buckets with Log Analytics enabled can be queried in the **Log Analytics** page using SQL queries. Cannot be disabled once enabled.
  final pulumi.Input<bool>? enableAnalytics;

  /// A list of indexed fields and related configuration data. Structure is documented below.
  final pulumi.Input<List<ProjectBucketConfigIndexConfig>>? indexConfigs;

  /// The location of the bucket.
  final pulumi.Input<String> location;

  /// Whether the bucket is locked. The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  final pulumi.Input<bool>? locked;

  /// The parent resource that contains the logging bucket.
  final pulumi.Input<String> project;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  final pulumi.Input<int>? retentionDays;

  ProjectBucketConfigArgs({
    required this.bucketId,
    this.cmekSettings,
    this.description,
    this.enableAnalytics,
    this.indexConfigs,
    required this.location,
    this.locked,
    required this.project,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    final cmekSettingsValue = cmekSettings;
    if (cmekSettingsValue != null) {
      map['cmekSettings'] = pulumi.Input.mapOptionalInputValue<
          ProjectBucketConfigCmekSettings,
          Map<String, dynamic>>(cmekSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableAnalyticsValue = enableAnalytics;
    if (enableAnalyticsValue != null) {
      map['enableAnalytics'] = enableAnalyticsValue;
    }
    final indexConfigsValue = indexConfigs;
    if (indexConfigsValue != null) {
      map['indexConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<ProjectBucketConfigIndexConfig>, List<Map<String, dynamic>>>(
          indexConfigsValue,
          (value) => pulumi.Input.encodeList<ProjectBucketConfigIndexConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['location'] = location;
    final lockedValue = locked;
    if (lockedValue != null) {
      map['locked'] = lockedValue;
    }
    map['project'] = project;
    final retentionDaysValue = retentionDays;
    if (retentionDaysValue != null) {
      map['retentionDays'] = retentionDaysValue;
    }
    return map;
  }

  factory ProjectBucketConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProjectBucketConfigArgs(
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      cmekSettings:
          pulumi.Input.asOptionalInput<ProjectBucketConfigCmekSettings>(
              map['cmekSettings']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableAnalytics:
          pulumi.Input.asOptionalInput<bool>(map['enableAnalytics']),
      indexConfigs:
          pulumi.Input.asOptionalInput<List<ProjectBucketConfigIndexConfig>>(
              map['indexConfigs']),
      location: pulumi.Input.asInput<String>(map['location']),
      locked: pulumi.Input.asOptionalInput<bool>(map['locked']),
      project: pulumi.Input.asInput<String>(map['project']),
      retentionDays: pulumi.Input.asOptionalInput<int>(map['retentionDays']),
    );
  }
}
