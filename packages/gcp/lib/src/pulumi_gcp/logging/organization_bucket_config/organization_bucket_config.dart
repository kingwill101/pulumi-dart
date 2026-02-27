import 'package:pulumi/pulumi.dart';
import '../organization_bucket_config_cmek_settings/organization_bucket_config_cmek_settings.dart';
import '../organization_bucket_config_index_config/organization_bucket_config_index_config.dart';
import 'organization_bucket_config_args.dart';

/// Manages a organization-level logging bucket config. For more information see
/// [the official logging documentation](https://cloud.google.com/logging/docs/) and
/// [Storing Logs](https://cloud.google.com/logging/docs/storage).
///
/// > **Note:** Logging buckets are automatically created for a given folder, project, organization, billingAccount and cannot be deleted. Creating a resource of this type will acquire and update the resource that already exists at the desired location. These buckets cannot be removed so deleting this resource will remove the bucket config from your state but will leave the logging bucket unchanged. The buckets that are currently automatically created are "_Default" and "_Required".
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// This resource can be imported using the following format:
///
/// * `organizations/{{organization}}/locations/{{location}}/buckets/{{bucket_id}}`
///
/// When using the `pulumi import` command, this resource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/organizationBucketConfig:OrganizationBucketConfig default organizations/{{organization}}/locations/{{location}}/buckets/{{bucket_id}}
/// ```
class OrganizationBucketConfig extends CustomResource {
  /// The name of the logging bucket. Logging automatically creates two log buckets: `_Required` and `_Default`.
  late final Output<String> bucketId;

  /// The CMEK settings of the log bucket. If present, new log entries written to this log bucket are encrypted using the CMEK key provided in this configuration. If a log bucket has CMEK settings, the CMEK settings cannot be disabled later by updating the log bucket. Changing the KMS key is allowed.
  late final Output<OrganizationBucketConfigCmekSettings?> cmekSettings;

  /// Describes this bucket.
  late final Output<String> description;

  /// A list of indexed fields and related configuration data. Structure is documented below.
  late final Output<List<OrganizationBucketConfigIndexConfig>> indexConfigs;

  /// The bucket's lifecycle such as active or deleted. See [LifecycleState](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.buckets#LogBucket.LifecycleState).
  late final Output<String> lifecycleState;

  /// The location of the bucket. The supported locations are: "global" "us-central1"
  late final Output<String> location;

  /// The resource name of the bucket. For example: "organizations/my-organization-id/locations/my-location/buckets/my-bucket-id"
  late final Output<String> name;

  /// The parent resource that contains the logging bucket.
  late final Output<String> organization;

  /// Logs will be retained by default for this amount of time, after which they will automatically be deleted. The minimum retention period is 1 day. If this value is set to zero at bucket creation time, the default time of 30 days will be used. Bucket retention can not be increased on buckets outside of projects.
  late final Output<int?> retentionDays;

  OrganizationBucketConfig(
    String name, {
    OrganizationBucketConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationBucketConfig:OrganizationBucketConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucketId = registerOutput<String>('bucketId');
    this.cmekSettings =
        registerOutput<OrganizationBucketConfigCmekSettings?>('cmekSettings');
    this.description = registerOutput<String>('description');
    this.indexConfigs =
        registerOutput<List<OrganizationBucketConfigIndexConfig>>(
            'indexConfigs');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.retentionDays = registerOutput<int?>('retentionDays');
  }
}
