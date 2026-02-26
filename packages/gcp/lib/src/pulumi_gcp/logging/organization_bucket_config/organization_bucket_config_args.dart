// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_bucket_config_cmek_settings/organization_bucket_config_cmek_settings.dart';
import '../organization_bucket_config_index_config/organization_bucket_config_index_config.dart';

/// The set of arguments for OrganizationBucketConfig.
class OrganizationBucketConfigArgs {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final Input<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final Input<OrganizationBucketConfigCmekSettings>? cmekSettings;

  /// Describes this bucket.
  final Input<String>? description;

  /// A list of indexed fields and related configuration data. Structure is documented below.
  final Input<List<OrganizationBucketConfigIndexConfig>>? indexConfigs;

  /// The location of the bucket. The supported locations are: "global" "us-central1"
  final Input<String> location;

  /// The parent resource that contains the logging bucket.
  final Input<String> organization;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  final Input<int>? retentionDays;

  OrganizationBucketConfigArgs({
    required this.bucketId,
    this.cmekSettings,
    this.description,
    this.indexConfigs,
    required this.location,
    required this.organization,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    final cmekSettingsValue = cmekSettings;
    if (cmekSettingsValue != null) {
      map['cmekSettings'] = Input.mapOptionalInputValue<
          OrganizationBucketConfigCmekSettings,
          Map<String, dynamic>>(cmekSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final indexConfigsValue = indexConfigs;
    if (indexConfigsValue != null) {
      map['indexConfigs'] = Input.mapOptionalInputValue<
              List<OrganizationBucketConfigIndexConfig>,
              List<Map<String, dynamic>>>(
          indexConfigsValue,
          (value) => Input.encodeList<OrganizationBucketConfigIndexConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['location'] = location;
    map['organization'] = organization;
    final retentionDaysValue = retentionDays;
    if (retentionDaysValue != null) {
      map['retentionDays'] = retentionDaysValue;
    }
    return map;
  }

  factory OrganizationBucketConfigArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationBucketConfigArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      cmekSettings: Input.asOptionalInput<OrganizationBucketConfigCmekSettings>(
          map['cmekSettings']),
      description: Input.asOptionalInput<String>(map['description']),
      indexConfigs:
          Input.asOptionalInput<List<OrganizationBucketConfigIndexConfig>>(
              map['indexConfigs']),
      location: Input.asInput<String>(map['location']),
      organization: Input.asInput<String>(map['organization']),
      retentionDays: Input.asOptionalInput<int>(map['retentionDays']),
    );
  }
}
