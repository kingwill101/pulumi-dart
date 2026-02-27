import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_autoclass/bucket_autoclass.dart';
import '../bucket_cor/bucket_cor.dart';
import '../bucket_custom_placement_config/bucket_custom_placement_config.dart';
import '../bucket_encryption/bucket_encryption.dart';
import '../bucket_hierarchical_namespace/bucket_hierarchical_namespace.dart';
import '../bucket_ip_filter/bucket_ip_filter.dart';
import '../bucket_lifecycle_rule/bucket_lifecycle_rule.dart';
import '../bucket_logging/bucket_logging.dart';
import '../bucket_retention_policy/bucket_retention_policy.dart';
import '../bucket_soft_delete_policy/bucket_soft_delete_policy.dart';
import '../bucket_versioning/bucket_versioning.dart';
import '../bucket_website/bucket_website.dart';
import 'bucket_args.dart';

/// Creates a new bucket in Google cloud storage service (GCS).
/// Once a bucket has been created, its location can't be changed.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/overview)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/buckets).
///
/// **Note**: If the project id is not set on the resource or in the provider block it will be dynamically
/// determined which will require enabling the compute api.
///
///
/// ## Example Usage
///
/// ### Creating A Private Bucket In Standard Storage, In The EU Region. Bucket Configured As Static Website And CORS Configurations
///
///
///
/// ### Life Cycle Settings For Storage Bucket Objects
///
///
///
/// ### Life Cycle Settings For Storage Bucket Objects With `Send_age_if_zero` Disabled
/// When creating a life cycle condition that does not also include an `age` field, a default `age` of 0 will be set. Set the `send_age_if_zero` flag to `false` to prevent this and avoid any potentially unintended interactions.
///
///
///
/// ### Enabling Public Access Prevention
///
///
///
/// ### Enabling Hierarchical Namespace
///
///
///
/// ### IP Filter Mode Enabled
///
///
///
/// ### IP Filter Mode Disabled
///
///
///
/// ## Import
///
/// Storage buckets can be imported using the `name` or  `project/name`. If the project is not
///
/// passed to the import command it will be inferred from the provider block or environment variables.
///
/// If it cannot be inferred it will be queried from the Compute API (this will fail if the API is
///
/// not enabled).
///
/// * `{{project_id}}/{{bucket}}`
///
/// * `{{bucket}}`
///
/// When using the `pulumi import` command, Storage buckets can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/bucket:Bucket default {{bucket}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/bucket:Bucket default {{project_id}}/{{bucket}}
/// ```
///
/// `false` in state. If you've set it to `true` in config, run `pulumi up` to
///
/// update the value set in state. If you delete this resource before updating the
///
/// value, objects in the bucket will not be destroyed.
class Bucket extends pulumi.CustomResource {
  /// The bucket's [Autoclass](https://cloud.google.com/storage/docs/autoclass) configuration.  Structure is documented below.
  late final pulumi.Output<BucketAutoclass?> autoclass;

  /// The bucket's [Cross-Origin Resource Sharing (CORS)](https://www.w3.org/TR/cors/) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  late final pulumi.Output<List<BucketCor>?> cors;

  /// The bucket's custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. Structure is documented below.
  late final pulumi.Output<BucketCustomPlacementConfig?> customPlacementConfig;

