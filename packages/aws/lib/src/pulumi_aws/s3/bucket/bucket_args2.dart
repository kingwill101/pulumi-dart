// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_cors_rule/bucket_cors_rule.dart';
import '../bucket_grant/bucket_grant.dart';
import '../bucket_lifecycle_rule/bucket_lifecycle_rule.dart';
import '../bucket_logging/bucket_logging.dart';
import '../bucket_object_lock_configuration/bucket_object_lock_configuration.dart';
import '../bucket_replication_configuration/bucket_replication_configuration.dart';
import '../bucket_server_side_encryption_configuration/bucket_server_side_encryption_configuration.dart';
import '../bucket_versioning/bucket_versioning.dart';
import '../bucket_website/bucket_website.dart';

/// The set of arguments for Bucket.
class BucketArgs2 {
  /// Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketAccelerateConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketAccelerateConfiguration`" pulumi-lang-go="`s3.BucketAccelerateConfiguration`" pulumi-lang-python="`s3.BucketAccelerateConfiguration`" pulumi-lang-yaml="`aws.s3.BucketAccelerateConfiguration`" pulumi-lang-java="`aws.s3.BucketAccelerateConfiguration`">`aws.s3.BucketAccelerateConfiguration`</span> instead.
  final Input<String>? accelerationStatus;

  /// The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.  Conflicts with <span pulumi-lang-nodejs="`grant`" pulumi-lang-dotnet="`Grant`" pulumi-lang-go="`grant`" pulumi-lang-python="`grant`" pulumi-lang-yaml="`grant`" pulumi-lang-java="`grant`">`grant`</span>. The provider will only perform drift detection if a configuration value is provided. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketAcl`" pulumi-lang-dotnet="`aws.s3.BucketAcl`" pulumi-lang-go="`s3.BucketAcl`" pulumi-lang-python="`s3.BucketAcl`" pulumi-lang-yaml="`aws.s3.BucketAcl`" pulumi-lang-java="`aws.s3.BucketAcl`">`aws.s3.BucketAcl`</span> instead.
  final Input<String>? acl;

  /// Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `<span pulumi-lang-nodejs="[bucketName]" pulumi-lang-dotnet="[BucketName]" pulumi-lang-go="[bucketName]" pulumi-lang-python="[bucket_name]" pulumi-lang-yaml="[bucketName]" pulumi-lang-java="[bucketName]">[bucket_name]</span>--[azid]--x-s3`. Use the <span pulumi-lang-nodejs="`aws.s3.DirectoryBucket`" pulumi-lang-dotnet="`aws.s3.DirectoryBucket`" pulumi-lang-go="`s3.DirectoryBucket`" pulumi-lang-python="`s3.DirectoryBucket`" pulumi-lang-yaml="`aws.s3.DirectoryBucket`" pulumi-lang-java="`aws.s3.DirectoryBucket`">`aws.s3.DirectoryBucket`</span> resource to manage S3 Express buckets.
  final Input<String>? bucket;

  /// Creates a unique bucket name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  final Input<String>? bucketPrefix;

  /// Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See CORS rule below for details. This provider will only perform drift detection if a configuration value is provided. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketCorsConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketCorsConfiguration`" pulumi-lang-go="`s3.BucketCorsConfiguration`" pulumi-lang-python="`s3.BucketCorsConfiguration`" pulumi-lang-yaml="`aws.s3.BucketCorsConfiguration`" pulumi-lang-java="`aws.s3.BucketCorsConfiguration`">`aws.s3.BucketCorsConfiguration`</span> instead.
  final Input<List<BucketCorsRule>>? corsRules;

  /// Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final Input<bool>? forceDestroy;

  /// An [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See Grant below for details. Conflicts with <span pulumi-lang-nodejs="`acl`" pulumi-lang-dotnet="`Acl`" pulumi-lang-go="`acl`" pulumi-lang-python="`acl`" pulumi-lang-yaml="`acl`" pulumi-lang-java="`acl`">`acl`</span>. The provider will only perform drift detection if a configuration value is provided. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketAcl`" pulumi-lang-dotnet="`aws.s3.BucketAcl`" pulumi-lang-go="`s3.BucketAcl`" pulumi-lang-python="`s3.BucketAcl`" pulumi-lang-yaml="`aws.s3.BucketAcl`" pulumi-lang-java="`aws.s3.BucketAcl`">`aws.s3.BucketAcl`</span> instead.
  final Input<List<BucketGrant>>? grants;

