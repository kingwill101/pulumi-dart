// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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

/// The set of arguments for Bucket.
class BucketArgs {
  /// The bucket's [Autoclass](https://cloud.google.com/storage/docs/autoclass) configuration.  Structure is documented below.
  final Input<BucketAutoclass>? autoclass;

  /// The bucket's [Cross-Origin Resource Sharing (CORS)](https://www.w3.org/TR/cors/) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  final Input<List<BucketCor>>? cors;

  /// The bucket's custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. Structure is documented below.
  final Input<BucketCustomPlacementConfig>? customPlacementConfig;

  /// Whether or not to automatically apply an eventBasedHold to new objects added to the bucket.
  final Input<bool>? defaultEventBasedHold;

  /// Enables [object retention](https://cloud.google.com/storage/docs/object-lock) on a storage bucket.
  final Input<bool>? enableObjectRetention;

  /// The bucket's encryption configuration. Structure is documented below.
  final Input<BucketEncryption>? encryption;

  /// When true, before deleting a bucket, delete all objects within the bucket, or Anywhere Caches caching data for that bucket. Otherwise, buckets with objects/caches will fail. Anywhere Cache requires additional permissions to interact with and will be assumed not present when the provider is not permissioned, attempting to delete the bucket anyways. This may result in the objects in the bucket getting destroyed but not the bucket itself if there is a cache in use with the bucket. Force deletion may take a long time to delete buckets with lots of objects or with any Anywhere Caches (80m+).
  final Input<bool>? forceDestroy;

  /// The bucket's hierarchical namespace policy, which defines the bucket capability to handle folders in logical structure. Structure is documented below. To use this configuration, `uniform_bucket_level_access` must be enabled on bucket.
  final Input<BucketHierarchicalNamespace>? hierarchicalNamespace;

  /// The bucket IP filtering configuration. Specifies the network sources that can access the bucket, as well as its underlying objects. Structure is documented below.
  final Input<BucketIpFilter>? ipFilter;

  /// A map of key/value label pairs to assign to the bucket.
  final Input<Map<String, String>>? labels;

  /// The bucket's [Lifecycle Rules](https://cloud.google.com/storage/docs/lifecycle#configuration) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  final Input<List<BucketLifecycleRule>>? lifecycleRules;

  /// The [GCS location](https://cloud.google.com/storage/docs/bucket-locations).
  ///
  /// - - -
  final Input<String> location;

  /// The bucket's [Access & Storage Logs](https://cloud.google.com/storage/docs/access-logs) configuration. Structure is documented below.
  final Input<BucketLogging>? logging;

  /// The name of the bucket. Bucket names must be in lowercase and no more than 63 characters long. You can find the complete list of bucket naming rules [here](https://cloud.google.com/storage/docs/buckets#naming).
  final Input<String>? name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// Prevents public access to a bucket. Acceptable values are "inherited" or "enforced". If "inherited", the bucket uses [public access prevention](https://cloud.google.com/storage/docs/public-access-prevention) only if the bucket is subject to the public access prevention organization policy constraint. Defaults to "inherited".
  final Input<String>? publicAccessPrevention;

  /// Enables [Requester Pays](https://cloud.google.com/storage/docs/requester-pays) on a storage bucket.
  final Input<bool>? requesterPays;

  /// Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. Structure is documented below.
  final Input<BucketRetentionPolicy>? retentionPolicy;

  /// The recovery point objective for cross-region replication of the bucket. Applicable only for dual and multi-region buckets. `"DEFAULT"` sets default replication. `"ASYNC_TURBO"` value enables turbo replication, valid for dual-region buckets only. See [Turbo Replication](https://cloud.google.com/storage/docs/managing-turbo-replication) for more information. If rpo is not specified at bucket creation, it defaults to `"DEFAULT"` for dual and multi-region buckets. **NOTE** If used with single-region bucket, It will throw an error.
  final Input<String>? rpo;

  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. If it is not provided, by default Google Cloud Storage sets this to default soft delete policy
  final Input<BucketSoftDeletePolicy>? softDeletePolicy;

  /// The [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of the new bucket. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  final Input<String>? storageClass;

  /// Enables [Uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access) access to a bucket.
  final Input<bool>? uniformBucketLevelAccess;

  /// The bucket's [Versioning](https://cloud.google.com/storage/docs/object-versioning) configuration.  Structure is documented below.
  final Input<BucketVersioning>? versioning;

  /// Configuration if the bucket acts as a website. Structure is documented below.
  final Input<BucketWebsite>? website;

