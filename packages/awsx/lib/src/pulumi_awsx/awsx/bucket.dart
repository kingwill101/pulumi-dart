// ignore_for_file: unused_element, unnecessary_cast

/// The set of arguments for constructing a Bucket resource.
class Bucket {
  /// Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketAccelerateConfiguration` instead.
  final String? accelerationStatus;

  /// The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to `private`.  Conflicts with `grant`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final String? acl;

  /// Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.DirectoryBucket` resource to manage S3 Express buckets.
  final String? bucket;

  /// Creates a unique bucket name beginning with the specified prefix. Conflicts with `bucket`. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  final String? bucketPrefix;

  /// Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See CORS rule below for details. This provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketCorsConfiguration` instead.
  final List<Map<String, dynamic>>? corsRules;

  /// Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final bool? forceDestroy;

  /// An [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See Grant below for details. Conflicts with `acl`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final List<Map<String, dynamic>>? grants;

  /// Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See Lifecycle Rule below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketLifecycleConfiguration` instead.
  final List<Map<String, dynamic>>? lifecycleRules;

  /// Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See Logging below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketLogging` instead.
  final Map<String, dynamic>? logging;

  /// Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See Object Lock Configuration below for details.
  /// The provider wil only perform drift detection if a configuration value is provided.
  /// Use the `object_lock_enabled` parameter and the resource `aws.s3.BucketObjectLockConfiguration` instead.
  final Map<String, dynamic>? objectLockConfiguration;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  final bool? objectLockEnabled;

  /// Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketPolicy` instead.
  final String? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See Replication Configuration below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketReplicationConfig` instead.
  final Map<String, dynamic>? replicationConfiguration;

  /// Specifies who should bear the cost of Amazon S3 data transfer.
  /// Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer.
  /// See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketRequestPaymentConfiguration` instead.
  final String? requestPayer;

  /// Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketServerSideEncryptionConfiguration` instead.
  final Map<String, dynamic>? serverSideEncryptionConfiguration;

  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// The following arguments are deprecated, and will be removed in a future major version:
  final Map<String, String>? tags;

  /// Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  final Map<String, dynamic>? versioning;

  /// Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final Map<String, dynamic>? website;

  Bucket({
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
      map['corsRules'] = corsRulesValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final grantsValue = grants;
    if (grantsValue != null) {
      map['grants'] = grantsValue;
    }
    final lifecycleRulesValue = lifecycleRules;
    if (lifecycleRulesValue != null) {
      map['lifecycleRules'] = lifecycleRulesValue;
    }
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] = loggingValue;
    }
    final objectLockConfigurationValue = objectLockConfiguration;
    if (objectLockConfigurationValue != null) {
      map['objectLockConfiguration'] = objectLockConfigurationValue;
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
      map['replicationConfiguration'] = replicationConfigurationValue;
    }
    final requestPayerValue = requestPayer;
    if (requestPayerValue != null) {
      map['requestPayer'] = requestPayerValue;
    }
    final serverSideEncryptionConfigurationValue =
        serverSideEncryptionConfiguration;
    if (serverSideEncryptionConfigurationValue != null) {
      map['serverSideEncryptionConfiguration'] =
          serverSideEncryptionConfigurationValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final versioningValue = versioning;
    if (versioningValue != null) {
      map['versioning'] = versioningValue;
    }
    final websiteValue = website;
    if (websiteValue != null) {
      map['website'] = websiteValue;
    }
    return map;
  }

  factory Bucket.fromMap(Map<String, dynamic> map) {
    return Bucket(
      accelerationStatus: map['accelerationStatus'] == null
          ? null
          : map['accelerationStatus'] as String,
      acl: map['acl'] == null ? null : map['acl'] as String,
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      corsRules: map['corsRules'] == null
          ? null
          : (map['corsRules'] as List).cast<Map<String, dynamic>>(),
      forceDestroy:
          map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      grants: map['grants'] == null
          ? null
          : (map['grants'] as List).cast<Map<String, dynamic>>(),
      lifecycleRules: map['lifecycleRules'] == null
          ? null
          : (map['lifecycleRules'] as List).cast<Map<String, dynamic>>(),
      logging: map['logging'] == null
          ? null
          : (map['logging'] as Map).cast<String, dynamic>(),
      objectLockConfiguration: map['objectLockConfiguration'] == null
          ? null
          : (map['objectLockConfiguration'] as Map).cast<String, dynamic>(),
      objectLockEnabled: map['objectLockEnabled'] == null
          ? null
          : map['objectLockEnabled'] as bool,
      policy: map['policy'] == null ? null : map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replicationConfiguration: map['replicationConfiguration'] == null
          ? null
          : (map['replicationConfiguration'] as Map).cast<String, dynamic>(),
      requestPayer:
          map['requestPayer'] == null ? null : map['requestPayer'] as String,
      serverSideEncryptionConfiguration:
          map['serverSideEncryptionConfiguration'] == null
              ? null
              : (map['serverSideEncryptionConfiguration'] as Map)
                  .cast<String, dynamic>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      versioning: map['versioning'] == null
          ? null
          : (map['versioning'] as Map).cast<String, dynamic>(),
      website: map['website'] == null
          ? null
          : (map['website'] as Map).cast<String, dynamic>(),
    );
  }
}