  /// Whether or not to automatically apply an eventBasedHold to new objects added to the bucket.
  late final pulumi.Output<bool?> defaultEventBasedHold;
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Enables [object retention](https://cloud.google.com/storage/docs/object-lock) on a storage bucket.
  late final pulumi.Output<bool?> enableObjectRetention;

  /// The bucket's encryption configuration. Structure is documented below.
  late final pulumi.Output<BucketEncryption?> encryption;

  /// When true, before deleting a bucket, delete all objects within the bucket, or Anywhere Caches caching data for that bucket. Otherwise, buckets with objects/caches will fail. Anywhere Cache requires additional permissions to interact with and will be assumed not present when the provider is not permissioned, attempting to delete the bucket anyways. This may result in the objects in the bucket getting destroyed but not the bucket itself if there is a cache in use with the bucket. Force deletion may take a long time to delete buckets with lots of objects or with any Anywhere Caches (80m+).
  late final pulumi.Output<bool?> forceDestroy;

  /// The bucket's hierarchical namespace policy, which defines the bucket capability to handle folders in logical structure. Structure is documented below. To use this configuration, `uniform_bucket_level_access` must be enabled on bucket.
  late final pulumi.Output<BucketHierarchicalNamespace?> hierarchicalNamespace;

  /// The bucket IP filtering configuration. Specifies the network sources that can access the bucket, as well as its underlying objects. Structure is documented below.
  late final pulumi.Output<BucketIpFilter?> ipFilter;

  /// A map of key/value label pairs to assign to the bucket.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The bucket's [Lifecycle Rules](https://cloud.google.com/storage/docs/lifecycle#configuration) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  late final pulumi.Output<List<BucketLifecycleRule>?> lifecycleRules;

  /// The [GCS location](https://cloud.google.com/storage/docs/bucket-locations).
  ///
  /// - - -
  late final pulumi.Output<String> location;

  /// The bucket's [Access & Storage Logs](https://cloud.google.com/storage/docs/access-logs) configuration. Structure is documented below.
  late final pulumi.Output<BucketLogging?> logging;

  /// The name of the bucket. Bucket names must be in lowercase and no more than 63 characters long. You can find the complete list of bucket naming rules [here](https://cloud.google.com/storage/docs/buckets#naming).
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The project number of the project in which the resource belongs.
  late final pulumi.Output<int> projectNumber;

  /// Prevents public access to a bucket. Acceptable values are "inherited" or "enforced". If "inherited", the bucket uses [public access prevention](https://cloud.google.com/storage/docs/public-access-prevention) only if the bucket is subject to the public access prevention organization policy constraint. Defaults to "inherited".
  late final pulumi.Output<String> publicAccessPrevention;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Enables [Requester Pays](https://cloud.google.com/storage/docs/requester-pays) on a storage bucket.
  late final pulumi.Output<bool?> requesterPays;

  /// Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. Structure is documented below.
  late final pulumi.Output<BucketRetentionPolicy?> retentionPolicy;

  /// The recovery point objective for cross-region replication of the bucket. Applicable only for dual and multi-region buckets. `"DEFAULT"` sets default replication. `"ASYNC_TURBO"` value enables turbo replication, valid for dual-region buckets only. See [Turbo Replication](https://cloud.google.com/storage/docs/managing-turbo-replication) for more information. If rpo is not specified at bucket creation, it defaults to `"DEFAULT"` for dual and multi-region buckets. **NOTE** If used with single-region bucket, It will throw an error.
  late final pulumi.Output<String> rpo;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. If it is not provided, by default Google Cloud Storage sets this to default soft delete policy
  late final pulumi.Output<BucketSoftDeletePolicy> softDeletePolicy;

  /// The [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of the new bucket. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  late final pulumi.Output<String?> storageClass;

  /// The creation time of the bucket in RFC 3339 format.
  late final pulumi.Output<String> timeCreated;

  /// Enables [Uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access) access to a bucket.
  late final pulumi.Output<bool> uniformBucketLevelAccess;

  /// The time at which the bucket's metadata or IAM policy was last updated, in RFC 3339 format.
  late final pulumi.Output<String> updated;

  /// The base URL of the bucket, in the format `gs://<bucket-name>`.
  late final pulumi.Output<String> url;

  /// The bucket's [Versioning](https://cloud.google.com/storage/docs/object-versioning) configuration.  Structure is documented below.
  late final pulumi.Output<BucketVersioning> versioning;

  /// Configuration if the bucket acts as a website. Structure is documented below.
  late final pulumi.Output<BucketWebsite> website;

  Bucket(
    String name, {
    BucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucket:Bucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoclass = registerOutput<BucketAutoclass?>('autoclass');
    this.cors = registerOutput<List<BucketCor>?>('cors');
    this.customPlacementConfig =
        registerOutput<BucketCustomPlacementConfig?>('customPlacementConfig');
    this.defaultEventBasedHold = registerOutput<bool?>('defaultEventBasedHold');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableObjectRetention = registerOutput<bool?>('enableObjectRetention');
    this.encryption = registerOutput<BucketEncryption?>('encryption');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.hierarchicalNamespace =
        registerOutput<BucketHierarchicalNamespace?>('hierarchicalNamespace');
    this.ipFilter = registerOutput<BucketIpFilter?>('ipFilter');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lifecycleRules =
        registerOutput<List<BucketLifecycleRule>?>('lifecycleRules');
    this.location = registerOutput<String>('location');
    this.logging = registerOutput<BucketLogging?>('logging');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.projectNumber = registerOutput<int>('projectNumber');
    this.publicAccessPrevention =
        registerOutput<String>('publicAccessPrevention');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.requesterPays = registerOutput<bool?>('requesterPays');
    this.retentionPolicy =
        registerOutput<BucketRetentionPolicy?>('retentionPolicy');
    this.rpo = registerOutput<String>('rpo');
    this.selfLink = registerOutput<String>('selfLink');
    this.softDeletePolicy =
        registerOutput<BucketSoftDeletePolicy>('softDeletePolicy');
    this.storageClass = registerOutput<String?>('storageClass');
    this.timeCreated = registerOutput<String>('timeCreated');
    this.uniformBucketLevelAccess =
        registerOutput<bool>('uniformBucketLevelAccess');
    this.updated = registerOutput<String>('updated');
    this.url = registerOutput<String>('url');
    this.versioning = registerOutput<BucketVersioning>('versioning');
    this.website = registerOutput<BucketWebsite>('website');
  }
}