  BucketArgs({
    this.autoclass,
    this.cors,
    this.customPlacementConfig,
    this.defaultEventBasedHold,
    this.enableObjectRetention,
    this.encryption,
    this.forceDestroy,
    this.hierarchicalNamespace,
    this.ipFilter,
    this.labels,
    this.lifecycleRules,
    required this.location,
    this.logging,
    this.name,
    this.project,
    this.publicAccessPrevention,
    this.requesterPays,
    this.retentionPolicy,
    this.rpo,
    this.softDeletePolicy,
    this.storageClass,
    this.uniformBucketLevelAccess,
    this.versioning,
    this.website,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoclassValue = autoclass;
    if (autoclassValue != null) {
      map['autoclass'] =
          Input.mapOptionalInputValue<BucketAutoclass, Map<String, dynamic>>(
              autoclassValue, (value) => value.toMap());
    }
    final corsValue = cors;
    if (corsValue != null) {
      map['cors'] = Input.mapOptionalInputValue<List<BucketCor>,
              List<Map<String, dynamic>>>(
          corsValue,
          (value) => Input.encodeList<BucketCor, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final customPlacementConfigValue = customPlacementConfig;
    if (customPlacementConfigValue != null) {
      map['customPlacementConfig'] = Input.mapOptionalInputValue<
              BucketCustomPlacementConfig, Map<String, dynamic>>(
          customPlacementConfigValue, (value) => value.toMap());
    }
    final defaultEventBasedHoldValue = defaultEventBasedHold;
    if (defaultEventBasedHoldValue != null) {
      map['defaultEventBasedHold'] = defaultEventBasedHoldValue;
    }
    final enableObjectRetentionValue = enableObjectRetention;
    if (enableObjectRetentionValue != null) {
      map['enableObjectRetention'] = enableObjectRetentionValue;
    }
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] =
          Input.mapOptionalInputValue<BucketEncryption, Map<String, dynamic>>(
              encryptionValue, (value) => value.toMap());
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final hierarchicalNamespaceValue = hierarchicalNamespace;
    if (hierarchicalNamespaceValue != null) {
      map['hierarchicalNamespace'] = Input.mapOptionalInputValue<
              BucketHierarchicalNamespace, Map<String, dynamic>>(
          hierarchicalNamespaceValue, (value) => value.toMap());
    }
    final ipFilterValue = ipFilter;
    if (ipFilterValue != null) {
      map['ipFilter'] =
          Input.mapOptionalInputValue<BucketIpFilter, Map<String, dynamic>>(
              ipFilterValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final lifecycleRulesValue = lifecycleRules;
    if (lifecycleRulesValue != null) {
      map['lifecycleRules'] = Input.mapOptionalInputValue<
              List<BucketLifecycleRule>, List<Map<String, dynamic>>>(
          lifecycleRulesValue,
          (value) =>
              Input.encodeList<BucketLifecycleRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['location'] = location;
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] =
          Input.mapOptionalInputValue<BucketLogging, Map<String, dynamic>>(
              loggingValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publicAccessPreventionValue = publicAccessPrevention;
    if (publicAccessPreventionValue != null) {
      map['publicAccessPrevention'] = publicAccessPreventionValue;
    }
    final requesterPaysValue = requesterPays;
    if (requesterPaysValue != null) {
      map['requesterPays'] = requesterPaysValue;
    }
    final retentionPolicyValue = retentionPolicy;
    if (retentionPolicyValue != null) {
      map['retentionPolicy'] = Input.mapOptionalInputValue<
          BucketRetentionPolicy,
          Map<String, dynamic>>(retentionPolicyValue, (value) => value.toMap());
    }
    final rpoValue = rpo;
    if (rpoValue != null) {
      map['rpo'] = rpoValue;
    }
    final softDeletePolicyValue = softDeletePolicy;
    if (softDeletePolicyValue != null) {
      map['softDeletePolicy'] = Input.mapOptionalInputValue<
              BucketSoftDeletePolicy, Map<String, dynamic>>(
          softDeletePolicyValue, (value) => value.toMap());
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final uniformBucketLevelAccessValue = uniformBucketLevelAccess;
    if (uniformBucketLevelAccessValue != null) {
      map['uniformBucketLevelAccess'] = uniformBucketLevelAccessValue;
    }
    final versioningValue = versioning;
    if (versioningValue != null) {
      map['versioning'] =
          Input.mapOptionalInputValue<BucketVersioning, Map<String, dynamic>>(
              versioningValue, (value) => value.toMap());
    }
    final websiteValue = website;
    if (websiteValue != null) {
      map['website'] =
          Input.mapOptionalInputValue<BucketWebsite, Map<String, dynamic>>(
              websiteValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketArgs.fromMap(Map<String, dynamic> map) {
    return BucketArgs(
      autoclass: Input.asOptionalInput<BucketAutoclass>(map['autoclass']),
      cors: Input.asOptionalInput<List<BucketCor>>(map['cors']),
      customPlacementConfig: Input.asOptionalInput<BucketCustomPlacementConfig>(
          map['customPlacementConfig']),
      defaultEventBasedHold:
          Input.asOptionalInput<bool>(map['defaultEventBasedHold']),
      enableObjectRetention:
          Input.asOptionalInput<bool>(map['enableObjectRetention']),
      encryption: Input.asOptionalInput<BucketEncryption>(map['encryption']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      hierarchicalNamespace: Input.asOptionalInput<BucketHierarchicalNamespace>(
          map['hierarchicalNamespace']),
      ipFilter: Input.asOptionalInput<BucketIpFilter>(map['ipFilter']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifecycleRules: Input.asOptionalInput<List<BucketLifecycleRule>>(
          map['lifecycleRules']),
      location: Input.asInput<String>(map['location']),
      logging: Input.asOptionalInput<BucketLogging>(map['logging']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      publicAccessPrevention:
          Input.asOptionalInput<String>(map['publicAccessPrevention']),
      requesterPays: Input.asOptionalInput<bool>(map['requesterPays']),
      retentionPolicy:
          Input.asOptionalInput<BucketRetentionPolicy>(map['retentionPolicy']),
      rpo: Input.asOptionalInput<String>(map['rpo']),
      softDeletePolicy: Input.asOptionalInput<BucketSoftDeletePolicy>(
          map['softDeletePolicy']),
      storageClass: Input.asOptionalInput<String>(map['storageClass']),
      uniformBucketLevelAccess:
          Input.asOptionalInput<bool>(map['uniformBucketLevelAccess']),
      versioning: Input.asOptionalInput<BucketVersioning>(map['versioning']),
      website: Input.asOptionalInput<BucketWebsite>(map['website']),
    );
  }
}
