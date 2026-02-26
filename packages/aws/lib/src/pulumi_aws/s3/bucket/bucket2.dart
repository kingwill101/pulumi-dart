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
import 'bucket_args2.dart';

/// Provides a S3 bucket resource.
///
/// > This resource provides functionality for managing S3 general purpose buckets in an AWS Partition. To manage Amazon S3 Express directory buckets, use the <span pulumi-lang-nodejs="`awsDirectoryBucket`" pulumi-lang-dotnet="`AwsDirectoryBucket`" pulumi-lang-go="`awsDirectoryBucket`" pulumi-lang-python="`aws_directory_bucket`" pulumi-lang-yaml="`awsDirectoryBucket`" pulumi-lang-java="`awsDirectoryBucket`">`aws_directory_bucket`</span> resource. To manage [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html), use the <span pulumi-lang-nodejs="`aws.s3control.Bucket`" pulumi-lang-dotnet="`aws.s3control.Bucket`" pulumi-lang-go="`s3control.Bucket`" pulumi-lang-python="`s3control.Bucket`" pulumi-lang-yaml="`aws.s3control.Bucket`" pulumi-lang-java="`aws.s3control.Bucket`">`aws.s3control.Bucket`</span> resource.
///
/// > Object Lock can be enabled by using the <span pulumi-lang-nodejs="`objectLockEnable`" pulumi-lang-dotnet="`ObjectLockEnable`" pulumi-lang-go="`objectLockEnable`" pulumi-lang-python="`object_lock_enable`" pulumi-lang-yaml="`objectLockEnable`" pulumi-lang-java="`objectLockEnable`">`object_lock_enable`</span> attribute or by using the <span pulumi-lang-nodejs="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-go="`s3.BucketObjectLockConfiguration`" pulumi-lang-python="`s3.BucketObjectLockConfiguration`" pulumi-lang-yaml="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-java="`aws.s3.BucketObjectLockConfiguration`">`aws.s3.BucketObjectLockConfiguration`</span> resource. Please note, that by using the resource, Object Lock can be enabled/disabled without destroying and recreating the bucket.
///
/// > To support ABAC (Attribute Based Access Control) in general purpose buckets, this resource will now attempt to send tags in the create request and use the S3 Control tagging APIs [`TagResource`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_TagResource.html), [`UntagResource`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UntagResource.html), and [`ListTagsForResource`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListTagsForResource.html) for read and update operations. The calling principal must have the corresponding `s3:TagResource`, `s3:UntagResource`, and `s3:ListTagsForResource` [IAM permissions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-actions-as-permissions). If the principal lacks the appropriate permissions, the provider will fall back to tagging after creation and using the S3 tagging APIs [`PutBucketTagging`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html), [`DeleteBucketTagging`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html), and [`GetBucketTagging`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html) instead. With ABAC enabled, tag modifications may fail with the fall back behavior. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/buckets-tagging-enable-abac.html) for additional details on enabling ABAC in general purpose buckets.
///
/// ## Example Usage
///
/// ### Private Bucket With Tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {
/// bucket: "my-tf-test-bucket",
/// tags: {
/// Name: "My bucket",
/// Environment: "Dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example",
/// bucket="my-tf-test-bucket",
/// tags={
/// "Name": "My bucket",
/// "Environment": "Dev",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "my-tf-test-bucket",
/// Tags =
/// {
/// { "Name", "My bucket" },
/// { "Environment", "Dev" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("my-tf-test-bucket"),
/// Tags: pulumi.StringMap{
/// "Name":        pulumi.String("My bucket"),
/// "Environment": pulumi.String("Dev"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("my-tf-test-bucket")
/// .tags(Map.ofEntries(
/// Map.entry("Name", "My bucket"),
/// Map.entry("Environment", "Dev")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: my-tf-test-bucket
/// tags:
/// Name: My bucket
/// Environment: Dev
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> (String) Name of the S3 bucket.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 bucket using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucket:Bucket example bucket-name
/// ```
class Bucket2 extends CustomResource {
  /// Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketAccelerateConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketAccelerateConfiguration`" pulumi-lang-go="`s3.BucketAccelerateConfiguration`" pulumi-lang-python="`s3.BucketAccelerateConfiguration`" pulumi-lang-yaml="`aws.s3.BucketAccelerateConfiguration`" pulumi-lang-java="`aws.s3.BucketAccelerateConfiguration`">`aws.s3.BucketAccelerateConfiguration`</span> instead.
  late final Output<String> accelerationStatus;

