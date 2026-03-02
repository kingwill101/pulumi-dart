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

/// Input properties used for looking up and filtering Bucket resources.
class BucketState {
  /// Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketAccelerateConfiguration` instead.
  final pulumi.Input<String>? accelerationStatus;
  /// The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to `private`.  Conflicts with `grant`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final pulumi.Input<String>? acl;
  /// ARN of the bucket. Will be of format `arn:aws:s3:::bucketname`.
  final pulumi.Input<String>? arn;
  /// Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.DirectoryBucket` resource to manage S3 Express buckets.
  final pulumi.Input<String>? bucket;
  /// Bucket domain name. Will be of format `bucketname.s3.amazonaws.com`.
  final pulumi.Input<String>? bucketDomainName;
  /// Creates a unique bucket name beginning with the specified prefix. Conflicts with `bucket`. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  final pulumi.Input<String>? bucketPrefix;
  /// AWS region this bucket resides in.
  final pulumi.Input<String>? bucketRegion;
  /// The bucket region-specific domain name. The bucket domain name including the region name. Please refer to the [S3 endpoints reference](https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_region) for format. Note: AWS CloudFront allows specifying an S3 region-specific endpoint when creating an S3 origin. This will prevent redirect issues from CloudFront to the S3 Origin URL. For more information, see the [Virtual Hosted-Style Requests for Other Regions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#deprecated-global-endpoint) section in the AWS S3 User Guide.
  final pulumi.Input<String>? bucketRegionalDomainName;
  /// Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See CORS rule below for details. This provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketCorsConfiguration` instead.
  final pulumi.Input<List<BucketCorsRule>>? corsRules;
  /// Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool>? forceDestroy;
  /// An [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See Grant below for details. Conflicts with `acl`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final pulumi.Input<List<BucketGrant>>? grants;
  /// [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  final pulumi.Input<String>? hostedZoneId;
  /// Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See Lifecycle Rule below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketLifecycleConfiguration` instead.
  final pulumi.Input<List<BucketLifecycleRule>>? lifecycleRules;
  /// Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See Logging below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketLogging` instead.
  final pulumi.Input<BucketLogging>? logging;
  /// Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See Object Lock Configuration below for details.
  /// The provider wil only perform drift detection if a configuration value is provided.
  /// Use the `object_lock_enabled` parameter and the resource `aws.s3.BucketObjectLockConfiguration` instead.
  final pulumi.Input<BucketObjectLockConfiguration>? objectLockConfiguration;
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
  final pulumi.Input<BucketReplicationConfiguration>? replicationConfiguration;
  /// Specifies who should bear the cost of Amazon S3 data transfer.
  /// Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer.
  /// See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketRequestPaymentConfiguration` instead.
  final pulumi.Input<String>? requestPayer;
  /// Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketServerSideEncryptionConfiguration` instead.
  final pulumi.Input<BucketServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration;
  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// The following arguments are deprecated, and will be removed in a future major version:
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  final pulumi.Input<BucketVersioning>? versioning;
  /// Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final pulumi.Input<BucketWebsite>? website;
  /// (**Deprecated**) Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final pulumi.Input<String>? websiteDomain;
  /// (**Deprecated**) Website endpoint, if the bucket is configured with a website. If not, this will be an empty string. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final pulumi.Input<String>? websiteEndpoint;

