// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_v2_cors_rule/bucket_v2_cors_rule.dart';
import '../bucket_v2_grant/bucket_v2_grant.dart';
import '../bucket_v2_lifecycle_rule/bucket_v2_lifecycle_rule.dart';
import '../bucket_v2_logging/bucket_v2_logging.dart';
import '../bucket_v2_object_lock_configuration/bucket_v2_object_lock_configuration.dart';
import '../bucket_v2_replication_configuration/bucket_v2_replication_configuration.dart';
import '../bucket_v2_server_side_encryption_configuration/bucket_v2_server_side_encryption_configuration.dart';
import '../bucket_v2_versioning/bucket_v2_versioning.dart';
import '../bucket_v2_website/bucket_v2_website.dart';

/// The set of arguments for BucketV2.
class BucketV2Args {
  /// Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketAccelerateConfiguration` instead.
  final pulumi.Input<String>? accelerationStatus;

  /// The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to `private`.  Conflicts with `grant`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final pulumi.Input<String>? acl;

  /// Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.DirectoryBucket` resource to manage S3 Express buckets.
  final pulumi.Input<String>? bucket;

  /// Creates a unique bucket name beginning with the specified prefix. Conflicts with `bucket`. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  final pulumi.Input<String>? bucketPrefix;

  /// Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See CORS rule below for details. This provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketCorsConfiguration` instead.
  final pulumi.Input<List<BucketV2CorsRule>>? corsRules;

  /// Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool>? forceDestroy;

  /// An [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See Grant below for details. Conflicts with `acl`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final pulumi.Input<List<BucketV2Grant>>? grants;

  /// Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See Lifecycle Rule below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketLifecycleConfiguration` instead.
  final pulumi.Input<List<BucketV2LifecycleRule>>? lifecycleRules;

  /// Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See Logging below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketLogging` instead.
  final pulumi.Input<List<BucketV2Logging>>? loggings;

  /// Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See Object Lock Configuration below for details.
  /// The provider wil only perform drift detection if a configuration value is provided.
  /// Use the `object_lock_enabled` parameter and the resource `aws.s3.BucketObjectLockConfiguration` instead.
  final pulumi.Input<BucketV2ObjectLockConfiguration>? objectLockConfiguration;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  final pulumi.Input<bool>? objectLockEnabled;

  /// Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketPolicy` instead.
  final pulumi.Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See Replication Configuration below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketReplicationConfig` instead.
  final pulumi.Input<List<BucketV2ReplicationConfiguration>>?
      replicationConfigurations;

  /// Specifies who should bear the cost of Amazon S3 data transfer.
  /// Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer.
  /// See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketRequestPaymentConfiguration` instead.
  final pulumi.Input<String>? requestPayer;

  /// Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketServerSideEncryptionConfiguration` instead.
  final pulumi.Input<List<BucketV2ServerSideEncryptionConfiguration>>?
      serverSideEncryptionConfigurations;

  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// The following arguments are deprecated, and will be removed in a future major version:
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  final pulumi.Input<List<BucketV2Versioning>>? versionings;

  /// Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final pulumi.Input<List<BucketV2Website>>? websites;

