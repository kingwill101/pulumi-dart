// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_cors_rule.dart';
import 'bucket_v2_grant.dart';
import 'bucket_v2_lifecycle_rule.dart';
import 'bucket_v2_logging.dart';
import 'bucket_v2_object_lock_configuration.dart';
import 'bucket_v2_replication_configuration.dart';
import 'bucket_v2_server_side_encryption_configuration.dart';
import 'bucket_v2_versioning.dart';
import 'bucket_v2_website.dart';

/// Input properties used for looking up and filtering BucketV2 resources.
class BucketV2State {
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
  final pulumi.Input<List<BucketV2CorsRule>>? corsRules;
  /// Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool>? forceDestroy;
  /// An [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See Grant below for details. Conflicts with `acl`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  final pulumi.Input<List<BucketV2Grant>>? grants;
  /// [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  final pulumi.Input<String>? hostedZoneId;
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
  final pulumi.Input<List<BucketV2ReplicationConfiguration>>? replicationConfigurations;
  /// Specifies who should bear the cost of Amazon S3 data transfer.
  /// Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer.
  /// See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketRequestPaymentConfiguration` instead.
  final pulumi.Input<String>? requestPayer;
  /// Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketServerSideEncryptionConfiguration` instead.
  final pulumi.Input<List<BucketV2ServerSideEncryptionConfiguration>>? serverSideEncryptionConfigurations;
  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// The following arguments are deprecated, and will be removed in a future major version:
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  final pulumi.Input<List<BucketV2Versioning>>? versionings;
  /// (**Deprecated**) Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final pulumi.Input<String>? websiteDomain;
  /// (**Deprecated**) Website endpoint, if the bucket is configured with a website. If not, this will be an empty string. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final pulumi.Input<String>? websiteEndpoint;
  /// Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  final pulumi.Input<List<BucketV2Website>>? websites;

