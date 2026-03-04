// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerate_configuration.dart';
import 'analytics_configuration.dart';
import 'bucket_encryption.dart';
import 'cors_configuration.dart';
import 'intelligent_tiering_configuration.dart';
import 'inventory_configuration.dart';
import 'lifecycle_configuration.dart';
import 'logging_configuration.dart';
import 'metrics_configuration.dart';
import 'notification_configuration.dart';
import 'object_lock_configuration.dart';
import 'ownership_controls.dart';
import 'public_access_block_configuration.dart';
import 'replication_configuration.dart';
import 'tag.dart';
import 'versioning_configuration.dart';
import 'website_configuration.dart';

/// Definition of awsS3Bucket
class AwsS3BucketProperties {
  /// Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see [Amazon S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html) in the *Amazon S3 User Guide*. Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see [Amazon S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<AccelerateConfiguration>? accelerateConfiguration;

  /// This is a legacy property, and it is not recommended for most use cases. A majority of modern use cases in Amazon S3 no longer require the use of ACLs, and we recommend that you keep ACLs disabled. For more information, see [Controlling object ownership](https://docs.aws.amazon.com//AmazonS3/latest/userguide/about-object-ownership.html) in the *Amazon S3 User Guide*.  A canned access control list (ACL) that grants predefined permissions to the bucket. For more information about canned ACLs, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) in the *Amazon S3 User Guide*.  S3 buckets are created with ACLs disabled by default. Therefore, unless you explicitly set the [AWS::S3::OwnershipControls](https://docs.aws.amazon.com//AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ownershipcontrols.html) property to enable ACLs, your resource will fail to deploy with any value other than Private. Use cases requiring ACLs are uncommon.  The majority of access control configurations can be successfully and more easily achieved with bucket policies. For more information, see [AWS::S3::BucketPolicy](https://docs.aws.amazon.com//AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html). For examples of common policy configurations, including S3 Server Access Logs buckets and more, see [Bucket policy examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<String>? accessControl;

  /// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
  final pulumi.Input<List<AnalyticsConfiguration>>? analyticsConfigurations;

  /// the Amazon Resource Name (ARN) of the specified bucket.
  final pulumi.Input<String>? arn;

  /// Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3), AWS KMS-managed keys (SSE-KMS), or dual-layer server-side encryption with KMS-managed keys (DSSE-KMS). For information about the Amazon S3 default encryption feature, see [Amazon S3 Default Encryption for S3 Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html) in the *Amazon S3 User Guide*. Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3), AWS KMS-managed keys (SSE-KMS), or dual-layer server-side encryption with KMS-managed keys (DSSE-KMS). For information about the Amazon S3 default encryption feature, see [Amazon S3 Default Encryption for S3 Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<BucketEncryption>? bucketEncryption;

  /// A name for the bucket. If you don't specify a name, AWS CloudFormation generates a unique ID and uses that ID for the bucket name. The bucket name must contain only lowercase letters, numbers, periods (.), and dashes (-) and must follow [Amazon S3 bucket restrictions and limitations](https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html). For more information, see [Rules for naming Amazon S3 buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html#bucketnamingrules) in the *Amazon S3 User Guide*.   If you specify a name, you can't perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you need to replace the resource, specify a new name.
  final pulumi.Input<String>? bucketName;

  /// Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the *Amazon S3 User Guide*. Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<CorsConfiguration>? corsConfiguration;

  /// Property domainName
  final pulumi.Input<String>? domainName;

  /// Property dualStackDomainName
  final pulumi.Input<String>? dualStackDomainName;

  /// Defines how Amazon S3 handles Intelligent-Tiering storage.
  final pulumi.Input<List<IntelligentTieringConfiguration>>?
  intelligentTieringConfigurations;

  /// Specifies the inventory configuration for an Amazon S3 bucket. For more information, see [GET Bucket inventory](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html) in the *Amazon S3 API Reference*.
  final pulumi.Input<List<InventoryConfiguration>>? inventoryConfigurations;

  /// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the *Amazon S3 User Guide*. Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<LifecycleConfiguration>? lifecycleConfiguration;