  /// The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.  Conflicts with <span pulumi-lang-nodejs="`grant`" pulumi-lang-dotnet="`Grant`" pulumi-lang-go="`grant`" pulumi-lang-python="`grant`" pulumi-lang-yaml="`grant`" pulumi-lang-java="`grant`">`grant`</span>. The provider will only perform drift detection if a configuration value is provided. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketAcl`" pulumi-lang-dotnet="`aws.s3.BucketAcl`" pulumi-lang-go="`s3.BucketAcl`" pulumi-lang-python="`s3.BucketAcl`" pulumi-lang-yaml="`aws.s3.BucketAcl`" pulumi-lang-java="`aws.s3.BucketAcl`">`aws.s3.BucketAcl`</span> instead.
  late final Output<String> acl;

  /// ARN of the bucket. Will be of format `arn:aws:s3:::bucketname`.
  late final Output<String> arn;

  /// Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `<span pulumi-lang-nodejs="[bucketName]" pulumi-lang-dotnet="[BucketName]" pulumi-lang-go="[bucketName]" pulumi-lang-python="[bucket_name]" pulumi-lang-yaml="[bucketName]" pulumi-lang-java="[bucketName]">[bucket_name]</span>--[azid]--x-s3`. Use the <span pulumi-lang-nodejs="`aws.s3.DirectoryBucket`" pulumi-lang-dotnet="`aws.s3.DirectoryBucket`" pulumi-lang-go="`s3.DirectoryBucket`" pulumi-lang-python="`s3.DirectoryBucket`" pulumi-lang-yaml="`aws.s3.DirectoryBucket`" pulumi-lang-java="`aws.s3.DirectoryBucket`">`aws.s3.DirectoryBucket`</span> resource to manage S3 Express buckets.
  late final Output<String> bucket;

  /// Bucket domain name. Will be of format `bucketname.s3.amazonaws.com`.
  late final Output<String> bucketDomainName;

  /// Creates a unique bucket name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  late final Output<String> bucketPrefix;

  /// AWS region this bucket resides in.
  late final Output<String> bucketRegion;

  /// The bucket region-specific domain name. The bucket domain name including the region name. Please refer to the [S3 endpoints reference](https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_region) for format. Note: AWS CloudFront allows specifying an S3 region-specific endpoint when creating an S3 origin. This will prevent redirect issues from CloudFront to the S3 Origin URL. For more information, see the [Virtual Hosted-Style Requests for Other Regions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#deprecated-global-endpoint) section in the AWS S3 User Guide.
  late final Output<String> bucketRegionalDomainName;

  /// Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See CORS rule below for details. This provider will only perform drift detection if a configuration value is provided. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketCorsConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketCorsConfiguration`" pulumi-lang-go="`s3.BucketCorsConfiguration`" pulumi-lang-python="`s3.BucketCorsConfiguration`" pulumi-lang-yaml="`aws.s3.BucketCorsConfiguration`" pulumi-lang-java="`aws.s3.BucketCorsConfiguration`">`aws.s3.BucketCorsConfiguration`</span> instead.
  late final Output<List<BucketCorsRule>> corsRules;

  /// Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final Output<bool?> forceDestroy;

