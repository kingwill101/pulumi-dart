// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_control_storage_v1.dart';
import 'bucket_autoclass.dart';
import 'bucket_billing.dart';
import 'bucket_cors_item.dart';
import 'bucket_custom_placement_config.dart';
import 'bucket_encryption.dart';
import 'bucket_iam_configuration.dart';
import 'bucket_lifecycle.dart';
import 'bucket_logging.dart';
import 'bucket_object_retention.dart';
import 'bucket_owner.dart';
import 'bucket_retention_policy.dart';
import 'bucket_soft_delete_policy.dart';
import 'bucket_versioning.dart';
import 'bucket_website.dart';
import 'object_access_control_storage_v1.dart';

/// {@template pulumi_storage_v1_bucket_args_doc}
/// The set of arguments for Bucket.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_bucket_args_doc}
class BucketArgs {
  /// Access controls on the bucket.
  final pulumi.Input<List<BucketAccessControlStorageV1>>? acl;

  /// The bucket's Autoclass configuration.
  final pulumi.Input<BucketAutoclass>? autoclass;

  /// The bucket's billing configuration.
  final pulumi.Input<BucketBilling>? billing;

  /// The bucket's Cross-Origin Resource Sharing (CORS) configuration.
  final pulumi.Input<List<BucketCorsItem>>? cors;

  /// The bucket's custom placement configuration for Custom Dual Regions.
  final pulumi.Input<BucketCustomPlacementConfig>? customPlacementConfig;

  /// The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.
  final pulumi.Input<bool>? defaultEventBasedHold;

  /// Default access controls to apply to new objects when no ACL is provided.
  final pulumi.Input<List<ObjectAccessControlStorageV1>>? defaultObjectAcl;

  /// When set to true, object retention is enabled for this bucket.
  final pulumi.Input<bool>? enableObjectRetention;

  /// Encryption configuration for a bucket.
  final pulumi.Input<BucketEncryption>? encryption;

  /// HTTP 1.1 Entity tag for the bucket.
  final pulumi.Input<String>? etag;

  /// The bucket's IAM configuration.
  final pulumi.Input<BucketIamConfiguration>? iamConfiguration;

  /// The ID of the bucket. For buckets, the id and name properties are the same.
  final pulumi.Input<String>? id;

  /// The kind of item this is. For buckets, this is always storage#bucket.
  final pulumi.Input<String>? kind;

  /// User-provided labels, in key/value pairs.
  final pulumi.Input<Map<String, String>>? labels;

  /// The bucket's lifecycle configuration. See lifecycle management for more information.
  final pulumi.Input<BucketLifecycle>? lifecycle;

  /// The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.
  final pulumi.Input<String>? location;

  /// The type of the bucket location.
  final pulumi.Input<String>? locationType;

  /// The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
  final pulumi.Input<BucketLogging>? logging;

  /// The metadata generation of this bucket.
  final pulumi.Input<String>? metageneration;

  /// The name of the bucket.
  final pulumi.Input<String>? name;

  /// The bucket's object retention config.
  final pulumi.Input<BucketObjectRetention>? objectRetention;

  /// The owner of the bucket. This is always the project team's owner group.
  final pulumi.Input<BucketOwner>? owner;

  /// Apply a predefined set of access controls to this bucket.
  final pulumi.Input<String>? predefinedAcl;

  /// Apply a predefined set of default object access controls to this bucket.
  final pulumi.Input<String>? predefinedDefaultObjectAcl;

  /// A valid API project identifier.
  final pulumi.Input<String>? project;

  /// The project number of the project the bucket belongs to.
  final pulumi.Input<String>? projectNumber;

  /// Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
  final pulumi.Input<String>? projection;

  /// The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.
  final pulumi.Input<BucketRetentionPolicy>? retentionPolicy;

  /// The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
  final pulumi.Input<String>? rpo;

  /// Reserved for future use.
  final pulumi.Input<bool>? satisfiesPZS;

  /// The URI of this bucket.
  final pulumi.Input<String>? selfLink;

  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted.
  final pulumi.Input<BucketSoftDeletePolicy>? softDeletePolicy;

  /// The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
  final pulumi.Input<String>? storageClass;

  /// The creation time of the bucket in RFC 3339 format.
  final pulumi.Input<String>? timeCreated;

  /// The modification time of the bucket in RFC 3339 format.
  final pulumi.Input<String>? updated;

  /// The project to be billed for this request.
  final pulumi.Input<String>? userProject;

  /// The bucket's versioning configuration.
  final pulumi.Input<BucketVersioning>? versioning;

  /// The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
  final pulumi.Input<BucketWebsite>? website;