  BucketV2Args({
    this.accelerationStatus,
    this.acl,
    this.bucket,
    this.bucketPrefix,
    this.corsRules,
    this.forceDestroy,
    this.grants,
    this.lifecycleRules,
    this.loggings,
    this.objectLockConfiguration,
    this.objectLockEnabled,
    this.policy,
    this.region,
    this.replicationConfigurations,
    this.requestPayer,
    this.serverSideEncryptionConfigurations,
    this.tags,
    this.tagsAll,
    this.versionings,
    this.websites,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accelerationStatusValue = accelerationStatus;
    if (accelerationStatusValue != null) {
      map['accelerationStatus'] = accelerationStatusValue;
    }
    final aclValue = acl;
    if (aclValue != null) {
      map['acl'] = aclValue;
    }
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final bucketPrefixValue = bucketPrefix;
    if (bucketPrefixValue != null) {
      map['bucketPrefix'] = bucketPrefixValue;
    }
    final corsRulesValue = corsRules;
    if (corsRulesValue != null) {
      map['corsRules'] = pulumi.Input.mapOptionalInputValue<
              List<BucketV2CorsRule>, List<Map<String, dynamic>>>(
          corsRulesValue,
          (value) =>
              pulumi.Input.encodeList<BucketV2CorsRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final grantsValue = grants;
    if (grantsValue != null) {
      map['grants'] = pulumi.Input.mapOptionalInputValue<List<BucketV2Grant>,
              List<Map<String, dynamic>>>(
          grantsValue,
          (value) =>
              pulumi.Input.encodeList<BucketV2Grant, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final lifecycleRulesValue = lifecycleRules;
    if (lifecycleRulesValue != null) {
      map['lifecycleRules'] = pulumi.Input.mapOptionalInputValue<
              List<BucketV2LifecycleRule>, List<Map<String, dynamic>>>(
          lifecycleRulesValue,
          (value) => pulumi.Input.encodeList<BucketV2LifecycleRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final loggingsValue = loggings;
    if (loggingsValue != null) {
      map['loggings'] = pulumi.Input.mapOptionalInputValue<
              List<BucketV2Logging>, List<Map<String, dynamic>>>(
          loggingsValue,
          (value) =>
              pulumi.Input.encodeList<BucketV2Logging, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final objectLockConfigurationValue = objectLockConfiguration;
    if (objectLockConfigurationValue != null) {
      map['objectLockConfiguration'] = pulumi.Input.mapOptionalInputValue<
              BucketV2ObjectLockConfiguration, Map<String, dynamic>>(
          objectLockConfigurationValue, (value) => value.toMap());
    }
    final objectLockEnabledValue = objectLockEnabled;
    if (objectLockEnabledValue != null) {
      map['objectLockEnabled'] = objectLockEnabledValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicationConfigurationsValue = replicationConfigurations;
    if (replicationConfigurationsValue != null) {
      map['replicationConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<BucketV2ReplicationConfiguration>,
              List<Map<String, dynamic>>>(
          replicationConfigurationsValue,
          (value) => pulumi.Input.encodeList<BucketV2ReplicationConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final requestPayerValue = requestPayer;
    if (requestPayerValue != null) {
      map['requestPayer'] = requestPayerValue;
    }
    final serverSideEncryptionConfigurationsValue =
        serverSideEncryptionConfigurations;
    if (serverSideEncryptionConfigurationsValue != null) {
      map['serverSideEncryptionConfigurations'] =
          pulumi.Input.mapOptionalInputValue<
                  List<BucketV2ServerSideEncryptionConfiguration>,
                  List<Map<String, dynamic>>>(
              serverSideEncryptionConfigurationsValue,
              (value) => pulumi.Input.encodeList<
                  BucketV2ServerSideEncryptionConfiguration,
                  Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tagsAllValue = tagsAll;
    if (tagsAllValue != null) {
      map['tagsAll'] = tagsAllValue;
    }
    final versioningsValue = versionings;
    if (versioningsValue != null) {
      map['versionings'] = pulumi.Input.mapOptionalInputValue<
              List<BucketV2Versioning>, List<Map<String, dynamic>>>(
          versioningsValue,
          (value) =>
              pulumi.Input.encodeList<BucketV2Versioning, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final websitesValue = websites;
    if (websitesValue != null) {
      map['websites'] = pulumi.Input.mapOptionalInputValue<
              List<BucketV2Website>, List<Map<String, dynamic>>>(
          websitesValue,
          (value) =>
              pulumi.Input.encodeList<BucketV2Website, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory BucketV2Args.fromMap(Map<String, dynamic> map) {
    return BucketV2Args(
      accelerationStatus:
          pulumi.Input.asOptionalInput<String>(map['accelerationStatus']),
      acl: pulumi.Input.asOptionalInput<String>(map['acl']),
      bucket: pulumi.Input.asOptionalInput<String>(map['bucket']),
      bucketPrefix: pulumi.Input.asOptionalInput<String>(map['bucketPrefix']),
      corsRules: pulumi.Input.asOptionalInput<List<BucketV2CorsRule>>(
          map['corsRules']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      grants: pulumi.Input.asOptionalInput<List<BucketV2Grant>>(map['grants']),
      lifecycleRules: pulumi.Input.asOptionalInput<List<BucketV2LifecycleRule>>(
          map['lifecycleRules']),
      loggings:
          pulumi.Input.asOptionalInput<List<BucketV2Logging>>(map['loggings']),
      objectLockConfiguration:
          pulumi.Input.asOptionalInput<BucketV2ObjectLockConfiguration>(
              map['objectLockConfiguration']),
      objectLockEnabled:
          pulumi.Input.asOptionalInput<bool>(map['objectLockEnabled']),
      policy: pulumi.Input.asOptionalInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationConfigurations:
          pulumi.Input.asOptionalInput<List<BucketV2ReplicationConfiguration>>(
              map['replicationConfigurations']),
      requestPayer: pulumi.Input.asOptionalInput<String>(map['requestPayer']),
      serverSideEncryptionConfigurations: pulumi.Input.asOptionalInput<
              List<BucketV2ServerSideEncryptionConfiguration>>(
          map['serverSideEncryptionConfigurations']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tagsAll:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['tagsAll']),
      versionings: pulumi.Input.asOptionalInput<List<BucketV2Versioning>>(
          map['versionings']),
      websites:
          pulumi.Input.asOptionalInput<List<BucketV2Website>>(map['websites']),
    );
  }
}
