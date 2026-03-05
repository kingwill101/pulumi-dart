import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_args.dart';
import 'bucket_v2_object_lock_configuration.dart';
import 'bucket_v2_state.dart';

/// Provides a S3 bucket resource.
///
/// &gt; This resource provides functionality for managing S3 general purpose buckets in an AWS Partition. To manage Amazon S3 Express directory buckets, use the `aws_directory_bucket` resource. To manage [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html), use the `aws.s3control.Bucket` resource.
///
/// &gt; Object Lock can be enabled by using the `object_lock_enable` attribute or by using the `aws.s3.BucketObjectLockConfiguration` resource. Please note, that by using the resource, Object Lock can be enabled/disabled without destroying and recreating the bucket.
///
/// &gt; To support ABAC (Attribute Based Access Control) in general purpose buckets, this resource will now attempt to send tags in the create request and use the S3 Control tagging APIs [`TagResource`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_TagResource.html), [`UntagResource`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UntagResource.html), and [`ListTagsForResource`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListTagsForResource.html) for read and update operations. The calling principal must have the corresponding `s3:TagResource`, `s3:UntagResource`, and `s3:ListTagsForResource` [IAM permissions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-actions-as-permissions). If the principal lacks the appropriate permissions, the provider will fall back to tagging after creation and using the S3 tagging APIs [`PutBucketTagging`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html), [`DeleteBucketTagging`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html), and [`GetBucketTagging`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html) instead. With ABAC enabled, tag modifications may fail with the fall back behavior. See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/buckets-tagging-enable-abac.html) for additional details on enabling ABAC in general purpose buckets.
///
/// ## Example Usage
///
/// ### Private Bucket With Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {
///     bucket: "my-tf-test-bucket",
///     tags: {
///         Name: "My bucket",
///         Environment: "Dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example",
///     bucket="my-tf-test-bucket",
///     tags={
///         "Name": "My bucket",
///         "Environment": "Dev",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-tf-test-bucket",
///         Tags =
///         {
///             { "Name", "My bucket" },
///             { "Environment", "Dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-test-bucket"),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("My bucket"),
/// 				"Environment": pulumi.String("Dev"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("my-tf-test-bucket")
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "My bucket"),
///                 Map.entry("Environment", "Dev")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-test-bucket
///       tags:
///         Name: My bucket
///         Environment: Dev
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) Name of the S3 bucket.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 bucket using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketV2:BucketV2 example bucket-name
/// ```
class BucketV2 extends pulumi.CustomResource {
  /// Sets the accelerate configuration of an existing bucket. Can be `Enabled` or `Suspended`. Cannot be used in `cn-north-1` or `us-gov-west-1`. This provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketAccelerateConfiguration` instead.
  late final pulumi.Output<String> accelerationStatus;
  /// The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, and `log-delivery-write`. Defaults to `private`.  Conflicts with `grant`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  late final pulumi.Output<String> acl;
  /// ARN of the bucket. Will be of format `arn:aws:s3:::bucketname`.
  late final pulumi.Output<String> arn;
  /// Name of the bucket. If omitted, the provider will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html). The name must not be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.DirectoryBucket` resource to manage S3 Express buckets.
  late final pulumi.Output<String> bucket;
  /// Bucket domain name. Will be of format `bucketname.s3.amazonaws.com`.
  late final pulumi.Output<String> bucketDomainName;
  /// Creates a unique bucket name beginning with the specified prefix. Conflicts with `bucket`. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules [may be found here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html).
  late final pulumi.Output<String> bucketPrefix;
  /// AWS region this bucket resides in.
  late final pulumi.Output<String> bucketRegion;
  /// The bucket region-specific domain name. The bucket domain name including the region name. Please refer to the [S3 endpoints reference](https://docs.aws.amazon.com/general/latest/gr/s3.html#s3_region) for format. Note: AWS CloudFront allows specifying an S3 region-specific endpoint when creating an S3 origin. This will prevent redirect issues from CloudFront to the S3 Origin URL. For more information, see the [Virtual Hosted-Style Requests for Other Regions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#deprecated-global-endpoint) section in the AWS S3 User Guide.
  late final pulumi.Output<String> bucketRegionalDomainName;
  /// Rule of [Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html). See CORS rule below for details. This provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketCorsConfiguration` instead.
  late final pulumi.Output<List<Map<String, dynamic>>> corsRules;
  /// Boolean that indicates all objects (including any [locked objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html)) should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final pulumi.Output<bool?> forceDestroy;
  /// An [ACL policy grant](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#sample-acl). See Grant below for details. Conflicts with `acl`. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketAcl` instead.
  late final pulumi.Output<List<Map<String, dynamic>>> grants;
  /// [Route 53 Hosted Zone ID](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints) for this bucket's region.
  late final pulumi.Output<String> hostedZoneId;
  /// Configuration of [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html). See Lifecycle Rule below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketLifecycleConfiguration` instead.
  late final pulumi.Output<List<Map<String, dynamic>>> lifecycleRules;
  /// Configuration of [S3 bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/UG/ManagingBucketLogging.html) parameters. See Logging below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketLogging` instead.
  late final pulumi.Output<List<Map<String, dynamic>>> loggings;
  /// Configuration of [S3 object locking](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). See Object Lock Configuration below for details.
  /// The provider wil only perform drift detection if a configuration value is provided.
  /// Use the `object_lock_enabled` parameter and the resource `aws.s3.BucketObjectLockConfiguration` instead.
  late final pulumi.Output<BucketV2ObjectLockConfiguration> objectLockConfiguration;
  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  late final pulumi.Output<bool> objectLockEnabled;
  /// Valid [bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html) JSON document. Note that if the policy document is not specific enough (but still valid), this provider may view the policy as constantly changing. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketPolicy` instead.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration of [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html). See Replication Configuration below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketReplicationConfig` instead.
  late final pulumi.Output<List<Map<String, dynamic>>> replicationConfigurations;
  /// Specifies who should bear the cost of Amazon S3 data transfer.
  /// Can be either `BucketOwner` or `Requester`. By default, the owner of the S3 bucket would incur the costs of any data transfer.
  /// See [Requester Pays Buckets](http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html) developer guide for more information.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketRequestPaymentConfiguration` instead.
  late final pulumi.Output<String> requestPayer;
  /// Configuration of [server-side encryption configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html). See Server Side Encryption Configuration below for details.
  /// The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketServerSideEncryptionConfiguration` instead.
  late final pulumi.Output<List<Map<String, dynamic>>> serverSideEncryptionConfigurations;
  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// The following arguments are deprecated, and will be removed in a future major version:
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration of the [S3 bucket versioning state](https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). See Versioning below for details. The provider will only perform drift detection if a configuration value is provided. Use the resource `aws.s3.BucketVersioning` instead.
  late final pulumi.Output<List<Map<String, dynamic>>> versionings;
  /// (**Deprecated**) Domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  late final pulumi.Output<String> websiteDomain;
  /// (**Deprecated**) Website endpoint, if the bucket is configured with a website. If not, this will be an empty string. Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  late final pulumi.Output<String> websiteEndpoint;
  /// Configuration of the [S3 bucket website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html). See Website below for details. The provider will only perform drift detection if a configuration value is provided.
  /// Use the resource `aws.s3.BucketWebsiteConfiguration` instead.
  late final pulumi.Output<List<Map<String, dynamic>>> websites;

