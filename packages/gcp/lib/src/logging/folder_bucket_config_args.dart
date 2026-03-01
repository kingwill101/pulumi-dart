// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_bucket_config_cmek_settings.dart';
import 'folder_bucket_config_index_config.dart';

/// {@template pulumi_logging_folder_bucket_config_folder_bucket_config_args_doc}
/// The set of arguments for FolderBucketConfig.
/// {@endtemplate}
/// {@macro pulumi_logging_folder_bucket_config_folder_bucket_config_args_doc}
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

  /// Creates a new [FolderBucketConfigArgs].
  /// [bucketId] The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  /// [description] Describes this bucket.
  /// [folder] The parent resource that contains the logging bucket.
  /// [indexConfigs] A list of indexed fields and related configuration data. Structure is documented below.
  /// [location] The location of the bucket.
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  FolderBucketConfigArgs({
    required String bucketId,
    FolderBucketConfigCmekSettings? cmekSettings,
    String? description,
    required String folder,
    List<FolderBucketConfigIndexConfig>? indexConfigs,
    required String location,
    int? retentionDays,
  }) : bucketId = pulumi.Input.asInput<String>(bucketId),
       cmekSettings = pulumi
           .Input.asOptionalInput<FolderBucketConfigCmekSettings>(cmekSettings),
       description = pulumi.Input.asOptionalInput<String>(description),
       folder = pulumi.Input.asInput<String>(folder),
       indexConfigs =
           pulumi.Input.asOptionalInput<List<FolderBucketConfigIndexConfig>>(
             indexConfigs,
           ),
       location = pulumi.Input.asInput<String>(location),
       retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'cmekSettings':
          ?pulumi.Input.mapOptionalInputValue<
            FolderBucketConfigCmekSettings,
            Map<String, dynamic>
          >(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'folder': folder,
      'indexConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FolderBucketConfigIndexConfig>,
            List<Map<String, dynamic>>
          >(
            indexConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  FolderBucketConfigIndexConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'location': location,
      'retentionDays': ?retentionDays,
    };
  }

  factory FolderBucketConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderBucketConfigArgs(
      bucketId: map['bucketId'] as String,
      cmekSettings: map['cmekSettings'] == null
          ? null
          : FolderBucketConfigCmekSettings.fromMap(
              (map['cmekSettings'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      folder: map['folder'] as String,
      indexConfigs: map['indexConfigs'] == null
          ? null
          : pulumi.Input.decodeList<FolderBucketConfigIndexConfig>(
              map['indexConfigs'],
              (value) => FolderBucketConfigIndexConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      location: map['location'] as String,
      retentionDays: map['retentionDays'] == null
          ? null
          : map['retentionDays'] as int,
    );
  }
}