  /// Creates a new [BucketState].
  /// [accelerationStatus] Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided.
  /// [acl] The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to `private`.  Conflicts with `grant`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  /// [arn] ARN of the bucket. Will be of format `arn:aws:s3:::bucketname`.
  /// [bucket] Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.DirectoryBucket` resource to manage S3 Express buckets.
  /// [bucketDomainName] Bucket domain name. Will be of format `bucketname.s3.amazonaws.com`.
  /// [bucketPrefix] Creates a unique bucket name beginning with the specified prefix. Conflicts with `bucket`. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  /// [bucketRegion] AWS region this bucket resides in.
  /// [bucketRegionalDomainName] The bucket region-specific domain name. The bucket domain name including the region name. Please refer to the [S3 endpoints reference](https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_region) for format. Note: AWS CloudFront allows specifying an S3 region-specific endpoint when creating an S3 origin. This will prevent redirect issues from CloudFront to the S3 Origin URL. For more information, see the [Virtual Hosted-Style Requests for Other Regions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#deprecated-global-endpoint) section in the AWS S3 User Guide.
  /// [corsRules] Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See CORS rule below for details. This provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketCorsConfiguration` instead.
  /// [forceDestroy] Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  /// [grants] An [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See Grant below for details. Conflicts with `acl`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  /// [hostedZoneId] [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  /// [lifecycleRules] Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See Lifecycle Rule below for details. The provider will only perform drift detection if a configuration value is provided.
  /// [logging] Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See Logging below for details. The provider will only perform drift detection if a configuration value is provided.
  /// [objectLockConfiguration] Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See Object Lock Configuration below for details.
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  /// [policy] Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationConfiguration] Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See Replication Configuration below for details. The provider will only perform drift detection if a configuration value is provided.
  /// [requestPayer] Specifies who should bear the cost of Amazon S3 data transfer.
  /// [serverSideEncryptionConfiguration] Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// [tags] Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [versioning] Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  /// [website] Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  /// [websiteDomain] (**Deprecated**) Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  /// [websiteEndpoint] (**Deprecated**) Website endpoint, if the bucket is configured with a website. If not, this will be an empty string. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  BucketState({
    this.accelerationStatus,
    this.acl,
    this.arn,
    this.bucket,
    this.bucketDomainName,
    this.bucketPrefix,
    this.bucketRegion,
    this.bucketRegionalDomainName,
    this.corsRules,
    this.forceDestroy,
    this.grants,
    this.hostedZoneId,
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
    this.tagsAll,
    this.versioning,
    this.website,
    this.websiteDomain,
    this.websiteEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationStatus': ?accelerationStatus,
      'acl': ?acl,
      'arn': ?arn,
      'bucket': ?bucket,
      'bucketDomainName': ?bucketDomainName,
      'bucketPrefix': ?bucketPrefix,
      'bucketRegion': ?bucketRegion,
      'bucketRegionalDomainName': ?bucketRegionalDomainName,
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<BucketCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<BucketCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'grants': ?pulumi.Input.mapOptionalInputValue<List<BucketGrant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<BucketGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostedZoneId': ?hostedZoneId,
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
      'tagsAll': ?tagsAll,
      'versioning': ?pulumi.Input.mapOptionalInputValue<BucketVersioning, Map<String, dynamic>>(versioning, (value) => value.toMap()),
      'website': ?pulumi.Input.mapOptionalInputValue<BucketWebsite, Map<String, dynamic>>(website, (value) => value.toMap()),
      'websiteDomain': ?websiteDomain,
      'websiteEndpoint': ?websiteEndpoint,
    };
  }

  factory BucketState.fromMap(Map<String, dynamic> map) {
    return BucketState(
      accelerationStatus: map['accelerationStatus'] == null ? null : ((map['accelerationStatus'] as String).input()).input(),
      acl: map['acl'] == null ? null : ((map['acl'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      bucket: map['bucket'] == null ? null : ((map['bucket'] as String).input()).input(),
      bucketDomainName: map['bucketDomainName'] == null ? null : ((map['bucketDomainName'] as String).input()).input(),
      bucketPrefix: map['bucketPrefix'] == null ? null : ((map['bucketPrefix'] as String).input()).input(),
      bucketRegion: map['bucketRegion'] == null ? null : ((map['bucketRegion'] as String).input()).input(),
      bucketRegionalDomainName: map['bucketRegionalDomainName'] == null ? null : ((map['bucketRegionalDomainName'] as String).input()).input(),
      corsRules: map['corsRules'] == null ? null : ((pulumi.Input.decodeList<BucketCorsRule>(map['corsRules']!, (value) => BucketCorsRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      grants: map['grants'] == null ? null : ((pulumi.Input.decodeList<BucketGrant>(map['grants']!, (value) => BucketGrant.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : ((map['hostedZoneId'] as String).input()).input(),
      lifecycleRules: map['lifecycleRules'] == null ? null : ((pulumi.Input.decodeList<BucketLifecycleRule>(map['lifecycleRules']!, (value) => BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      logging: map['logging'] == null ? null : ((BucketLogging.fromMap((map['logging']! as Map).cast<String, dynamic>())).input()).input(),
      objectLockConfiguration: map['objectLockConfiguration'] == null ? null : ((BucketObjectLockConfiguration.fromMap((map['objectLockConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      objectLockEnabled: map['objectLockEnabled'] == null ? null : ((map['objectLockEnabled'] as bool).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      replicationConfiguration: map['replicationConfiguration'] == null ? null : ((BucketReplicationConfiguration.fromMap((map['replicationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      requestPayer: map['requestPayer'] == null ? null : ((map['requestPayer'] as String).input()).input(),
      serverSideEncryptionConfiguration: map['serverSideEncryptionConfiguration'] == null ? null : ((BucketServerSideEncryptionConfiguration.fromMap((map['serverSideEncryptionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      versioning: map['versioning'] == null ? null : ((BucketVersioning.fromMap((map['versioning']! as Map).cast<String, dynamic>())).input()).input(),
      website: map['website'] == null ? null : ((BucketWebsite.fromMap((map['website']! as Map).cast<String, dynamic>())).input()).input(),
      websiteDomain: map['websiteDomain'] == null ? null : ((map['websiteDomain'] as String).input()).input(),
      websiteEndpoint: map['websiteEndpoint'] == null ? null : ((map['websiteEndpoint'] as String).input()).input(),
    );
  }
}

