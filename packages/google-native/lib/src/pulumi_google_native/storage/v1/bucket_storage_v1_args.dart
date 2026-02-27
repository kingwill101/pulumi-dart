// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_control.dart';
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
import 'object_access_control.dart';

/// The set of arguments for Bucket.
class BucketStorageV1Args {
  /// Access controls on the bucket.
  final pulumi.Input<List<BucketAccessControl>>? acl;

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
  final pulumi.Input<List<ObjectAccessControl>>? defaultObjectAcl;

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

  BucketStorageV1Args({
    this.acl,
    this.autoclass,
    this.billing,
    this.cors,
    this.customPlacementConfig,
    this.defaultEventBasedHold,
    this.defaultObjectAcl,
    this.enableObjectRetention,
    this.encryption,
    this.etag,
    this.iamConfiguration,
    this.id,
    this.kind,
    this.labels,
    this.lifecycle,
    this.location,
    this.locationType,
    this.logging,
    this.metageneration,
    this.name,
    this.objectRetention,
    this.owner,
    this.predefinedAcl,
    this.predefinedDefaultObjectAcl,
    this.project,
    this.projectNumber,
    this.projection,
    this.retentionPolicy,
    this.rpo,
    this.satisfiesPZS,
    this.selfLink,
    this.softDeletePolicy,
    this.storageClass,
    this.timeCreated,
    this.updated,
    this.userProject,
    this.versioning,
    this.website,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aclValue = acl;
    if (aclValue != null) {
      map['acl'] = pulumi.Input.mapOptionalInputValue<List<BucketAccessControl>,
              List<Map<String, dynamic>>>(
          aclValue,
          (value) => pulumi.Input.encodeList<BucketAccessControl,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final autoclassValue = autoclass;
    if (autoclassValue != null) {
      map['autoclass'] = pulumi.Input.mapOptionalInputValue<BucketAutoclass,
          Map<String, dynamic>>(autoclassValue, (value) => value.toMap());
    }
    final billingValue = billing;
    if (billingValue != null) {
      map['billing'] = pulumi.Input.mapOptionalInputValue<BucketBilling,
          Map<String, dynamic>>(billingValue, (value) => value.toMap());
    }
    final corsValue = cors;
    if (corsValue != null) {
      map['cors'] = pulumi.Input.mapOptionalInputValue<List<BucketCorsItem>,
              List<Map<String, dynamic>>>(
          corsValue,
          (value) =>
              pulumi.Input.encodeList<BucketCorsItem, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final customPlacementConfigValue = customPlacementConfig;
    if (customPlacementConfigValue != null) {
      map['customPlacementConfig'] = pulumi.Input.mapOptionalInputValue<
              BucketCustomPlacementConfig, Map<String, dynamic>>(
          customPlacementConfigValue, (value) => value.toMap());
    }
    final defaultEventBasedHoldValue = defaultEventBasedHold;
    if (defaultEventBasedHoldValue != null) {
      map['defaultEventBasedHold'] = defaultEventBasedHoldValue;
    }
    final defaultObjectAclValue = defaultObjectAcl;
    if (defaultObjectAclValue != null) {
      map['defaultObjectAcl'] = pulumi.Input.mapOptionalInputValue<
              List<ObjectAccessControl>, List<Map<String, dynamic>>>(
          defaultObjectAclValue,
          (value) => pulumi.Input.encodeList<ObjectAccessControl,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final enableObjectRetentionValue = enableObjectRetention;
    if (enableObjectRetentionValue != null) {
      map['enableObjectRetention'] = enableObjectRetentionValue;
    }
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] = pulumi.Input.mapOptionalInputValue<BucketEncryption,
          Map<String, dynamic>>(encryptionValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final iamConfigurationValue = iamConfiguration;
    if (iamConfigurationValue != null) {
      map['iamConfiguration'] = pulumi.Input.mapOptionalInputValue<
              BucketIamConfiguration, Map<String, dynamic>>(
          iamConfigurationValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final lifecycleValue = lifecycle;
    if (lifecycleValue != null) {
      map['lifecycle'] = pulumi.Input.mapOptionalInputValue<BucketLifecycle,
          Map<String, dynamic>>(lifecycleValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final locationTypeValue = locationType;
    if (locationTypeValue != null) {
      map['locationType'] = locationTypeValue;
    }
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] = pulumi.Input.mapOptionalInputValue<BucketLogging,
          Map<String, dynamic>>(loggingValue, (value) => value.toMap());
    }
    final metagenerationValue = metageneration;
    if (metagenerationValue != null) {
      map['metageneration'] = metagenerationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final objectRetentionValue = objectRetention;
    if (objectRetentionValue != null) {
      map['objectRetention'] = pulumi.Input.mapOptionalInputValue<
          BucketObjectRetention,
          Map<String, dynamic>>(objectRetentionValue, (value) => value.toMap());
    }
    final ownerValue = owner;
    if (ownerValue != null) {
      map['owner'] =
          pulumi.Input.mapOptionalInputValue<BucketOwner, Map<String, dynamic>>(
              ownerValue, (value) => value.toMap());
    }
    final predefinedAclValue = predefinedAcl;
    if (predefinedAclValue != null) {
      map['predefinedAcl'] = predefinedAclValue;
    }
    final predefinedDefaultObjectAclValue = predefinedDefaultObjectAcl;
    if (predefinedDefaultObjectAclValue != null) {
      map['predefinedDefaultObjectAcl'] = predefinedDefaultObjectAclValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final projectNumberValue = projectNumber;
    if (projectNumberValue != null) {
      map['projectNumber'] = projectNumberValue;
    }
    final projectionValue = projection;
    if (projectionValue != null) {
      map['projection'] = projectionValue;
    }
    final retentionPolicyValue = retentionPolicy;
    if (retentionPolicyValue != null) {
      map['retentionPolicy'] = pulumi.Input.mapOptionalInputValue<
          BucketRetentionPolicy,
          Map<String, dynamic>>(retentionPolicyValue, (value) => value.toMap());
    }
    final rpoValue = rpo;
    if (rpoValue != null) {
      map['rpo'] = rpoValue;
    }
    final satisfiesPZSValue = satisfiesPZS;
    if (satisfiesPZSValue != null) {
      map['satisfiesPZS'] = satisfiesPZSValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final softDeletePolicyValue = softDeletePolicy;
    if (softDeletePolicyValue != null) {
      map['softDeletePolicy'] = pulumi.Input.mapOptionalInputValue<
              BucketSoftDeletePolicy, Map<String, dynamic>>(
          softDeletePolicyValue, (value) => value.toMap());
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final timeCreatedValue = timeCreated;
    if (timeCreatedValue != null) {
      map['timeCreated'] = timeCreatedValue;
    }
    final updatedValue = updated;
    if (updatedValue != null) {
      map['updated'] = updatedValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    final versioningValue = versioning;
    if (versioningValue != null) {
      map['versioning'] = pulumi.Input.mapOptionalInputValue<BucketVersioning,
          Map<String, dynamic>>(versioningValue, (value) => value.toMap());
    }
    final websiteValue = website;
    if (websiteValue != null) {
      map['website'] = pulumi.Input.mapOptionalInputValue<BucketWebsite,
          Map<String, dynamic>>(websiteValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketStorageV1Args.fromMap(Map<String, dynamic> map) {
    return BucketStorageV1Args(
      acl: pulumi.Input.asOptionalInput<List<BucketAccessControl>>(map['acl']),
      autoclass:
          pulumi.Input.asOptionalInput<BucketAutoclass>(map['autoclass']),
      billing: pulumi.Input.asOptionalInput<BucketBilling>(map['billing']),
      cors: pulumi.Input.asOptionalInput<List<BucketCorsItem>>(map['cors']),
      customPlacementConfig:
          pulumi.Input.asOptionalInput<BucketCustomPlacementConfig>(
              map['customPlacementConfig']),
      defaultEventBasedHold:
          pulumi.Input.asOptionalInput<bool>(map['defaultEventBasedHold']),
      defaultObjectAcl: pulumi.Input.asOptionalInput<List<ObjectAccessControl>>(
          map['defaultObjectAcl']),
      enableObjectRetention:
          pulumi.Input.asOptionalInput<bool>(map['enableObjectRetention']),
      encryption:
          pulumi.Input.asOptionalInput<BucketEncryption>(map['encryption']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      iamConfiguration: pulumi.Input.asOptionalInput<BucketIamConfiguration>(
          map['iamConfiguration']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifecycle:
          pulumi.Input.asOptionalInput<BucketLifecycle>(map['lifecycle']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      locationType: pulumi.Input.asOptionalInput<String>(map['locationType']),
      logging: pulumi.Input.asOptionalInput<BucketLogging>(map['logging']),
      metageneration:
          pulumi.Input.asOptionalInput<String>(map['metageneration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      objectRetention: pulumi.Input.asOptionalInput<BucketObjectRetention>(
          map['objectRetention']),
      owner: pulumi.Input.asOptionalInput<BucketOwner>(map['owner']),
      predefinedAcl: pulumi.Input.asOptionalInput<String>(map['predefinedAcl']),
      predefinedDefaultObjectAcl: pulumi.Input.asOptionalInput<String>(
          map['predefinedDefaultObjectAcl']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      projectNumber: pulumi.Input.asOptionalInput<String>(map['projectNumber']),
      projection: pulumi.Input.asOptionalInput<String>(map['projection']),
      retentionPolicy: pulumi.Input.asOptionalInput<BucketRetentionPolicy>(
          map['retentionPolicy']),
      rpo: pulumi.Input.asOptionalInput<String>(map['rpo']),
      satisfiesPZS: pulumi.Input.asOptionalInput<bool>(map['satisfiesPZS']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      softDeletePolicy: pulumi.Input.asOptionalInput<BucketSoftDeletePolicy>(
          map['softDeletePolicy']),
      storageClass: pulumi.Input.asOptionalInput<String>(map['storageClass']),
      timeCreated: pulumi.Input.asOptionalInput<String>(map['timeCreated']),
      updated: pulumi.Input.asOptionalInput<String>(map['updated']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
      versioning:
          pulumi.Input.asOptionalInput<BucketVersioning>(map['versioning']),
      website: pulumi.Input.asOptionalInput<BucketWebsite>(map['website']),
    );
  }
}
