// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cors_rule.dart';
import 'bucket_grant.dart';
import 'bucket_lifecycle_rule.dart';
import 'bucket_logging.dart';
import 'bucket_object_lock_configuration.dart';
import 'bucket_replication_configuration.dart';
import 'bucket_server_side_encryption_configuration.dart';
import 'bucket_versioning.dart';
import 'bucket_website.dart';

/// {@template pulumi_s3_bucket_bucket_args_doc}
/// The set of arguments for Bucket.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_bucket_args_doc}
class BucketArgs {
  /// Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAccelerateConfiguration` instead.
  final pulumi.Input<String?>? accelerationStatus;
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to `private`. Conflicts with `grant`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final pulumi.Input<dynamic>? acl;
  /// Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `[bucketName]--[azid]--x-s3`. Use the `aws.s3.DirectoryBucket` resource to manage S3 Express buckets.
  final pulumi.Input<String?>? bucket;
  /// Namespace for the bucket. Determines bucket naming scope. Valid values: `account-regional`, `global`. Defaults to `global` (AWS).
  final pulumi.Input<String?>? bucketNamespace;
  /// Creates a unique bucket name beginning with the specified prefix. Conflicts with `bucket`. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  final pulumi.Input<String?>? bucketPrefix;
  /// Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See `corsRule` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketCorsConfiguration` instead.
  final pulumi.Input<List<BucketCorsRule>?>? corsRules;
  /// Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool?>? forceDestroy;
  /// [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See `grant` Block below for details. Conflicts with `acl`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final pulumi.Input<List<BucketGrant>?>? grants;
  /// Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See `lifecycleRule` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketLifecycleConfiguration` instead.
  final pulumi.Input<List<BucketLifecycleRule>?>? lifecycleRules;
  /// Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See `logging` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketLogging` instead.
  final pulumi.Input<BucketLogging?>? logging;
  /// Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See `objectLockConfiguration` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the `objectLockEnabled` parameter and the resource `aws.s3.BucketObjectLockConfiguration` instead.
  final pulumi.Input<BucketObjectLockConfiguration?>? objectLockConfiguration;
  /// Whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  final pulumi.Input<bool?>? objectLockEnabled;
  /// Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketPolicy` instead.
  final pulumi.Input<dynamic>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See `replicationConfiguration` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketReplicationConfig` instead.
  final pulumi.Input<BucketReplicationConfiguration?>? replicationConfiguration;
  /// Who should bear the cost of Amazon S3 data transfer. Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer. See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketRequestPaymentConfiguration` instead.
  final pulumi.Input<String?>? requestPayer;
  /// Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See `serverSideEncryptionConfiguration` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketServerSideEncryptionConfiguration` instead.
  final pulumi.Input<BucketServerSideEncryptionConfiguration?>? serverSideEncryptionConfiguration;
  /// Map of tags to assign to the bucket. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See `versioning` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  final pulumi.Input<BucketVersioning?>? versioning;
  /// Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See `website` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final pulumi.Input<BucketWebsite?>? website;

  /// Creates a new [BucketArgs].
  /// [accelerationStatus] Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAccelerateConfiguration` instead.
  /// [acl] [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to `private`. Conflicts with `grant`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  /// [bucket] Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `[bucketName]--[azid]--x-s3`. Use the `aws.s3.DirectoryBucket` resource to manage S3 Express buckets.
  /// [bucketNamespace] Namespace for the bucket. Determines bucket naming scope. Valid values: `account-regional`, `global`. Defaults to `global` (AWS).
  /// [bucketPrefix] Creates a unique bucket name beginning with the specified prefix. Conflicts with `bucket`. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  /// [corsRules] Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See `corsRule` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketCorsConfiguration` instead.
  /// [forceDestroy] Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  /// [grants] [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See `grant` Block below for details. Conflicts with `acl`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  /// [lifecycleRules] Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See `lifecycleRule` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketLifecycleConfiguration` instead.
  /// [logging] Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See `logging` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketLogging` instead.
  /// [objectLockConfiguration] Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See `objectLockConfiguration` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the `objectLockEnabled` parameter and the resource `aws.s3.BucketObjectLockConfiguration` instead.
  /// [objectLockEnabled] Whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  /// [policy] Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketPolicy` instead.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationConfiguration] Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See `replicationConfiguration` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketReplicationConfig` instead.
  /// [requestPayer] Who should bear the cost of Amazon S3 data transfer. Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer. See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketRequestPaymentConfiguration` instead.
  /// [serverSideEncryptionConfiguration] Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See `serverSideEncryptionConfiguration` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketServerSideEncryptionConfiguration` instead.
  /// [tags] Map of tags to assign to the bucket. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [versioning] Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See `versioning` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  /// [website] Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See `website` Block below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  const BucketArgs({
    this.accelerationStatus,
    this.acl,
    this.bucket,
    this.bucketNamespace,
    this.bucketPrefix,
    this.corsRules,
    this.forceDestroy,
    this.grants,
    this.lifecycleRules,
    this.logging,
    this.objectLockConfiguration,
    this.objectLockEnabled,
    this.policy,
    this.region,
    this.replicationConfiguration,
    this.requestPayer,
    this.serverSideEncryptionConfiguration,
    this.tags,
    this.versioning,
    this.website,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationStatus': ?accelerationStatus,
      'acl': ?acl,
      'bucket': ?bucket,
      'bucketNamespace': ?bucketNamespace,
      'bucketPrefix': ?bucketPrefix,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<BucketCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<BucketCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'grants': ?pulumi.Input.mapOptionalInputValue<List<BucketGrant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<BucketGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleRules': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<BucketLifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logging': ?pulumi.Input.mapOptionalInputValue<BucketLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'objectLockConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketObjectLockConfiguration, Map<String, dynamic>>(objectLockConfiguration, (value) => value.toMap()),
      'objectLockEnabled': ?objectLockEnabled,
      'policy': ?policy,
      'region': ?region,
      'replicationConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfiguration, Map<String, dynamic>>(replicationConfiguration, (value) => value.toMap()),
      'requestPayer': ?requestPayer,
      'serverSideEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketServerSideEncryptionConfiguration, Map<String, dynamic>>(serverSideEncryptionConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'versioning': ?pulumi.Input.mapOptionalInputValue<BucketVersioning, Map<String, dynamic>>(versioning, (value) => value.toMap()),
      'website': ?pulumi.Input.mapOptionalInputValue<BucketWebsite, Map<String, dynamic>>(website, (value) => value.toMap()),
    };
  }

  factory BucketArgs.fromMap(Map<String, dynamic> map) {
    return BucketArgs(
      accelerationStatus: (() { final guardedValue = map['accelerationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketNamespace: (() { final guardedValue = map['bucketNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketCorsRule>(guardedValue, (value) => BucketCorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grants: (() { final guardedValue = map['grants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketGrant>(guardedValue, (value) => BucketGrant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lifecycleRules: (() { final guardedValue = map['lifecycleRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRule>(guardedValue, (value) => BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectLockConfiguration: (() { final guardedValue = map['objectLockConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketObjectLockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectLockEnabled: (() { final guardedValue = map['objectLockEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationConfiguration: (() { final guardedValue = map['replicationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestPayer: (() { final guardedValue = map['requestPayer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverSideEncryptionConfiguration: (() { final guardedValue = map['serverSideEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versioning: (() { final guardedValue = map['versioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketVersioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      website: (() { final guardedValue = map['website']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