  /// Creates a new [BucketArgs].
  /// [acl] Access controls on the bucket.
  /// [autoclass] The bucket's Autoclass configuration.
  /// [billing] The bucket's billing configuration.
  /// [cors] The bucket's Cross-Origin Resource Sharing (CORS) configuration.
  /// [customPlacementConfig] The bucket's custom placement configuration for Custom Dual Regions.
  /// [defaultEventBasedHold] The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.
  /// [defaultObjectAcl] Default access controls to apply to new objects when no ACL is provided.
  /// [enableObjectRetention] When set to true, object retention is enabled for this bucket.
  /// [encryption] Encryption configuration for a bucket.
  /// [etag] HTTP 1.1 Entity tag for the bucket.
  /// [iamConfiguration] The bucket's IAM configuration.
  /// [id] The ID of the bucket. For buckets, the id and name properties are the same.
  /// [kind] The kind of item this is. For buckets, this is always storage#bucket.
  /// [labels] User-provided labels, in key/value pairs.
  /// [lifecycle] The bucket's lifecycle configuration. See lifecycle management for more information.
  /// [location] The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.
  /// [locationType] The type of the bucket location.
  /// [logging] The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
  /// [metageneration] The metadata generation of this bucket.
  /// [name] The name of the bucket.
  /// [objectRetention] The bucket's object retention config.
  /// [owner] The owner of the bucket. This is always the project team's owner group.
  /// [predefinedAcl] Apply a predefined set of access controls to this bucket.
  /// [predefinedDefaultObjectAcl] Apply a predefined set of default object access controls to this bucket.
  /// [project] A valid API project identifier.
  /// [projectNumber] The project number of the project the bucket belongs to.
  /// [projection] Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
  /// [retentionPolicy] The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.
  /// [rpo] The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
  /// [satisfiesPZS] Reserved for future use.
  /// [selfLink] The URI of this bucket.
  /// [softDeletePolicy] The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted.
  /// [storageClass] The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
  /// [timeCreated] The creation time of the bucket in RFC 3339 format.
  /// [updated] The modification time of the bucket in RFC 3339 format.
  /// [userProject] The project to be billed for this request.
  /// [versioning] The bucket's versioning configuration.
  /// [website] The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
  BucketArgs({
    List<BucketAccessControlStorageV1>? acl,
    BucketAutoclass? autoclass,
    BucketBilling? billing,
    List<BucketCorsItem>? cors,
    BucketCustomPlacementConfig? customPlacementConfig,
    bool? defaultEventBasedHold,
    List<ObjectAccessControlStorageV1>? defaultObjectAcl,
    bool? enableObjectRetention,
    BucketEncryption? encryption,
    String? etag,
    BucketIamConfiguration? iamConfiguration,
    String? id,
    String? kind,
    Map<String, String>? labels,
    BucketLifecycle? lifecycle,
    String? location,
    String? locationType,
    BucketLogging? logging,
    String? metageneration,
    String? name,
    BucketObjectRetention? objectRetention,
    BucketOwner? owner,
    String? predefinedAcl,
    String? predefinedDefaultObjectAcl,
    String? project,
    String? projectNumber,
    String? projection,
    BucketRetentionPolicy? retentionPolicy,
    String? rpo,
    bool? satisfiesPZS,
    String? selfLink,
    BucketSoftDeletePolicy? softDeletePolicy,
    String? storageClass,
    String? timeCreated,
    String? updated,
    String? userProject,
    BucketVersioning? versioning,
    BucketWebsite? website,
  }) : acl = pulumi.Input.asOptionalInput<List<BucketAccessControlStorageV1>>(
         acl,
       ),
       autoclass = pulumi.Input.asOptionalInput<BucketAutoclass>(autoclass),
       billing = pulumi.Input.asOptionalInput<BucketBilling>(billing),
       cors = pulumi.Input.asOptionalInput<List<BucketCorsItem>>(cors),
       customPlacementConfig =
           pulumi.Input.asOptionalInput<BucketCustomPlacementConfig>(
             customPlacementConfig,
           ),
       defaultEventBasedHold = pulumi.Input.asOptionalInput<bool>(
         defaultEventBasedHold,
       ),
       defaultObjectAcl =
           pulumi.Input.asOptionalInput<List<ObjectAccessControlStorageV1>>(
             defaultObjectAcl,
           ),
       enableObjectRetention = pulumi.Input.asOptionalInput<bool>(
         enableObjectRetention,
       ),
       encryption = pulumi.Input.asOptionalInput<BucketEncryption>(encryption),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       iamConfiguration = pulumi.Input.asOptionalInput<BucketIamConfiguration>(
         iamConfiguration,
       ),
       id = pulumi.Input.asOptionalInput<String>(id),
       kind = pulumi.Input.asOptionalInput<String>(kind),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       lifecycle = pulumi.Input.asOptionalInput<BucketLifecycle>(lifecycle),
       location = pulumi.Input.asOptionalInput<String>(location),
       locationType = pulumi.Input.asOptionalInput<String>(locationType),
       logging = pulumi.Input.asOptionalInput<BucketLogging>(logging),
       metageneration = pulumi.Input.asOptionalInput<String>(metageneration),
       name = pulumi.Input.asOptionalInput<String>(name),
       objectRetention = pulumi.Input.asOptionalInput<BucketObjectRetention>(
         objectRetention,
       ),
       owner = pulumi.Input.asOptionalInput<BucketOwner>(owner),
       predefinedAcl = pulumi.Input.asOptionalInput<String>(predefinedAcl),
       predefinedDefaultObjectAcl = pulumi.Input.asOptionalInput<String>(
         predefinedDefaultObjectAcl,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       projectNumber = pulumi.Input.asOptionalInput<String>(projectNumber),
       projection = pulumi.Input.asOptionalInput<String>(projection),
       retentionPolicy = pulumi.Input.asOptionalInput<BucketRetentionPolicy>(
         retentionPolicy,
       ),
       rpo = pulumi.Input.asOptionalInput<String>(rpo),
       satisfiesPZS = pulumi.Input.asOptionalInput<bool>(satisfiesPZS),
       selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
       softDeletePolicy = pulumi.Input.asOptionalInput<BucketSoftDeletePolicy>(
         softDeletePolicy,
       ),
       storageClass = pulumi.Input.asOptionalInput<String>(storageClass),
       timeCreated = pulumi.Input.asOptionalInput<String>(timeCreated),
       updated = pulumi.Input.asOptionalInput<String>(updated),
       userProject = pulumi.Input.asOptionalInput<String>(userProject),
       versioning = pulumi.Input.asOptionalInput<BucketVersioning>(versioning),
       website = pulumi.Input.asOptionalInput<BucketWebsite>(website);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'autoclass':
          ?pulumi.Input.mapOptionalInputValue<
            BucketAutoclass,
            Map<String, dynamic>
          >(autoclass, (value) => value.toMap()),
      'billing':
          ?pulumi.Input.mapOptionalInputValue<
            BucketBilling,
            Map<String, dynamic>
          >(billing, (value) => value.toMap()),
      'cors':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketCorsItem>,
            List<Map<String, dynamic>>
          >(
            cors,
            (value) =>
                pulumi.Input.encodeList<BucketCorsItem, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'customPlacementConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BucketCustomPlacementConfig,
            Map<String, dynamic>
          >(customPlacementConfig, (value) => value.toMap()),
      'defaultEventBasedHold': ?defaultEventBasedHold,
      'defaultObjectAcl': ?defaultObjectAcl,
      'enableObjectRetention': ?enableObjectRetention,
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            BucketEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'etag': ?etag,
      'iamConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            BucketIamConfiguration,
            Map<String, dynamic>
          >(iamConfiguration, (value) => value.toMap()),
      'id': ?id,
      'kind': ?kind,
      'labels': ?labels,
      'lifecycle':
          ?pulumi.Input.mapOptionalInputValue<
            BucketLifecycle,
            Map<String, dynamic>
          >(lifecycle, (value) => value.toMap()),
      'location': ?location,
      'locationType': ?locationType,
      'logging':
          ?pulumi.Input.mapOptionalInputValue<
            BucketLogging,
            Map<String, dynamic>
          >(logging, (value) => value.toMap()),
      'metageneration': ?metageneration,
      'name': ?name,
      'objectRetention':
          ?pulumi.Input.mapOptionalInputValue<
            BucketObjectRetention,
            Map<String, dynamic>
          >(objectRetention, (value) => value.toMap()),
      'owner':
          ?pulumi.Input.mapOptionalInputValue<
            BucketOwner,
            Map<String, dynamic>
          >(owner, (value) => value.toMap()),
      'predefinedAcl': ?predefinedAcl,
      'predefinedDefaultObjectAcl': ?predefinedDefaultObjectAcl,
      'project': ?project,
      'projectNumber': ?projectNumber,
      'projection': ?projection,
      'retentionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            BucketRetentionPolicy,
            Map<String, dynamic>
          >(retentionPolicy, (value) => value.toMap()),
      'rpo': ?rpo,
      'satisfiesPZS': ?satisfiesPZS,
      'selfLink': ?selfLink,
      'softDeletePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            BucketSoftDeletePolicy,
            Map<String, dynamic>
          >(softDeletePolicy, (value) => value.toMap()),
      'storageClass': ?storageClass,
      'timeCreated': ?timeCreated,
      'updated': ?updated,
      'userProject': ?userProject,
      'versioning':
          ?pulumi.Input.mapOptionalInputValue<
            BucketVersioning,
            Map<String, dynamic>
          >(versioning, (value) => value.toMap()),
      'website':
          ?pulumi.Input.mapOptionalInputValue<
            BucketWebsite,
            Map<String, dynamic>
          >(website, (value) => value.toMap()),
    };
  }

