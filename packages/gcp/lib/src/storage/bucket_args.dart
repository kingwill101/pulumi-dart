// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_autoclass.dart';
import 'bucket_cor.dart';
import 'bucket_custom_placement_config.dart';
import 'bucket_encryption.dart';
import 'bucket_hierarchical_namespace.dart';
import 'bucket_ip_filter.dart';
import 'bucket_lifecycle_rule.dart';
import 'bucket_logging.dart';
import 'bucket_retention_policy.dart';
import 'bucket_soft_delete_policy.dart';
import 'bucket_versioning.dart';
import 'bucket_website.dart';

/// {@template pulumi_storage_bucket_bucket_args_doc}
/// The set of arguments for Bucket.
/// {@endtemplate}
/// {@macro pulumi_storage_bucket_bucket_args_doc}
class BucketArgs {
  /// The bucket's [Autoclass](https://cloud.google.com/storage/docs/autoclass) configuration.  Structure is documented below.
  final pulumi.Input<BucketAutoclass>? autoclass;
  /// The bucket's [Cross-Origin Resource Sharing (CORS)](https://www.w3.org/TR/cors/) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  final pulumi.Input<List<BucketCor>>? cors;
  /// The bucket's custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. Structure is documented below.
  final pulumi.Input<BucketCustomPlacementConfig>? customPlacementConfig;
  /// Whether or not to automatically apply an eventBasedHold to new objects added to the bucket.
  final pulumi.Input<bool>? defaultEventBasedHold;
  /// Enables [object retention](https://cloud.google.com/storage/docs/object-lock) on a storage bucket.
  final pulumi.Input<bool>? enableObjectRetention;
  /// The bucket's encryption configuration. Structure is documented below.
  final pulumi.Input<BucketEncryption>? encryption;
  /// When true, before deleting a bucket, delete all objects within the bucket, or Anywhere Caches caching data for that bucket. Otherwise, buckets with objects/caches will fail. Anywhere Cache requires additional permissions to interact with and will be assumed not present when the provider is not permissioned, attempting to delete the bucket anyways. This may result in the objects in the bucket getting destroyed but not the bucket itself if there is a cache in use with the bucket. Force deletion may take a long time to delete buckets with lots of objects or with any Anywhere Caches (80m+).
  final pulumi.Input<bool>? forceDestroy;
  /// The bucket's hierarchical namespace policy, which defines the bucket capability to handle folders in logical structure. Structure is documented below. To use this configuration, `uniform_bucket_level_access` must be enabled on bucket.
  final pulumi.Input<BucketHierarchicalNamespace>? hierarchicalNamespace;
  /// The bucket IP filtering configuration. Specifies the network sources that can access the bucket, as well as its underlying objects. Structure is documented below.
  final pulumi.Input<BucketIpFilter>? ipFilter;
  /// A map of key/value label pairs to assign to the bucket.
  final pulumi.Input<Map<String, String>>? labels;
  /// The bucket's [Lifecycle Rules](https://cloud.google.com/storage/docs/lifecycle#configuration) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  final pulumi.Input<List<BucketLifecycleRule>>? lifecycleRules;
  /// The [GCS location](https://cloud.google.com/storage/docs/bucket-locations).
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The bucket's [Access & Storage Logs](https://cloud.google.com/storage/docs/access-logs) configuration. Structure is documented below.
  final pulumi.Input<BucketLogging>? logging;
  /// The name of the bucket. Bucket names must be in lowercase and no more than 63 characters long. You can find the complete list of bucket naming rules [here](https://cloud.google.com/storage/docs/buckets#naming).
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Prevents public access to a bucket. Acceptable values are "inherited" or "enforced". If "inherited", the bucket uses [public access prevention](https://cloud.google.com/storage/docs/public-access-prevention) only if the bucket is subject to the public access prevention organization policy constraint. Defaults to "inherited".
  final pulumi.Input<String>? publicAccessPrevention;
  /// Enables [Requester Pays](https://cloud.google.com/storage/docs/requester-pays) on a storage bucket.
  final pulumi.Input<bool>? requesterPays;
  /// Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. Structure is documented below.
  final pulumi.Input<BucketRetentionPolicy>? retentionPolicy;
  /// The recovery point objective for cross-region replication of the bucket. Applicable only for dual and multi-region buckets. `"DEFAULT"` sets default replication. `"ASYNC_TURBO"` value enables turbo replication, valid for dual-region buckets only. See [Turbo Replication](https://cloud.google.com/storage/docs/managing-turbo-replication) for more information. If rpo is not specified at bucket creation, it defaults to `"DEFAULT"` for dual and multi-region buckets. **NOTE** If used with single-region bucket, It will throw an error.
  final pulumi.Input<String>? rpo;
  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. If it is not provided, by default Google Cloud Storage sets this to default soft delete policy
  final pulumi.Input<BucketSoftDeletePolicy>? softDeletePolicy;
  /// The [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of the new bucket. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  final pulumi.Input<String>? storageClass;
  /// Enables [Uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access) access to a bucket.
  final pulumi.Input<bool>? uniformBucketLevelAccess;
  /// The bucket's [Versioning](https://cloud.google.com/storage/docs/object-versioning) configuration.  Structure is documented below.
  final pulumi.Input<BucketVersioning>? versioning;
  /// Configuration if the bucket acts as a website. Structure is documented below.
  final pulumi.Input<BucketWebsite>? website;

  /// Creates a new [BucketArgs].
  /// [autoclass] The bucket's [Autoclass](https://cloud.google.com/storage/docs/autoclass) configuration.  Structure is documented below.
  /// [cors] The bucket's [Cross-Origin Resource Sharing (CORS)](https://www.w3.org/TR/cors/) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  /// [customPlacementConfig] The bucket's custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. Structure is documented below.
  /// [defaultEventBasedHold] Whether or not to automatically apply an eventBasedHold to new objects added to the bucket.
  /// [enableObjectRetention] Enables [object retention](https://cloud.google.com/storage/docs/object-lock) on a storage bucket.
  /// [encryption] The bucket's encryption configuration. Structure is documented below.
  /// [forceDestroy] When true, before deleting a bucket, delete all objects within the bucket, or Anywhere Caches caching data for that bucket. Otherwise, buckets with objects/caches will fail. Anywhere Cache requires additional permissions to interact with and will be assumed not present when the provider is not permissioned, attempting to delete the bucket anyways. This may result in the objects in the bucket getting destroyed but not the bucket itself if there is a cache in use with the bucket. Force deletion may take a long time to delete buckets with lots of objects or with any Anywhere Caches (80m+).
  /// [hierarchicalNamespace] The bucket's hierarchical namespace policy, which defines the bucket capability to handle folders in logical structure. Structure is documented below. To use this configuration, `uniform_bucket_level_access` must be enabled on bucket.
  /// [ipFilter] The bucket IP filtering configuration. Specifies the network sources that can access the bucket, as well as its underlying objects. Structure is documented below.
  /// [labels] A map of key/value label pairs to assign to the bucket.
  /// [lifecycleRules] The bucket's [Lifecycle Rules](https://cloud.google.com/storage/docs/lifecycle#configuration) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  /// [location] The [GCS location](https://cloud.google.com/storage/docs/bucket-locations).
  /// [logging] The bucket's [Access & Storage Logs](https://cloud.google.com/storage/docs/access-logs) configuration. Structure is documented below.
  /// [name] The name of the bucket. Bucket names must be in lowercase and no more than 63 characters long. You can find the complete list of bucket naming rules [here](https://cloud.google.com/storage/docs/buckets#naming).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [publicAccessPrevention] Prevents public access to a bucket. Acceptable values are "inherited" or "enforced". If "inherited", the bucket uses [public access prevention](https://cloud.google.com/storage/docs/public-access-prevention) only if the bucket is subject to the public access prevention organization policy constraint. Defaults to "inherited".
  /// [requesterPays] Enables [Requester Pays](https://cloud.google.com/storage/docs/requester-pays) on a storage bucket.
  /// [retentionPolicy] Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. Structure is documented below.
  /// [rpo] The recovery point objective for cross-region replication of the bucket. Applicable only for dual and multi-region buckets. `"DEFAULT"` sets default replication. `"ASYNC_TURBO"` value enables turbo replication, valid for dual-region buckets only. See [Turbo Replication](https://cloud.google.com/storage/docs/managing-turbo-replication) for more information. If rpo is not specified at bucket creation, it defaults to `"DEFAULT"` for dual and multi-region buckets. **NOTE** If used with single-region bucket, It will throw an error.
  /// [softDeletePolicy] The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. If it is not provided, by default Google Cloud Storage sets this to default soft delete policy
  /// [storageClass] The [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of the new bucket. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  /// [uniformBucketLevelAccess] Enables [Uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access) access to a bucket.
  /// [versioning] The bucket's [Versioning](https://cloud.google.com/storage/docs/object-versioning) configuration.  Structure is documented below.
  /// [website] Configuration if the bucket acts as a website. Structure is documented below.
  BucketArgs({
    BucketAutoclass? autoclass,
    List<BucketCor>? cors,
    BucketCustomPlacementConfig? customPlacementConfig,
    bool? defaultEventBasedHold,
    bool? enableObjectRetention,
    BucketEncryption? encryption,
    bool? forceDestroy,
    BucketHierarchicalNamespace? hierarchicalNamespace,
    BucketIpFilter? ipFilter,
    Map<String, String>? labels,
    List<BucketLifecycleRule>? lifecycleRules,
    required String location,
    BucketLogging? logging,
    String? name,
    String? project,
    String? publicAccessPrevention,
    bool? requesterPays,
    BucketRetentionPolicy? retentionPolicy,
    String? rpo,
    BucketSoftDeletePolicy? softDeletePolicy,
    String? storageClass,
    bool? uniformBucketLevelAccess,
    BucketVersioning? versioning,
    BucketWebsite? website,
  }) :
      autoclass = pulumi.Input.asOptionalInput<BucketAutoclass>(autoclass),
      cors = pulumi.Input.asOptionalInput<List<BucketCor>>(cors),
      customPlacementConfig = pulumi.Input.asOptionalInput<BucketCustomPlacementConfig>(customPlacementConfig),
      defaultEventBasedHold = pulumi.Input.asOptionalInput<bool>(defaultEventBasedHold),
      enableObjectRetention = pulumi.Input.asOptionalInput<bool>(enableObjectRetention),
      encryption = pulumi.Input.asOptionalInput<BucketEncryption>(encryption),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      hierarchicalNamespace = pulumi.Input.asOptionalInput<BucketHierarchicalNamespace>(hierarchicalNamespace),
      ipFilter = pulumi.Input.asOptionalInput<BucketIpFilter>(ipFilter),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lifecycleRules = pulumi.Input.asOptionalInput<List<BucketLifecycleRule>>(lifecycleRules),
      location = pulumi.Input.asInput<String>(location),
      logging = pulumi.Input.asOptionalInput<BucketLogging>(logging),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      publicAccessPrevention = pulumi.Input.asOptionalInput<String>(publicAccessPrevention),
      requesterPays = pulumi.Input.asOptionalInput<bool>(requesterPays),
      retentionPolicy = pulumi.Input.asOptionalInput<BucketRetentionPolicy>(retentionPolicy),
      rpo = pulumi.Input.asOptionalInput<String>(rpo),
      softDeletePolicy = pulumi.Input.asOptionalInput<BucketSoftDeletePolicy>(softDeletePolicy),
      storageClass = pulumi.Input.asOptionalInput<String>(storageClass),
      uniformBucketLevelAccess = pulumi.Input.asOptionalInput<bool>(uniformBucketLevelAccess),
      versioning = pulumi.Input.asOptionalInput<BucketVersioning>(versioning),
      website = pulumi.Input.asOptionalInput<BucketWebsite>(website);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoclass': ?pulumi.Input.mapOptionalInputValue<BucketAutoclass, Map<String, dynamic>>(autoclass, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<List<BucketCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<BucketCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customPlacementConfig': ?pulumi.Input.mapOptionalInputValue<BucketCustomPlacementConfig, Map<String, dynamic>>(customPlacementConfig, (value) => value.toMap()),
      'defaultEventBasedHold': ?defaultEventBasedHold,
      'enableObjectRetention': ?enableObjectRetention,
      'encryption': ?pulumi.Input.mapOptionalInputValue<BucketEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'hierarchicalNamespace': ?pulumi.Input.mapOptionalInputValue<BucketHierarchicalNamespace, Map<String, dynamic>>(hierarchicalNamespace, (value) => value.toMap()),
      'ipFilter': ?pulumi.Input.mapOptionalInputValue<BucketIpFilter, Map<String, dynamic>>(ipFilter, (value) => value.toMap()),
      'labels': ?labels,
      'lifecycleRules': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<BucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'logging': ?pulumi.Input.mapOptionalInputValue<BucketLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'publicAccessPrevention': ?publicAccessPrevention,
      'requesterPays': ?requesterPays,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<BucketRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'rpo': ?rpo,
      'softDeletePolicy': ?pulumi.Input.mapOptionalInputValue<BucketSoftDeletePolicy, Map<String, dynamic>>(softDeletePolicy, (value) => value.toMap()),
      'storageClass': ?storageClass,
      'uniformBucketLevelAccess': ?uniformBucketLevelAccess,
      'versioning': ?pulumi.Input.mapOptionalInputValue<BucketVersioning, Map<String, dynamic>>(versioning, (value) => value.toMap()),
      'website': ?pulumi.Input.mapOptionalInputValue<BucketWebsite, Map<String, dynamic>>(website, (value) => value.toMap()),
    };
  }

  factory BucketArgs.fromMap(Map<String, dynamic> map) {
    return BucketArgs(
      autoclass: map['autoclass'] == null ? null : BucketAutoclass.fromMap((map['autoclass'] as Map).cast<String, dynamic>()),
      cors: map['cors'] == null ? null : pulumi.Input.decodeList<BucketCor>(map['cors'], (value) => BucketCor.fromMap((value as Map).cast<String, dynamic>())),
      customPlacementConfig: map['customPlacementConfig'] == null ? null : BucketCustomPlacementConfig.fromMap((map['customPlacementConfig'] as Map).cast<String, dynamic>()),
      defaultEventBasedHold: map['defaultEventBasedHold'] == null ? null : map['defaultEventBasedHold'] as bool,
      enableObjectRetention: map['enableObjectRetention'] == null ? null : map['enableObjectRetention'] as bool,
      encryption: map['encryption'] == null ? null : BucketEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      forceDestroy: map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      hierarchicalNamespace: map['hierarchicalNamespace'] == null ? null : BucketHierarchicalNamespace.fromMap((map['hierarchicalNamespace'] as Map).cast<String, dynamic>()),
      ipFilter: map['ipFilter'] == null ? null : BucketIpFilter.fromMap((map['ipFilter'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      lifecycleRules: map['lifecycleRules'] == null ? null : pulumi.Input.decodeList<BucketLifecycleRule>(map['lifecycleRules'], (value) => BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      logging: map['logging'] == null ? null : BucketLogging.fromMap((map['logging'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      publicAccessPrevention: map['publicAccessPrevention'] == null ? null : map['publicAccessPrevention'] as String,
      requesterPays: map['requesterPays'] == null ? null : map['requesterPays'] as bool,
      retentionPolicy: map['retentionPolicy'] == null ? null : BucketRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      rpo: map['rpo'] == null ? null : map['rpo'] as String,
      softDeletePolicy: map['softDeletePolicy'] == null ? null : BucketSoftDeletePolicy.fromMap((map['softDeletePolicy'] as Map).cast<String, dynamic>()),
      storageClass: map['storageClass'] == null ? null : map['storageClass'] as String,
      uniformBucketLevelAccess: map['uniformBucketLevelAccess'] == null ? null : map['uniformBucketLevelAccess'] as bool,
      versioning: map['versioning'] == null ? null : BucketVersioning.fromMap((map['versioning'] as Map).cast<String, dynamic>()),
      website: map['website'] == null ? null : BucketWebsite.fromMap((map['website'] as Map).cast<String, dynamic>()),
    );
  }
}