  /// Settings that define where logs are stored. Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For examples and more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the *Amazon S3 API Reference*.  To successfully complete the ``AWS::S3::Bucket LoggingConfiguration`` request, you must have ``s3:PutObject`` and ``s3:PutObjectAcl`` in your IAM permissions.
  final pulumi.Input<LoggingConfiguration>? loggingConfiguration;

  /// Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration. If you don't include the elements you want to keep, they are erased. For more information, see [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html).
  final pulumi.Input<List<MetricsConfiguration>>? metricsConfigurations;

  /// Configuration that defines how Amazon S3 handles bucket notifications. Describes the notification configuration for an Amazon S3 bucket.  If you create the target resource and related permissions in the same template, you might have a circular dependency. For example, you might use the ``AWS::Lambda::Permission`` resource to grant the bucket permission to invoke an AWS Lambda function. However, AWS CloudFormation can't create the bucket until the bucket has permission to invoke the function (AWS CloudFormation checks whether the bucket can invoke the function). If you're using Refs to pass the bucket name, this leads to a circular dependency. To avoid this dependency, you can create all resources without specifying the notification configuration. Then, update the stack with a notification configuration. For more information on permissions, see [AWS::Lambda::Permission](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html) and [Granting Permissions to Publish Event Notification Messages to a Destination](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#grant-destinations-permissions-to-s3).
  final pulumi.Input<NotificationConfiguration>? notificationConfiguration;

  /// This operation is not supported by directory buckets.  Places an Object Lock configuration on the specified bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket. For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).    +  The ``DefaultRetention`` settings require both a mode and a period.  +  The ``DefaultRetention`` period can be either ``Days`` or ``Years`` but you must select one. You cannot specify ``Days`` and ``Years`` at the same time.  +  You can enable Object Lock for new or existing buckets. For more information, see [Configuring Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-configure.html). Places an Object Lock configuration on the specified bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket. For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  final pulumi.Input<ObjectLockConfiguration>? objectLockConfiguration;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Enable ``ObjectLockEnabled`` when you apply ``ObjectLockConfiguration`` to a bucket.
  final pulumi.Input<bool>? objectLockEnabled;

  /// Configuration that defines how Amazon S3 handles Object Ownership rules. Specifies the container element for Object Ownership rules. S3 Object Ownership is an Amazon S3 bucket-level setting that you can use to disable access control lists (ACLs) and take ownership of every object in your bucket, simplifying access management for data stored in Amazon S3. For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<OwnershipControls>? ownershipControls;

  /// Configuration that defines how Amazon S3 handles public access. The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see [The Meaning of 'Public'](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status) in the *Amazon S3 User Guide*.
  final pulumi.Input<PublicAccessBlockConfiguration>?
  publicAccessBlockConfiguration;

  /// Property regionalDomainName
  final pulumi.Input<String>? regionalDomainName;

  /// Configuration for replicating objects in an S3 bucket. To enable replication, you must also enable versioning by using the ``VersioningConfiguration`` property. Amazon S3 can store replicated objects in a single destination bucket or multiple destination buckets. The destination bucket or buckets must already exist. A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB. The latest version of the replication configuration XML is V2. For more information about XML V2 replication configurations, see [Replication configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication-add-config.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<ReplicationConfiguration>? replicationConfiguration;

  /// An arbitrary set of tags (key-value pairs) for this S3 bucket.
  final pulumi.Input<List<Tag>>? tags;

  /// Enables multiple versions of all objects in this bucket. You might enable versioning to prevent objects from being deleted or overwritten by mistake or to archive objects so that you can retrieve previous versions of them. Describes the versioning state of an Amazon S3 bucket. For more information, see [PUT Bucket versioning](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html) in the *Amazon S3 API Reference*.
  final pulumi.Input<VersioningConfiguration>? versioningConfiguration;

  /// Information used to configure the bucket as a static website. For more information, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html). Specifies website configuration parameters for an Amazon S3 bucket.
  final pulumi.Input<WebsiteConfiguration>? websiteConfiguration;

  /// Property websiteURL
  final pulumi.Input<String>? websiteURL;