  /// An [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See Grant below for details. Conflicts with <span pulumi-lang-nodejs="`acl`" pulumi-lang-dotnet="`Acl`" pulumi-lang-go="`acl`" pulumi-lang-python="`acl`" pulumi-lang-yaml="`acl`" pulumi-lang-java="`acl`">`acl`</span>. The provider will only perform drift detection if a configuration value is provided. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketAcl`" pulumi-lang-dotnet="`aws.s3.BucketAcl`" pulumi-lang-go="`s3.BucketAcl`" pulumi-lang-python="`s3.BucketAcl`" pulumi-lang-yaml="`aws.s3.BucketAcl`" pulumi-lang-java="`aws.s3.BucketAcl`">`aws.s3.BucketAcl`</span> instead.
  late final Output<List<BucketGrant>> grants;

  /// [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  late final Output<String> hostedZoneId;

  /// Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See Lifecycle Rule below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketLifecycleConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketLifecycleConfiguration`" pulumi-lang-go="`s3.BucketLifecycleConfiguration`" pulumi-lang-python="`s3.BucketLifecycleConfiguration`" pulumi-lang-yaml="`aws.s3.BucketLifecycleConfiguration`" pulumi-lang-java="`aws.s3.BucketLifecycleConfiguration`">`aws.s3.BucketLifecycleConfiguration`</span> instead.
  late final Output<List<BucketLifecycleRule>> lifecycleRules;

  /// Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See Logging below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketLogging`" pulumi-lang-dotnet="`aws.s3.BucketLogging`" pulumi-lang-go="`s3.BucketLogging`" pulumi-lang-python="`s3.BucketLogging`" pulumi-lang-yaml="`aws.s3.BucketLogging`" pulumi-lang-java="`aws.s3.BucketLogging`">`aws.s3.BucketLogging`</span> instead.
  late final Output<BucketLogging> logging;

  /// Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See Object Lock Configuration below for details.
  /// The provider wil only perform drift detection if a configuration value is provided.
  /// Use the <span pulumi-lang-nodejs="`objectLockEnabled`" pulumi-lang-dotnet="`ObjectLockEnabled`" pulumi-lang-go="`objectLockEnabled`" pulumi-lang-python="`object_lock_enabled`" pulumi-lang-yaml="`objectLockEnabled`" pulumi-lang-java="`objectLockEnabled`">`object_lock_enabled`</span> parameter and the resource <span pulumi-lang-nodejs="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-go="`s3.BucketObjectLockConfiguration`" pulumi-lang-python="`s3.BucketObjectLockConfiguration`" pulumi-lang-yaml="`aws.s3.BucketObjectLockConfiguration`" pulumi-lang-java="`aws.s3.BucketObjectLockConfiguration`">`aws.s3.BucketObjectLockConfiguration`</span> instead.
  late final Output<BucketObjectLockConfiguration> objectLockConfiguration;

  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This argument is not supported in all regions or partitions.
  late final Output<bool> objectLockEnabled;

  /// Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketPolicy`" pulumi-lang-dotnet="`aws.s3.BucketPolicy`" pulumi-lang-go="`s3.BucketPolicy`" pulumi-lang-python="`s3.BucketPolicy`" pulumi-lang-yaml="`aws.s3.BucketPolicy`" pulumi-lang-java="`aws.s3.BucketPolicy`">`aws.s3.BucketPolicy`</span> instead.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See Replication Configuration below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketReplicationConfig`" pulumi-lang-dotnet="`aws.s3.BucketReplicationConfig`" pulumi-lang-go="`s3.BucketReplicationConfig`" pulumi-lang-python="`s3.BucketReplicationConfig`" pulumi-lang-yaml="`aws.s3.BucketReplicationConfig`" pulumi-lang-java="`aws.s3.BucketReplicationConfig`">`aws.s3.BucketReplicationConfig`</span> instead.
  late final Output<BucketReplicationConfiguration> replicationConfiguration;

  /// Specifies who should bear the cost of Amazon S3 data transfer.
  /// Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer.
  /// See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-go="`s3.BucketRequestPaymentConfiguration`" pulumi-lang-python="`s3.BucketRequestPaymentConfiguration`" pulumi-lang-yaml="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-java="`aws.s3.BucketRequestPaymentConfiguration`">`aws.s3.BucketRequestPaymentConfiguration`</span> instead.
  late final Output<String> requestPayer;

