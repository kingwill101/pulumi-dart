// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_bucket_config_cmek_settings.dart';
import 'organization_bucket_config_index_config.dart';

/// {@template pulumi_logging_organization_bucket_config_organization_bucket_config_args_doc}
/// The set of arguments for OrganizationBucketConfig.
/// {@endtemplate}
/// {@macro pulumi_logging_organization_bucket_config_organization_bucket_config_args_doc}
class OrganizationBucketConfigArgs {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  final pulumi.Input<String> bucketId;
  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  final pulumi.Input<OrganizationBucketConfigCmekSettings>? cmekSettings;
  /// Describes this bucket.
  final pulumi.Input<String>? description;
  /// A list of indexed fields and related configuration data. Structure is documented below.
  final pulumi.Input<List<OrganizationBucketConfigIndexConfig>>? indexConfigs;
  /// The location of the bucket. The supported locations are: "global" "us-central1"
  final pulumi.Input<String> location;
  /// The parent resource that contains the logging bucket.
  final pulumi.Input<String> organization;
  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [OrganizationBucketConfigArgs].
  /// [bucketId] The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  /// [cmekSettings] The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  /// [description] Describes this bucket.
  /// [indexConfigs] A list of indexed fields and related configuration data. Structure is documented below.
  /// [location] The location of the bucket. The supported locations are: "global" "us-central1"
  /// [organization] The parent resource that contains the logging bucket.
  /// [retentionDays] Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  OrganizationBucketConfigArgs({
    required String bucketId,
    OrganizationBucketConfigCmekSettings? cmekSettings,
    String? description,
    List<OrganizationBucketConfigIndexConfig>? indexConfigs,
    required String location,
    required String organization,
    int? retentionDays,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      cmekSettings = pulumi.Input.asOptionalInput<OrganizationBucketConfigCmekSettings>(cmekSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      indexConfigs = pulumi.Input.asOptionalInput<List<OrganizationBucketConfigIndexConfig>>(indexConfigs),
      location = pulumi.Input.asInput<String>(location),
      organization = pulumi.Input.asInput<String>(organization),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'cmekSettings': ?pulumi.Input.mapOptionalInputValue<OrganizationBucketConfigCmekSettings, Map<String, dynamic>>(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'indexConfigs': ?pulumi.Input.mapOptionalInputValue<List<OrganizationBucketConfigIndexConfig>, List<Map<String, dynamic>>>(indexConfigs, (value) => pulumi.Input.encodeList<OrganizationBucketConfigIndexConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'organization': organization,
      'retentionDays': ?retentionDays,
    };
  }

  factory OrganizationBucketConfigArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationBucketConfigArgs(
      bucketId: map['bucketId'] as String,
      cmekSettings: map['cmekSettings'] == null ? null : OrganizationBucketConfigCmekSettings.fromMap((map['cmekSettings'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      indexConfigs: map['indexConfigs'] == null ? null : pulumi.Input.decodeList<OrganizationBucketConfigIndexConfig>(map['indexConfigs'], (value) => OrganizationBucketConfigIndexConfig.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      organization: map['organization'] as String,
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
    );
  }
}