  /// Creates a new [BucketV2State].
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
  /// [loggings] Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See Logging below for details. The provider will only perform drift detection if a configuration value is provided.
  /// [objectLockConfiguration] Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See Object Lock Configuration below for details.
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  /// [policy] Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationConfigurations] Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See Replication Configuration below for details. The provider will only perform drift detection if a configuration value is provided.
  /// [requestPayer] Specifies who should bear the cost of Amazon S3 data transfer.
  /// [serverSideEncryptionConfigurations] Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// [tags] Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [versionings] Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  /// [websiteDomain] (**Deprecated**) Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  /// [websiteEndpoint] (**Deprecated**) Website endpoint, if the bucket is configured with a website. If not, this will be an empty string. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  /// [websites] Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  BucketV2State({
    pulumi.Output<String>? accelerationStatus,
    pulumi.Output<String>? acl,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? bucketDomainName,
    pulumi.Output<String>? bucketPrefix,
    pulumi.Output<String>? bucketRegion,
    pulumi.Output<String>? bucketRegionalDomainName,
    pulumi.Output<List<BucketV2CorsRule>>? corsRules,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<List<BucketV2Grant>>? grants,
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<List<BucketV2LifecycleRule>>? lifecycleRules,
    pulumi.Output<List<BucketV2Logging>>? loggings,
    pulumi.Output<BucketV2ObjectLockConfiguration>? objectLockConfiguration,
    pulumi.Output<bool>? objectLockEnabled,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<List<BucketV2ReplicationConfiguration>>? replicationConfigurations,
    pulumi.Output<String>? requestPayer,
    pulumi.Output<List<BucketV2ServerSideEncryptionConfiguration>>? serverSideEncryptionConfigurations,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<BucketV2Versioning>>? versionings,
    pulumi.Output<String>? websiteDomain,
    pulumi.Output<String>? websiteEndpoint,
    pulumi.Output<List<BucketV2Website>>? websites,
  }) :
      accelerationStatus = pulumi.Input.asOptionalInput<String>(accelerationStatus),
      acl = pulumi.Input.asOptionalInput<String>(acl),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      bucketDomainName = pulumi.Input.asOptionalInput<String>(bucketDomainName),
      bucketPrefix = pulumi.Input.asOptionalInput<String>(bucketPrefix),
      bucketRegion = pulumi.Input.asOptionalInput<String>(bucketRegion),
      bucketRegionalDomainName = pulumi.Input.asOptionalInput<String>(bucketRegionalDomainName),
      corsRules = pulumi.Input.asOptionalInput<List<BucketV2CorsRule>>(corsRules),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      grants = pulumi.Input.asOptionalInput<List<BucketV2Grant>>(grants),
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      lifecycleRules = pulumi.Input.asOptionalInput<List<BucketV2LifecycleRule>>(lifecycleRules),
      loggings = pulumi.Input.asOptionalInput<List<BucketV2Logging>>(loggings),
      objectLockConfiguration = pulumi.Input.asOptionalInput<BucketV2ObjectLockConfiguration>(objectLockConfiguration),
      objectLockEnabled = pulumi.Input.asOptionalInput<bool>(objectLockEnabled),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationConfigurations = pulumi.Input.asOptionalInput<List<BucketV2ReplicationConfiguration>>(replicationConfigurations),
      requestPayer = pulumi.Input.asOptionalInput<String>(requestPayer),
      serverSideEncryptionConfigurations = pulumi.Input.asOptionalInput<List<BucketV2ServerSideEncryptionConfiguration>>(serverSideEncryptionConfigurations),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      versionings = pulumi.Input.asOptionalInput<List<BucketV2Versioning>>(versionings),
      websiteDomain = pulumi.Input.asOptionalInput<String>(websiteDomain),
      websiteEndpoint = pulumi.Input.asOptionalInput<String>(websiteEndpoint),
      websites = pulumi.Input.asOptionalInput<List<BucketV2Website>>(websites);

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
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<BucketV2CorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<BucketV2CorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'grants': ?pulumi.Input.mapOptionalInputValue<List<BucketV2Grant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<BucketV2Grant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostedZoneId': ?hostedZoneId,
      'lifecycleRules': ?pulumi.Input.mapOptionalInputValue<List<BucketV2LifecycleRule>, List<Map<String, dynamic>>>(lifecycleRules, (value) => pulumi.Input.encodeList<BucketV2LifecycleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loggings': ?pulumi.Input.mapOptionalInputValue<List<BucketV2Logging>, List<Map<String, dynamic>>>(loggings, (value) => pulumi.Input.encodeList<BucketV2Logging, Map<String, dynamic>>(value, (value) => value.toMap())),
      'objectLockConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketV2ObjectLockConfiguration, Map<String, dynamic>>(objectLockConfiguration, (value) => value.toMap()),
      'objectLockEnabled': ?objectLockEnabled,
      'policy': ?policy,
      'region': ?region,
      'replicationConfigurations': ?pulumi.Input.mapOptionalInputValue<List<BucketV2ReplicationConfiguration>, List<Map<String, dynamic>>>(replicationConfigurations, (value) => pulumi.Input.encodeList<BucketV2ReplicationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestPayer': ?requestPayer,
      'serverSideEncryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<BucketV2ServerSideEncryptionConfiguration>, List<Map<String, dynamic>>>(serverSideEncryptionConfigurations, (value) => pulumi.Input.encodeList<BucketV2ServerSideEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'versionings': ?pulumi.Input.mapOptionalInputValue<List<BucketV2Versioning>, List<Map<String, dynamic>>>(versionings, (value) => pulumi.Input.encodeList<BucketV2Versioning, Map<String, dynamic>>(value, (value) => value.toMap())),
      'websiteDomain': ?websiteDomain,
      'websiteEndpoint': ?websiteEndpoint,
      'websites': ?pulumi.Input.mapOptionalInputValue<List<BucketV2Website>, List<Map<String, dynamic>>>(websites, (value) => pulumi.Input.encodeList<BucketV2Website, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketV2State.fromMap(Map<String, dynamic> map) {
    return BucketV2State(
      accelerationStatus: map['accelerationStatus'] == null ? null : pulumi.Output.create<String>(map['accelerationStatus'] as String),
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      bucketDomainName: map['bucketDomainName'] == null ? null : pulumi.Output.create<String>(map['bucketDomainName'] as String),
      bucketPrefix: map['bucketPrefix'] == null ? null : pulumi.Output.create<String>(map['bucketPrefix'] as String),
      bucketRegion: map['bucketRegion'] == null ? null : pulumi.Output.create<String>(map['bucketRegion'] as String),
      bucketRegionalDomainName: map['bucketRegionalDomainName'] == null ? null : pulumi.Output.create<String>(map['bucketRegionalDomainName'] as String),
      corsRules: map['corsRules'] == null ? null : pulumi.Output.create<List<BucketV2CorsRule>>(pulumi.Input.decodeList<BucketV2CorsRule>(map['corsRules'], (value) => BucketV2CorsRule.fromMap((value as Map).cast<String, dynamic>()))),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      grants: map['grants'] == null ? null : pulumi.Output.create<List<BucketV2Grant>>(pulumi.Input.decodeList<BucketV2Grant>(map['grants'], (value) => BucketV2Grant.fromMap((value as Map).cast<String, dynamic>()))),
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      lifecycleRules: map['lifecycleRules'] == null ? null : pulumi.Output.create<List<BucketV2LifecycleRule>>(pulumi.Input.decodeList<BucketV2LifecycleRule>(map['lifecycleRules'], (value) => BucketV2LifecycleRule.fromMap((value as Map).cast<String, dynamic>()))),
      loggings: map['loggings'] == null ? null : pulumi.Output.create<List<BucketV2Logging>>(pulumi.Input.decodeList<BucketV2Logging>(map['loggings'], (value) => BucketV2Logging.fromMap((value as Map).cast<String, dynamic>()))),
      objectLockConfiguration: map['objectLockConfiguration'] == null ? null : pulumi.Output.create<BucketV2ObjectLockConfiguration>(BucketV2ObjectLockConfiguration.fromMap((map['objectLockConfiguration'] as Map).cast<String, dynamic>())),
      objectLockEnabled: map['objectLockEnabled'] == null ? null : pulumi.Output.create<bool>(map['objectLockEnabled'] as bool),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationConfigurations: map['replicationConfigurations'] == null ? null : pulumi.Output.create<List<BucketV2ReplicationConfiguration>>(pulumi.Input.decodeList<BucketV2ReplicationConfiguration>(map['replicationConfigurations'], (value) => BucketV2ReplicationConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      requestPayer: map['requestPayer'] == null ? null : pulumi.Output.create<String>(map['requestPayer'] as String),
      serverSideEncryptionConfigurations: map['serverSideEncryptionConfigurations'] == null ? null : pulumi.Output.create<List<BucketV2ServerSideEncryptionConfiguration>>(pulumi.Input.decodeList<BucketV2ServerSideEncryptionConfiguration>(map['serverSideEncryptionConfigurations'], (value) => BucketV2ServerSideEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      versionings: map['versionings'] == null ? null : pulumi.Output.create<List<BucketV2Versioning>>(pulumi.Input.decodeList<BucketV2Versioning>(map['versionings'], (value) => BucketV2Versioning.fromMap((value as Map).cast<String, dynamic>()))),
      websiteDomain: map['websiteDomain'] == null ? null : pulumi.Output.create<String>(map['websiteDomain'] as String),
      websiteEndpoint: map['websiteEndpoint'] == null ? null : pulumi.Output.create<String>(map['websiteEndpoint'] as String),
      websites: map['websites'] == null ? null : pulumi.Output.create<List<BucketV2Website>>(pulumi.Input.decodeList<BucketV2Website>(map['websites'], (value) => BucketV2Website.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