  /// Creates a new [AwsS3BucketProperties].
  /// [accelerateConfiguration] Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see [Amazon S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html) in the *Amazon S3 User Guide*. Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see [Amazon S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html) in the *Amazon S3 User Guide*.
  /// [accessControl] This is a legacy property, and it is not recommended for most use cases. A majority of modern use cases in Amazon S3 no longer require the use of ACLs, and we recommend that you keep ACLs disabled. For more information, see [Controlling object ownership](https://docs.aws.amazon.com//AmazonS3/latest/userguide/about-object-ownership.html) in the *Amazon S3 User Guide*.  A canned access control list (ACL) that grants predefined permissions to the bucket. For more information about canned ACLs, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) in the *Amazon S3 User Guide*.  S3 buckets are created with ACLs disabled by default. Therefore, unless you explicitly set the [AWS::S3::OwnershipControls](https://docs.aws.amazon.com//AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ownershipcontrols.html) property to enable ACLs, your resource will fail to deploy with any value other than Private. Use cases requiring ACLs are uncommon.  The majority of access control configurations can be successfully and more easily achieved with bucket policies. For more information, see [AWS::S3::BucketPolicy](https://docs.aws.amazon.com//AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html). For examples of common policy configurations, including S3 Server Access Logs buckets and more, see [Bucket policy examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html) in the *Amazon S3 User Guide*.
  /// [analyticsConfigurations] Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
  /// [arn] the Amazon Resource Name (ARN) of the specified bucket.
  /// [bucketEncryption] Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3), AWS KMS-managed keys (SSE-KMS), or dual-layer server-side encryption with KMS-managed keys (DSSE-KMS). For information about the Amazon S3 default encryption feature, see [Amazon S3 Default Encryption for S3 Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html) in the *Amazon S3 User Guide*. Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3), AWS KMS-managed keys (SSE-KMS), or dual-layer server-side encryption with KMS-managed keys (DSSE-KMS). For information about the Amazon S3 default encryption feature, see [Amazon S3 Default Encryption for S3 Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html) in the *Amazon S3 User Guide*.
  /// [bucketName] A name for the bucket. If you don't specify a name, AWS CloudFormation generates a unique ID and uses that ID for the bucket name. The bucket name must contain only lowercase letters, numbers, periods (.), and dashes (-) and must follow [Amazon S3 bucket restrictions and limitations](https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html). For more information, see [Rules for naming Amazon S3 buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html#bucketnamingrules) in the *Amazon S3 User Guide*.   If you specify a name, you can't perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you need to replace the resource, specify a new name.
  /// [corsConfiguration] Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the *Amazon S3 User Guide*. Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the *Amazon S3 User Guide*.
  /// [domainName] Property domainName
  /// [dualStackDomainName] Property dualStackDomainName
  /// [intelligentTieringConfigurations] Defines how Amazon S3 handles Intelligent-Tiering storage.
  /// [inventoryConfigurations] Specifies the inventory configuration for an Amazon S3 bucket. For more information, see [GET Bucket inventory](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html) in the *Amazon S3 API Reference*.
  /// [lifecycleConfiguration] Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the *Amazon S3 User Guide*. Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the *Amazon S3 User Guide*.
  /// [loggingConfiguration] Settings that define where logs are stored. Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For examples and more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the *Amazon S3 API Reference*.  To successfully complete the ``AWS::S3::Bucket LoggingConfiguration`` request, you must have ``s3:PutObject`` and ``s3:PutObjectAcl`` in your IAM permissions.
  /// [metricsConfigurations] Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration. If you don't include the elements you want to keep, they are erased. For more information, see [PutBucketMetricsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html).
  /// [notificationConfiguration] Configuration that defines how Amazon S3 handles bucket notifications. Describes the notification configuration for an Amazon S3 bucket.  If you create the target resource and related permissions in the same template, you might have a circular dependency. For example, you might use the ``AWS::Lambda::Permission`` resource to grant the bucket permission to invoke an AWS Lambda function. However, AWS CloudFormation can't create the bucket until the bucket has permission to invoke the function (AWS CloudFormation checks whether the bucket can invoke the function). If you're using Refs to pass the bucket name, this leads to a circular dependency. To avoid this dependency, you can create all resources without specifying the notification configuration. Then, update the stack with a notification configuration. For more information on permissions, see [AWS::Lambda::Permission](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html) and [Granting Permissions to Publish Event Notification Messages to a Destination](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#grant-destinations-permissions-to-s3).
  /// [objectLockConfiguration] This operation is not supported by directory buckets.  Places an Object Lock configuration on the specified bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket. For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).    +  The ``DefaultRetention`` settings require both a mode and a period.  +  The ``DefaultRetention`` period can be either ``Days`` or ``Years`` but you must select one. You cannot specify ``Days`` and ``Years`` at the same time.  +  You can enable Object Lock for new or existing buckets. For more information, see [Configuring Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-configure.html). Places an Object Lock configuration on the specified bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket. For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Enable ``ObjectLockEnabled`` when you apply ``ObjectLockConfiguration`` to a bucket.
  /// [ownershipControls] Configuration that defines how Amazon S3 handles Object Ownership rules. Specifies the container element for Object Ownership rules. S3 Object Ownership is an Amazon S3 bucket-level setting that you can use to disable access control lists (ACLs) and take ownership of every object in your bucket, simplifying access management for data stored in Amazon S3. For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the *Amazon S3 User Guide*.
  /// [publicAccessBlockConfiguration] Configuration that defines how Amazon S3 handles public access. The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see [The Meaning of 'Public'](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status) in the *Amazon S3 User Guide*.
  /// [regionalDomainName] Property regionalDomainName
  /// [replicationConfiguration] Configuration for replicating objects in an S3 bucket. To enable replication, you must also enable versioning by using the ``VersioningConfiguration`` property. Amazon S3 can store replicated objects in a single destination bucket or multiple destination buckets. The destination bucket or buckets must already exist. A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB. The latest version of the replication configuration XML is V2. For more information about XML V2 replication configurations, see [Replication configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication-add-config.html) in the *Amazon S3 User Guide*.
  /// [tags] An arbitrary set of tags (key-value pairs) for this S3 bucket.
  /// [versioningConfiguration] Enables multiple versions of all objects in this bucket. You might enable versioning to prevent objects from being deleted or overwritten by mistake or to archive objects so that you can retrieve previous versions of them. Describes the versioning state of an Amazon S3 bucket. For more information, see [PUT Bucket versioning](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html) in the *Amazon S3 API Reference*.
  /// [websiteConfiguration] Information used to configure the bucket as a static website. For more information, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html). Specifies website configuration parameters for an Amazon S3 bucket.
  /// [websiteURL] Property websiteURL
  AwsS3BucketProperties({
    this.accelerateConfiguration,
    this.accessControl,
    this.analyticsConfigurations,
    this.arn,
    this.bucketEncryption,
    this.bucketName,
    this.corsConfiguration,
    this.domainName,
    this.dualStackDomainName,
    this.intelligentTieringConfigurations,
    this.inventoryConfigurations,
    this.lifecycleConfiguration,
    this.loggingConfiguration,
    this.metricsConfigurations,
    this.notificationConfiguration,
    this.objectLockConfiguration,
    this.objectLockEnabled,
    this.ownershipControls,
    this.publicAccessBlockConfiguration,
    this.regionalDomainName,
    this.replicationConfiguration,
    this.tags,
    this.versioningConfiguration,
    this.websiteConfiguration,
    this.websiteURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AccelerateConfiguration,
            Map<String, dynamic>
          >(accelerateConfiguration, (value) => value.toMap()),
      'accessControl': ?accessControl,
      'analyticsConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<AnalyticsConfiguration>,
            List<Map<String, dynamic>>
          >(
            analyticsConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  AnalyticsConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'arn': ?arn,
      'bucketEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            BucketEncryption,
            Map<String, dynamic>
          >(bucketEncryption, (value) => value.toMap()),
      'bucketName': ?bucketName,
      'corsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CorsConfiguration,
            Map<String, dynamic>
          >(corsConfiguration, (value) => value.toMap()),
      'domainName': ?domainName,
      'dualStackDomainName': ?dualStackDomainName,
      'intelligentTieringConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<IntelligentTieringConfiguration>,
            List<Map<String, dynamic>>
          >(
            intelligentTieringConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  IntelligentTieringConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'inventoryConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<InventoryConfiguration>,
            List<Map<String, dynamic>>
          >(
            inventoryConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  InventoryConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lifecycleConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            LifecycleConfiguration,
            Map<String, dynamic>
          >(lifecycleConfiguration, (value) => value.toMap()),
      'loggingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            LoggingConfiguration,
            Map<String, dynamic>
          >(loggingConfiguration, (value) => value.toMap()),
      'metricsConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<MetricsConfiguration>,
            List<Map<String, dynamic>>
          >(
            metricsConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  MetricsConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'notificationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            NotificationConfiguration,
            Map<String, dynamic>
          >(notificationConfiguration, (value) => value.toMap()),
      'objectLockConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectLockConfiguration,
            Map<String, dynamic>
          >(objectLockConfiguration, (value) => value.toMap()),
      'objectLockEnabled': ?objectLockEnabled,
      'ownershipControls':
          ?pulumi.Input.mapOptionalInputValue<
            OwnershipControls,
            Map<String, dynamic>
          >(ownershipControls, (value) => value.toMap()),
      'publicAccessBlockConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            PublicAccessBlockConfiguration,
            Map<String, dynamic>
          >(publicAccessBlockConfiguration, (value) => value.toMap()),
      'regionalDomainName': ?regionalDomainName,
      'replicationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ReplicationConfiguration,
            Map<String, dynamic>
          >(replicationConfiguration, (value) => value.toMap()),
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<Tag>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'versioningConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VersioningConfiguration,
            Map<String, dynamic>
          >(versioningConfiguration, (value) => value.toMap()),
      'websiteConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            WebsiteConfiguration,
            Map<String, dynamic>
          >(websiteConfiguration, (value) => value.toMap()),
      'websiteURL': ?websiteURL,
    };
  }

  factory AwsS3BucketProperties.fromMap(Map<String, dynamic> map) {
    return AwsS3BucketProperties(
      accelerateConfiguration: (() {
        final guardedValue = map['accelerateConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccelerateConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      accessControl: (() {
        final guardedValue = map['accessControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      analyticsConfigurations: (() {
        final guardedValue = map['analyticsConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AnalyticsConfiguration>(
            guardedValue,
            (value) => AnalyticsConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bucketEncryption: (() {
        final guardedValue = map['bucketEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      bucketName: (() {
        final guardedValue = map['bucketName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      corsConfiguration: (() {
        final guardedValue = map['corsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CorsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dualStackDomainName: (() {
        final guardedValue = map['dualStackDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intelligentTieringConfigurations: (() {
        final guardedValue = map['intelligentTieringConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IntelligentTieringConfiguration>(
            guardedValue,
            (value) => IntelligentTieringConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      inventoryConfigurations: (() {
        final guardedValue = map['inventoryConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InventoryConfiguration>(
            guardedValue,
            (value) => InventoryConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lifecycleConfiguration: (() {
        final guardedValue = map['lifecycleConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LifecycleConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      loggingConfiguration: (() {
        final guardedValue = map['loggingConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoggingConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      metricsConfigurations: (() {
        final guardedValue = map['metricsConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MetricsConfiguration>(
            guardedValue,
            (value) => MetricsConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      notificationConfiguration: (() {
        final guardedValue = map['notificationConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NotificationConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      objectLockConfiguration: (() {
        final guardedValue = map['objectLockConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectLockConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      objectLockEnabled: (() {
        final guardedValue = map['objectLockEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ownershipControls: (() {
        final guardedValue = map['ownershipControls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OwnershipControls.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publicAccessBlockConfiguration: (() {
        final guardedValue = map['publicAccessBlockConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PublicAccessBlockConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      regionalDomainName: (() {
        final guardedValue = map['regionalDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationConfiguration: (() {
        final guardedValue = map['replicationConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReplicationConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Tag>(
            guardedValue,
            (value) => Tag.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      versioningConfiguration: (() {
        final guardedValue = map['versioningConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VersioningConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      websiteConfiguration: (() {
        final guardedValue = map['websiteConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebsiteConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      websiteURL: (() {
        final guardedValue = map['websiteURL'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
