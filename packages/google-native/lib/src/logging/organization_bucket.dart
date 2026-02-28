import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmek_settings_response.dart';
import 'index_config_response.dart';
import 'organization_bucket_args.dart';

/// Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.
/// Auto-naming is currently not supported for this resource.
class OrganizationBucket extends pulumi.CustomResource {
  /// Whether log analytics is enabled for this bucket.Once enabled, log analytics features cannot be disabled.
  late final pulumi.Output<bool> analyticsEnabled;

  /// Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  late final pulumi.Output<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  late final pulumi.Output<CmekSettingsResponse> cmekSettings;

  /// The creation timestamp of the bucket. This is not set for any of the default buckets.
  late final pulumi.Output<String> createTime;

  /// Describes this bucket.
  late final pulumi.Output<String> description;

  /// A list of indexed fields and related configuration data.
  late final pulumi.Output<List<IndexConfigResponse>> indexConfigs;

  /// The bucket lifecycle state.
  late final pulumi.Output<String> lifecycleState;
  late final pulumi.Output<String> location;

  /// Whether the bucket is locked.The retention period on a locked bucket cannot be changed. Locked buckets may only be deleted if they are empty.
  late final pulumi.Output<bool> locked;

  /// The resource name of the bucket.For example:projects/my-project/locations/global/buckets/my-bucketFor a list of supported locations, see Supported Regions (https://cloud.google.com/logging/docs/region-support)For the location of global it is unspecified where log entries are actually stored.After a bucket has been created, the location cannot be changed.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Log entry field paths that are denied access in this bucket.The following fields and their children are eligible: textPayload, jsonPayload, protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field will restrict all values. Adding a parent will block all child fields. (e.g. foo.bar will block foo.bar.baz)
  late final pulumi.Output<List<String>> restrictedFields;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used.
  late final pulumi.Output<int> retentionDays;

  /// The last update timestamp of the bucket.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OrganizationBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationBucket]. {@macro pulumi_logging_v2_organization_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationBucket(
    String name, {
    OrganizationBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:logging/v2:OrganizationBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.analyticsEnabled = registerOutput<bool>('analyticsEnabled');
    this.bucketId = registerOutput<String>('bucketId');
    this.cmekSettings = registerOutput<CmekSettingsResponse>('cmekSettings');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.indexConfigs =
        registerOutput<List<IndexConfigResponse>>('indexConfigs');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.location = registerOutput<String>('location');
    this.locked = registerOutput<bool>('locked');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.restrictedFields = registerOutput<List<String>>('restrictedFields');
    this.retentionDays = registerOutput<int>('retentionDays');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