  /// Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See Lifecycle Rule below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketLifecycleConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketLifecycleConfiguration`" pulumi-lang-go="`s3.BucketLifecycleConfiguration`" pulumi-lang-python="`s3.BucketLifecycleConfiguration`" pulumi-lang-yaml="`aws.s3.BucketLifecycleConfiguration`" pulumi-lang-java="`aws.s3.BucketLifecycleConfiguration`">`aws.s3.BucketLifecycleConfiguration`</span> instead.
  final Input<List<BucketLifecycleRule>>? lifecycleRules;

  /// Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See Logging below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketLogging`" pulumi-lang-dotnet="`aws.s3.BucketLogging`" pulumi-lang-go="`s3.BucketLogging`" pulumi-lang-python="`s3.BucketLogging`" pulumi-lang-yaml="`aws.s3.BucketLogging`" pulumi-lang-java="`aws.s3.BucketLogging`">`aws.s3.BucketLogging`</span> instead.
  final Input<BucketLogging>? logging;

  /// Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See Object Lock Configuration below for details.
  /// The provider wil only perform drift detection if a configuration value is provided.
  /// Use the <span pulumi-lang-nodejs="`objectLockEnabled`" pulumi-lang-dotnet="`ObjectLockEnabled`" pulumi-lang-go="`objectLockEnabled`" pulumi-lang-python="`object_lock_enabled`" pulumi-lang-yaml="`objectLockEnabled`" pulumi-lang-java="`objectLockEnabled`">`object_lock_enabled`</span> parameter and the resource <span pulumi-lang-nodejs="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-go="`s3.BucketObjectLockConfiguration`" pulumi-lang-python="`s3.BucketObjectLockConfiguration`" pulumi-lang-yaml="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-java="`aws.s3.BucketObjectLockConfiguration`">`aws.s3.BucketObjectLockConfiguration`</span> instead.
  final Input<BucketObjectLockConfiguration>? objectLockConfiguration;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This argument is not supported in all regions or partitions.
  final Input<bool>? objectLockEnabled;

  /// Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketPolicy`" pulumi-lang-dotnet="`aws.s3.BucketPolicy`" pulumi-lang-go="`s3.BucketPolicy`" pulumi-lang-python="`s3.BucketPolicy`" pulumi-lang-yaml="`aws.s3.BucketPolicy`" pulumi-lang-java="`aws.s3.BucketPolicy`">`aws.s3.BucketPolicy`</span> instead.
  final Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See Replication Configuration below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketReplicationConfig`" pulumi-lang-dotnet="`aws.s3.BucketReplicationConfig`" pulumi-lang-go="`s3.BucketReplicationConfig`" pulumi-lang-python="`s3.BucketReplicationConfig`" pulumi-lang-yaml="`aws.s3.BucketReplicationConfig`" pulumi-lang-java="`aws.s3.BucketReplicationConfig`">`aws.s3.BucketReplicationConfig`</span> instead.
  final Input<BucketReplicationConfiguration>? replicationConfiguration;

  /// Specifies who should bear the cost of Amazon S3 data transfer.
  /// Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer.
  /// See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-go="`s3.BucketRequestPaymentConfiguration`" pulumi-lang-python="`s3.BucketRequestPaymentConfiguration`" pulumi-lang-yaml="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-java="`aws.s3.BucketRequestPaymentConfiguration`">`aws.s3.BucketRequestPaymentConfiguration`</span> instead.
  final Input<String>? requestPayer;

  /// Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-go="`s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-python="`s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-yaml="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-java="`aws.s3.BucketServerSideEncryptionConfiguration`">`aws.s3.BucketServerSideEncryptionConfiguration`</span> instead.
  final Input<BucketServerSideEncryptionConfiguration>?
      serverSideEncryptionConfiguration;

  /// Map of tags to assign to the bucket. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// The following arguments are deprecated, and will be removed in a future major version:
  final Input<Map<String, String>>? tags;

