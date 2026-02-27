import 'package:pulumi/pulumi.dart' hide Config;
import 'bucket_access_control_response.dart';
import 'bucket_args2.dart';
import 'bucket_autoclass_response.dart';
import 'bucket_billing_response.dart';
import 'bucket_cors_item_response.dart';
import 'bucket_custom_placement_config_response.dart';
import 'bucket_encryption_response.dart';
import 'bucket_iam_configuration_response.dart';
import 'bucket_lifecycle_response.dart';
import 'bucket_logging_response.dart';
import 'bucket_object_retention_response.dart';
import 'bucket_owner_response.dart';
import 'bucket_retention_policy_response.dart';
import 'bucket_soft_delete_policy_response.dart';
import 'bucket_versioning_response.dart';
import 'bucket_website_response.dart';
import 'object_access_control_response.dart';

/// Creates a new bucket.
class Bucket2 extends CustomResource {
  /// Access controls on the bucket.
  late final Output<List<BucketAccessControlResponse>> acl;

  /// The bucket's Autoclass configuration.
  late final Output<BucketAutoclassResponse> autoclass;

  /// The bucket's billing configuration.
  late final Output<BucketBillingResponse> billing;

  /// The bucket's Cross-Origin Resource Sharing (CORS) configuration.
  late final Output<List<BucketCorsItemResponse>> cors;

  /// The bucket's custom placement configuration for Custom Dual Regions.
  late final Output<BucketCustomPlacementConfigResponse> customPlacementConfig;

  /// The default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.
  late final Output<bool> defaultEventBasedHold;

  /// Default access controls to apply to new objects when no ACL is provided.
  late final Output<List<ObjectAccessControlResponse>> defaultObjectAcl;

  /// When set to true, object retention is enabled for this bucket.
  late final Output<bool?> enableObjectRetention;

  /// Encryption configuration for a bucket.
  late final Output<BucketEncryptionResponse> encryption;

  /// HTTP 1.1 Entity tag for the bucket.
  late final Output<String> etag;

  /// The bucket's IAM configuration.
  late final Output<BucketIamConfigurationResponse> iamConfiguration;

  /// The kind of item this is. For buckets, this is always storage#bucket.
  late final Output<String> kind;

  /// User-provided labels, in key/value pairs.
  late final Output<Map<String, String>> labels;

  /// The bucket's lifecycle configuration. See lifecycle management for more information.
  late final Output<BucketLifecycleResponse> lifecycle;

  /// The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.
  late final Output<String> location;

  /// The type of the bucket location.
  late final Output<String> locationType;

  /// The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
  late final Output<BucketLoggingResponse> logging;

  /// The metadata generation of this bucket.
  late final Output<String> metageneration;

  /// The name of the bucket.
  late final Output<String> name;

  /// The bucket's object retention config.
  late final Output<BucketObjectRetentionResponse> objectRetention;

  /// The owner of the bucket. This is always the project team's owner group.
  late final Output<BucketOwnerResponse> owner;

  /// Apply a predefined set of access controls to this bucket.
  late final Output<String?> predefinedAcl;

  /// Apply a predefined set of default object access controls to this bucket.
  late final Output<String?> predefinedDefaultObjectAcl;

  /// A valid API project identifier.
  late final Output<String> project;

  /// The project number of the project the bucket belongs to.
  late final Output<String> projectNumber;

  /// Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
  late final Output<String?> projection;

  /// The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.
  late final Output<BucketRetentionPolicyResponse> retentionPolicy;

  /// The Recovery Point Objective (RPO) of this bucket. Set to ASYNC_TURBO to turn on Turbo Replication on a bucket.
  late final Output<String> rpo;

  /// Reserved for future use.
  late final Output<bool> satisfiesPZS;

  /// The URI of this bucket.
  late final Output<String> selfLink;

  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted.
  late final Output<BucketSoftDeletePolicyResponse> softDeletePolicy;

  /// The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, ARCHIVE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.
  late final Output<String> storageClass;

  /// The creation time of the bucket in RFC 3339 format.
  late final Output<String> timeCreated;

  /// The modification time of the bucket in RFC 3339 format.
  late final Output<String> updated;

  /// The project to be billed for this request.
  late final Output<String?> userProject;

  /// The bucket's versioning configuration.
  late final Output<BucketVersioningResponse> versioning;

  /// The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.
  late final Output<BucketWebsiteResponse> website;

  Bucket2(
    String name, {
    BucketArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:Bucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acl = registerOutput<List<BucketAccessControlResponse>>('acl');
    this.autoclass = registerOutput<BucketAutoclassResponse>('autoclass');
    this.billing = registerOutput<BucketBillingResponse>('billing');
    this.cors = registerOutput<List<BucketCorsItemResponse>>('cors');
    this.customPlacementConfig =
        registerOutput<BucketCustomPlacementConfigResponse>(
            'customPlacementConfig');
    this.defaultEventBasedHold = registerOutput<bool>('defaultEventBasedHold');
    this.defaultObjectAcl =
        registerOutput<List<ObjectAccessControlResponse>>('defaultObjectAcl');
    this.enableObjectRetention = registerOutput<bool?>('enableObjectRetention');
    this.encryption = registerOutput<BucketEncryptionResponse>('encryption');
    this.etag = registerOutput<String>('etag');
    this.iamConfiguration =
        registerOutput<BucketIamConfigurationResponse>('iamConfiguration');
    this.kind = registerOutput<String>('kind');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lifecycle = registerOutput<BucketLifecycleResponse>('lifecycle');
    this.location = registerOutput<String>('location');
    this.locationType = registerOutput<String>('locationType');
    this.logging = registerOutput<BucketLoggingResponse>('logging');
    this.metageneration = registerOutput<String>('metageneration');
    this.name = registerOutput<String>('name');
    this.objectRetention =
        registerOutput<BucketObjectRetentionResponse>('objectRetention');
    this.owner = registerOutput<BucketOwnerResponse>('owner');
    this.predefinedAcl = registerOutput<String?>('predefinedAcl');
    this.predefinedDefaultObjectAcl =
        registerOutput<String?>('predefinedDefaultObjectAcl');
    this.project = registerOutput<String>('project');
    this.projectNumber = registerOutput<String>('projectNumber');
    this.projection = registerOutput<String?>('projection');
    this.retentionPolicy =
        registerOutput<BucketRetentionPolicyResponse>('retentionPolicy');
    this.rpo = registerOutput<String>('rpo');
    this.satisfiesPZS = registerOutput<bool>('satisfiesPZS');
    this.selfLink = registerOutput<String>('selfLink');
    this.softDeletePolicy =
        registerOutput<BucketSoftDeletePolicyResponse>('softDeletePolicy');
    this.storageClass = registerOutput<String>('storageClass');
    this.timeCreated = registerOutput<String>('timeCreated');
    this.updated = registerOutput<String>('updated');
    this.userProject = registerOutput<String?>('userProject');
    this.versioning = registerOutput<BucketVersioningResponse>('versioning');
    this.website = registerOutput<BucketWebsiteResponse>('website');
  }
}