  factory BucketArgs.fromMap(Map<String, dynamic> map) {
    return BucketArgs(
      acl: map['acl'] == null
          ? null
          : (map['acl'] as List).cast<BucketAccessControlStorageV1>(),
      autoclass: map['autoclass'] == null
          ? null
          : BucketAutoclass.fromMap(
              (map['autoclass'] as Map).cast<String, dynamic>(),
            ),
      billing: map['billing'] == null
          ? null
          : BucketBilling.fromMap(
              (map['billing'] as Map).cast<String, dynamic>(),
            ),
      cors: map['cors'] == null
          ? null
          : pulumi.Input.decodeList<BucketCorsItem>(
              map['cors'],
              (value) => BucketCorsItem.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      customPlacementConfig: map['customPlacementConfig'] == null
          ? null
          : BucketCustomPlacementConfig.fromMap(
              (map['customPlacementConfig'] as Map).cast<String, dynamic>(),
            ),
      defaultEventBasedHold: map['defaultEventBasedHold'] == null
          ? null
          : map['defaultEventBasedHold'] as bool,
      defaultObjectAcl: map['defaultObjectAcl'] == null
          ? null
          : (map['defaultObjectAcl'] as List)
                .cast<ObjectAccessControlStorageV1>(),
      enableObjectRetention: map['enableObjectRetention'] == null
          ? null
          : map['enableObjectRetention'] as bool,
      encryption: map['encryption'] == null
          ? null
          : BucketEncryption.fromMap(
              (map['encryption'] as Map).cast<String, dynamic>(),
            ),
      etag: map['etag'] == null ? null : map['etag'] as String,
      iamConfiguration: map['iamConfiguration'] == null
          ? null
          : BucketIamConfiguration.fromMap(
              (map['iamConfiguration'] as Map).cast<String, dynamic>(),
            ),
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      lifecycle: map['lifecycle'] == null
          ? null
          : BucketLifecycle.fromMap(
              (map['lifecycle'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      locationType: map['locationType'] == null
          ? null
          : map['locationType'] as String,
      logging: map['logging'] == null
          ? null
          : BucketLogging.fromMap(
              (map['logging'] as Map).cast<String, dynamic>(),
            ),
      metageneration: map['metageneration'] == null
          ? null
          : map['metageneration'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      objectRetention: map['objectRetention'] == null
          ? null
          : BucketObjectRetention.fromMap(
              (map['objectRetention'] as Map).cast<String, dynamic>(),
            ),
      owner: map['owner'] == null
          ? null
          : BucketOwner.fromMap((map['owner'] as Map).cast<String, dynamic>()),
      predefinedAcl: map['predefinedAcl'] == null
          ? null
          : map['predefinedAcl'] as String,
      predefinedDefaultObjectAcl: map['predefinedDefaultObjectAcl'] == null
          ? null
          : map['predefinedDefaultObjectAcl'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectNumber: map['projectNumber'] == null
          ? null
          : map['projectNumber'] as String,
      projection: map['projection'] == null
          ? null
          : map['projection'] as String,
      retentionPolicy: map['retentionPolicy'] == null
          ? null
          : BucketRetentionPolicy.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>(),
            ),
      rpo: map['rpo'] == null ? null : map['rpo'] as String,
      satisfiesPZS: map['satisfiesPZS'] == null
          ? null
          : map['satisfiesPZS'] as bool,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      softDeletePolicy: map['softDeletePolicy'] == null
          ? null
          : BucketSoftDeletePolicy.fromMap(
              (map['softDeletePolicy'] as Map).cast<String, dynamic>(),
            ),
      storageClass: map['storageClass'] == null
          ? null
          : map['storageClass'] as String,
      timeCreated: map['timeCreated'] == null
          ? null
          : map['timeCreated'] as String,
      updated: map['updated'] == null ? null : map['updated'] as String,
      userProject: map['userProject'] == null
          ? null
          : map['userProject'] as String,
      versioning: map['versioning'] == null
          ? null
          : BucketVersioning.fromMap(
              (map['versioning'] as Map).cast<String, dynamic>(),
            ),
      website: map['website'] == null
          ? null
          : BucketWebsite.fromMap(
              (map['website'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