  /// Creates a new [BucketV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketV2]. {@macro pulumi_s3_bucket_v2_bucket_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketV2(
    String name, {
    BucketV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketV2:BucketV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accelerationStatus = registerOutput<String>('accelerationStatus');
    acl = registerOutput<String>('acl');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    bucketDomainName = registerOutput<String>('bucketDomainName');
    bucketPrefix = registerOutput<String>('bucketPrefix');
    bucketRegion = registerOutput<String>('bucketRegion');
    bucketRegionalDomainName = registerOutput<String>('bucketRegionalDomainName');
    corsRules = registerOutput<List<Map<String, dynamic>>>('corsRules');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    grants = registerOutput<List<Map<String, dynamic>>>('grants');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    lifecycleRules = registerOutput<List<Map<String, dynamic>>>('lifecycleRules');
    loggings = registerOutput<List<Map<String, dynamic>>>('loggings');
    objectLockConfiguration = registerOutput<BucketV2ObjectLockConfiguration>('objectLockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketV2ObjectLockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    objectLockEnabled = registerOutput<bool>('objectLockEnabled');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    replicationConfigurations = registerOutput<List<Map<String, dynamic>>>('replicationConfigurations');
    requestPayer = registerOutput<String>('requestPayer');
    serverSideEncryptionConfigurations = registerOutput<List<Map<String, dynamic>>>('serverSideEncryptionConfigurations');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    versionings = registerOutput<List<Map<String, dynamic>>>('versionings');
    websiteDomain = registerOutput<String>('websiteDomain');
    websiteEndpoint = registerOutput<String>('websiteEndpoint');
    websites = registerOutput<List<Map<String, dynamic>>>('websites');
  }

  /// Gets an existing [BucketV2] resource's state with the given [name] and [id].
  static BucketV2 get(
    String name,
    pulumi.Input<String> id, {
    BucketV2State? state,
  }) {
    return BucketV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketV2:BucketV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accelerationStatus = registerOutput<String>('accelerationStatus');
    acl = registerOutput<String>('acl');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    bucketDomainName = registerOutput<String>('bucketDomainName');
    bucketPrefix = registerOutput<String>('bucketPrefix');
    bucketRegion = registerOutput<String>('bucketRegion');
    bucketRegionalDomainName = registerOutput<String>('bucketRegionalDomainName');
    corsRules = registerOutput<List<Map<String, dynamic>>>('corsRules');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    grants = registerOutput<List<Map<String, dynamic>>>('grants');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    lifecycleRules = registerOutput<List<Map<String, dynamic>>>('lifecycleRules');
    loggings = registerOutput<List<Map<String, dynamic>>>('loggings');
    objectLockConfiguration = registerOutput<BucketV2ObjectLockConfiguration>('objectLockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketV2ObjectLockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    objectLockEnabled = registerOutput<bool>('objectLockEnabled');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    replicationConfigurations = registerOutput<List<Map<String, dynamic>>>('replicationConfigurations');
    requestPayer = registerOutput<String>('requestPayer');
    serverSideEncryptionConfigurations = registerOutput<List<Map<String, dynamic>>>('serverSideEncryptionConfigurations');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    versionings = registerOutput<List<Map<String, dynamic>>>('versionings');
    websiteDomain = registerOutput<String>('websiteDomain');
    websiteEndpoint = registerOutput<String>('websiteEndpoint');
    websites = registerOutput<List<Map<String, dynamic>>>('websites');
  }
}
