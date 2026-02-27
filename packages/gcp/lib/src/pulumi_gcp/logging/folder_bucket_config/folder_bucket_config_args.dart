// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../folder_bucket_config_cmek_settings/folder_bucket_config_cmek_settings.dart';
import '../folder_bucket_config_index_config/folder_bucket_config_index_config.dart';

/// The set of arguments for FolderBucketConfig.
class FolderBucketConfigArgs {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final pulumi.Input<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final pulumi.Input<FolderBucketConfigCmekSettings>? cmekSettings;

  /// Describes this bucket.
  final pulumi.Input<String>? description;

  /// The parent resource that contains the logging bucket.
  final pulumi.Input<String> folder;

  /// A list of indexed fields and related configuration data. Structure is documented below.
  final pulumi.Input<List<FolderBucketConfigIndexConfig>>? indexConfigs;

  /// The location of the bucket.
  final pulumi.Input<String> location;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  final pulumi.Input<int>? retentionDays;

  FolderBucketConfigArgs({
    required this.bucketId,
    this.cmekSettings,
    this.description,
    required this.folder,
    this.indexConfigs,
    required this.location,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    final cmekSettingsValue = cmekSettings;
    if (cmekSettingsValue != null) {
      map['cmekSettings'] = pulumi.Input.mapOptionalInputValue<
          FolderBucketConfigCmekSettings,
          Map<String, dynamic>>(cmekSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['folder'] = folder;
    final indexConfigsValue = indexConfigs;
    if (indexConfigsValue != null) {
      map['indexConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<FolderBucketConfigIndexConfig>, List<Map<String, dynamic>>>(
          indexConfigsValue,
          (value) => pulumi.Input.encodeList<FolderBucketConfigIndexConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['location'] = location;
    final retentionDaysValue = retentionDays;
    if (retentionDaysValue != null) {
      map['retentionDays'] = retentionDaysValue;
    }
    return map;
  }

  factory FolderBucketConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderBucketConfigArgs(
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      cmekSettings:
          pulumi.Input.asOptionalInput<FolderBucketConfigCmekSettings>(
              map['cmekSettings']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      folder: pulumi.Input.asInput<String>(map['folder']),
      indexConfigs:
          pulumi.Input.asOptionalInput<List<FolderBucketConfigIndexConfig>>(
              map['indexConfigs']),
      location: pulumi.Input.asInput<String>(map['location']),
      retentionDays: pulumi.Input.asOptionalInput<int>(map['retentionDays']),
    );
  }
}