  /// Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-go="`s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-python="`s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-yaml="`aws.s3.BucketServerSideEncryptionConfiguration`" pulumi-lang-java="`aws.s3.BucketServerSideEncryptionConfiguration`">`aws.s3.BucketServerSideEncryptionConfiguration`</span> instead.
  late final Output<BucketServerSideEncryptionConfiguration>
      serverSideEncryptionConfiguration;

  /// Map of tags to assign to the bucket. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// The following arguments are deprecated, and will be removed in a future major version:
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketVersioning`" pulumi-lang-dotnet="`aws.s3.BucketVersioning`" pulumi-lang-go="`s3.BucketVersioning`" pulumi-lang-python="`s3.BucketVersioning`" pulumi-lang-yaml="`aws.s3.BucketVersioning`" pulumi-lang-java="`aws.s3.BucketVersioning`">`aws.s3.BucketVersioning`</span> instead.
  late final Output<BucketVersioning> versioning;

  /// Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-go="`s3.BucketWebsiteConfiguration`" pulumi-lang-python="`s3.BucketWebsiteConfiguration`" pulumi-lang-yaml="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-java="`aws.s3.BucketWebsiteConfiguration`">`aws.s3.BucketWebsiteConfiguration`</span> instead.
  late final Output<BucketWebsite> website;

  /// (**Deprecated**) Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-go="`s3.BucketWebsiteConfiguration`" pulumi-lang-python="`s3.BucketWebsiteConfiguration`" pulumi-lang-yaml="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-java="`aws.s3.BucketWebsiteConfiguration`">`aws.s3.BucketWebsiteConfiguration`</span> instead.
  late final Output<String> websiteDomain;

  /// (**Deprecated**) Website endpoint, if the bucket is configured with a website. If not, this will be an empty string. Use the resource <span pulumi-lang-nodejs="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-go="`s3.BucketWebsiteConfiguration`" pulumi-lang-python="`s3.BucketWebsiteConfiguration`" pulumi-lang-yaml="`aws.s3.BucketWebsiteConfiguration`" pulumi-lang-java="`aws.s3.BucketWebsiteConfiguration`">`aws.s3.BucketWebsiteConfiguration`</span> instead.
  late final Output<String> websiteEndpoint;

  Bucket2(
    String name, {
    BucketArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucket:Bucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accelerationStatus = registerOutput<String>('accelerationStatus');
    this.acl = registerOutput<String>('acl');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.bucketDomainName = registerOutput<String>('bucketDomainName');
    this.bucketPrefix = registerOutput<String>('bucketPrefix');
    this.bucketRegion = registerOutput<String>('bucketRegion');
    this.bucketRegionalDomainName =
        registerOutput<String>('bucketRegionalDomainName');
    this.corsRules = registerOutput<List<BucketCorsRule>>('corsRules');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.grants = registerOutput<List<BucketGrant>>('grants');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.lifecycleRules =
        registerOutput<List<BucketLifecycleRule>>('lifecycleRules');
    this.logging = registerOutput<BucketLogging>('logging');
    this.objectLockConfiguration =
        registerOutput<BucketObjectLockConfiguration>(
            'objectLockConfiguration');
    this.objectLockEnabled = registerOutput<bool>('objectLockEnabled');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.replicationConfiguration =
        registerOutput<BucketReplicationConfiguration>(
            'replicationConfiguration');
    this.requestPayer = registerOutput<String>('requestPayer');
    this.serverSideEncryptionConfiguration =
        registerOutput<BucketServerSideEncryptionConfiguration>(
            'serverSideEncryptionConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versioning = registerOutput<BucketVersioning>('versioning');
    this.website = registerOutput<BucketWebsite>('website');
    this.websiteDomain = registerOutput<String>('websiteDomain');
    this.websiteEndpoint = registerOutput<String>('websiteEndpoint');
  }
}