  /// Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketVersioning`" pulumi-lang-dotnet="`aws.s3.BucketVersioning`" pulumi-lang-go="`s3.BucketVersioning`" pulumi-lang-python="`s3.BucketVersioning`" pulumi-lang-yaml="`aws.s3.BucketVersioning`" pulumi-lang-java="`aws.s3.BucketVersioning`">`aws.s3.BucketVersioning`</span> instead.
  final Input<BucketVersioning>? versioning;

  /// Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-go="`s3.BucketWebsiteConfiguration`" pulumi-lang-python="`s3.BucketWebsiteConfiguration`" pulumi-lang-yaml="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-java="`aws.s3.BucketWebsiteConfiguration`">`aws.s3.BucketWebsiteConfiguration`</span> instead.
  final Input<BucketWebsite>? website;

  BucketArgs2({
    this.accelerationStatus,
    this.acl,
    this.bucket,
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
      map['corsRules'] = Input.mapOptionalInputValue<List<BucketCorsRule>,
              List<Map<String, dynamic>>>(
          corsRulesValue,
          (value) => Input.encodeList<BucketCorsRule, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final grantsValue = grants;
    if (grantsValue != null) {
      map['grants'] = Input.mapOptionalInputValue<List<BucketGrant>,
              List<Map<String, dynamic>>>(
          grantsValue,
          (value) => Input.encodeList<BucketGrant, Map<String, dynamic>>(
              value, (value) => value.toMap()));
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
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] =
          Input.mapOptionalInputValue<BucketLogging, Map<String, dynamic>>(
              loggingValue, (value) => value.toMap());
    }
    final objectLockConfigurationValue = objectLockConfiguration;
    if (objectLockConfigurationValue != null) {
      map['objectLockConfiguration'] = Input.mapOptionalInputValue<
              BucketObjectLockConfiguration, Map<String, dynamic>>(
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
    final replicationConfigurationValue = replicationConfiguration;
    if (replicationConfigurationValue != null) {
      map['replicationConfiguration'] = Input.mapOptionalInputValue<
              BucketReplicationConfiguration, Map<String, dynamic>>(
          replicationConfigurationValue, (value) => value.toMap());
    }
    final requestPayerValue = requestPayer;
    if (requestPayerValue != null) {
      map['requestPayer'] = requestPayerValue;
    }
    final serverSideEncryptionConfigurationValue =
        serverSideEncryptionConfiguration;
    if (serverSideEncryptionConfigurationValue != null) {
      map['serverSideEncryptionConfiguration'] = Input.mapOptionalInputValue<
              BucketServerSideEncryptionConfiguration, Map<String, dynamic>>(
          serverSideEncryptionConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
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

  factory BucketArgs2.fromMap(Map<String, dynamic> map) {
    return BucketArgs2(
      accelerationStatus:
          Input.asOptionalInput<String>(map['accelerationStatus']),
      acl: Input.asOptionalInput<String>(map['acl']),
      bucket: Input.asOptionalInput<String>(map['bucket']),
      bucketPrefix: Input.asOptionalInput<String>(map['bucketPrefix']),
      corsRules: Input.asOptionalInput<List<BucketCorsRule>>(map['corsRules']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      grants: Input.asOptionalInput<List<BucketGrant>>(map['grants']),
      lifecycleRules: Input.asOptionalInput<List<BucketLifecycleRule>>(
          map['lifecycleRules']),
      logging: Input.asOptionalInput<BucketLogging>(map['logging']),
      objectLockConfiguration:
          Input.asOptionalInput<BucketObjectLockConfiguration>(
              map['objectLockConfiguration']),
      objectLockEnabled: Input.asOptionalInput<bool>(map['objectLockEnabled']),
      policy: Input.asOptionalInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationConfiguration:
          Input.asOptionalInput<BucketReplicationConfiguration>(
              map['replicationConfiguration']),
      requestPayer: Input.asOptionalInput<String>(map['requestPayer']),
      serverSideEncryptionConfiguration:
          Input.asOptionalInput<BucketServerSideEncryptionConfiguration>(
              map['serverSideEncryptionConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      versioning: Input.asOptionalInput<BucketVersioning>(map['versioning']),
      website: Input.asOptionalInput<BucketWebsite>(map['website']),
    );
  }
}
