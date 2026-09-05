import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_server_side_encryption_configuration_v2_args.dart';
import 'bucket_server_side_encryption_configuration_v2_rule.dart';
import 'bucket_server_side_encryption_configuration_v2_state.dart';

/// Provides a S3 bucket server-side encryption configuration resource.
///
/// &gt; **NOTE:** Destroying an `aws.s3.BucketServerSideEncryptionConfiguration` resource resets the bucket to [Amazon S3 bucket default encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/default-encryption-faq.html).
///
/// &gt; **NOTE:** Starting in April 2026, Amazon S3 will automatically block server-side encryption with customer-provided keys (SSE-C) for all new buckets. Use the `blockedEncryptionTypes` argument to manage this behavior. For more information, see the [SSE-C changes FAQ](https://docs.aws.amazon.com/AmazonS3/latest/userguide/default-s3-c-encryption-setting-faq.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mykey = new aws.kms.Key("mykey", {
///     description: "This key is used to encrypt bucket objects",
///     deletionWindowInDays: 10,
/// });
/// const mybucket = new aws.s3.Bucket("mybucket", {bucket: "mybucket"});
/// const example = new aws.s3.BucketServerSideEncryptionConfiguration("example", {
///     rules: [{
///         applyServerSideEncryptionByDefault: {
///             kmsMasterKeyId: mykey.arn,
///             sseAlgorithm: "aws:kms",
///         },
///     }],
///     bucket: mybucket.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mykey = aws.kms.Key("mykey",
///     description="This key is used to encrypt bucket objects",
///     deletion_window_in_days=10)
/// mybucket = aws.s3.Bucket("mybucket", bucket="mybucket")
/// example = aws.s3.BucketServerSideEncryptionConfiguration("example",
///     rules=[{
///         "apply_server_side_encryption_by_default": {
///             "kms_master_key_id": mykey.arn,
///             "sse_algorithm": "aws:kms",
///         },
///     }],
///     bucket=mybucket.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mykey = new Aws.Kms.Key("mykey", new()
///     {
///         Description = "This key is used to encrypt bucket objects",
///         DeletionWindowInDays = 10,
///     });
///
///     var mybucket = new Aws.S3.Bucket("mybucket", new()
///     {
///         BucketName = "mybucket",
///     });
///
///     var example = new Aws.S3.BucketServerSideEncryptionConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketServerSideEncryptionConfigurationRuleArgs
///             {
///                 ApplyServerSideEncryptionByDefault = new Aws.S3.Inputs.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs
///                 {
///                     KmsMasterKeyId = mykey.Arn,
///                     SseAlgorithm = "aws:kms",
///                 },
///             },
///         },
///         Bucket = mybucket.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mykey, err := kms.NewKey(ctx, "mykey", &kms.KeyArgs{
/// 			Description:          pulumi.String("This key is used to encrypt bucket objects"),
/// 			DeletionWindowInDays: pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mybucket, err := s3.NewBucket(ctx, "mybucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("mybucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketServerSideEncryptionConfiguration(ctx, "example", &s3.BucketServerSideEncryptionConfigurationArgs{
/// 			Rules: s3.BucketServerSideEncryptionConfigurationRuleArray{
/// 				&s3.BucketServerSideEncryptionConfigurationRuleArgs{
/// 					ApplyServerSideEncryptionByDefault: &s3.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs{
/// 						KmsMasterKeyId: mykey.Arn,
/// 						SseAlgorithm:   pulumi.String("aws:kms"),
/// 					},
/// 				},
/// 			},
/// 			Bucket: mybucket.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "mykey" {
///   description             = "This key is used to encrypt bucket objects"
///   deletion_window_in_days = 10
/// }
/// resource "aws_s3_bucket" "mybucket" {
///   bucket = "mybucket"
/// }
/// resource "aws_s3_bucketserversideencryptionconfiguration" "example" {
///   rules {
///     apply_server_side_encryption_by_default = {
///       kms_master_key_id = aws_kms_key.mykey.arn
///       sse_algorithm     = "aws:kms"
///     }
///   }
///   bucket = aws_s3_bucket.mybucket.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketServerSideEncryptionConfiguration;
/// import com.pulumi.aws.s3.BucketServerSideEncryptionConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketServerSideEncryptionConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var mykey = new Key("mykey", KeyArgs.builder()
///             .description("This key is used to encrypt bucket objects")
///             .deletionWindowInDays(10)
///             .build());
///
///         var mybucket = new Bucket("mybucket", BucketArgs.builder()
///             .bucket("mybucket")
///             .build());
///
///         var example = new BucketServerSideEncryptionConfiguration("example", BucketServerSideEncryptionConfigurationArgs.builder()
///             .rules(BucketServerSideEncryptionConfigurationRuleArgs.builder()
///                 .applyServerSideEncryptionByDefault(BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs.builder()
///                     .kmsMasterKeyId(mykey.arn())
///                     .sseAlgorithm("aws:kms")
///                     .build())
///                 .build())
///             .bucket(mybucket.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mykey:
///     type: aws:kms:Key
///     properties:
///       description: This key is used to encrypt bucket objects
///       deletionWindowInDays: 10
///   mybucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: mybucket
///   example:
///     type: aws:s3:BucketServerSideEncryptionConfiguration
///     properties:
///       rules:
///         - applyServerSideEncryptionByDefault:
///             kmsMasterKeyId: ${mykey.arn}
///             sseAlgorithm: aws:kms
///       bucket: ${mybucket.id}
/// ```
///
///
/// ### Blocking SSE-C Uploads
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mykey = new aws.kms.Key("mykey", {
///     description: "This key is used to encrypt bucket objects",
///     deletionWindowInDays: 10,
/// });
/// const mybucket = new aws.s3.Bucket("mybucket", {bucket: "mybucket"});
/// const example = new aws.s3.BucketServerSideEncryptionConfiguration("example", {
///     rules: [{
///         applyServerSideEncryptionByDefault: {
///             kmsMasterKeyId: mykey.arn,
///             sseAlgorithm: "aws:kms",
///         },
///         bucketKeyEnabled: true,
///         blockedEncryptionTypes: ["SSE-C"],
///     }],
///     bucket: mybucket.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mykey = aws.kms.Key("mykey",
///     description="This key is used to encrypt bucket objects",
///     deletion_window_in_days=10)
/// mybucket = aws.s3.Bucket("mybucket", bucket="mybucket")
/// example = aws.s3.BucketServerSideEncryptionConfiguration("example",
///     rules=[{
///         "apply_server_side_encryption_by_default": {
///             "kms_master_key_id": mykey.arn,
///             "sse_algorithm": "aws:kms",
///         },
///         "bucket_key_enabled": True,
///         "blocked_encryption_types": ["SSE-C"],
///     }],
///     bucket=mybucket.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mykey = new Aws.Kms.Key("mykey", new()
///     {
///         Description = "This key is used to encrypt bucket objects",
///         DeletionWindowInDays = 10,
///     });
///
///     var mybucket = new Aws.S3.Bucket("mybucket", new()
///     {
///         BucketName = "mybucket",
///     });
///
///     var example = new Aws.S3.BucketServerSideEncryptionConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketServerSideEncryptionConfigurationRuleArgs
///             {
///                 ApplyServerSideEncryptionByDefault = new Aws.S3.Inputs.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs
///                 {
///                     KmsMasterKeyId = mykey.Arn,
///                     SseAlgorithm = "aws:kms",
///                 },
///                 BucketKeyEnabled = true,
///                 BlockedEncryptionTypes = new[]
///                 {
///                     "SSE-C",
///                 },
///             },
///         },
///         Bucket = mybucket.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mykey, err := kms.NewKey(ctx, "mykey", &kms.KeyArgs{
/// 			Description:          pulumi.String("This key is used to encrypt bucket objects"),
/// 			DeletionWindowInDays: pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mybucket, err := s3.NewBucket(ctx, "mybucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("mybucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketServerSideEncryptionConfiguration(ctx, "example", &s3.BucketServerSideEncryptionConfigurationArgs{
/// 			Rules: s3.BucketServerSideEncryptionConfigurationRuleArray{
/// 				&s3.BucketServerSideEncryptionConfigurationRuleArgs{
/// 					ApplyServerSideEncryptionByDefault: &s3.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs{
/// 						KmsMasterKeyId: mykey.Arn,
/// 						SseAlgorithm:   pulumi.String("aws:kms"),
/// 					},
/// 					BucketKeyEnabled: pulumi.Bool(true),
/// 					BlockedEncryptionTypes: pulumi.StringArray{
/// 						pulumi.String("SSE-C"),
/// 					},
/// 				},
/// 			},
/// 			Bucket: mybucket.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "mykey" {
///   description             = "This key is used to encrypt bucket objects"
///   deletion_window_in_days = 10
/// }
/// resource "aws_s3_bucket" "mybucket" {
///   bucket = "mybucket"
/// }
/// resource "aws_s3_bucketserversideencryptionconfiguration" "example" {
///   rules {
///     apply_server_side_encryption_by_default = {
///       kms_master_key_id = aws_kms_key.mykey.arn
///       sse_algorithm     = "aws:kms"
///     }
///     bucket_key_enabled       = true
///     blocked_encryption_types = ["SSE-C"]
///   }
///   bucket = aws_s3_bucket.mybucket.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketServerSideEncryptionConfiguration;
/// import com.pulumi.aws.s3.BucketServerSideEncryptionConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketServerSideEncryptionConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var mykey = new Key("mykey", KeyArgs.builder()
///             .description("This key is used to encrypt bucket objects")
///             .deletionWindowInDays(10)
///             .build());
///
///         var mybucket = new Bucket("mybucket", BucketArgs.builder()
///             .bucket("mybucket")
///             .build());
///
///         var example = new BucketServerSideEncryptionConfiguration("example", BucketServerSideEncryptionConfigurationArgs.builder()
///             .rules(BucketServerSideEncryptionConfigurationRuleArgs.builder()
///                 .applyServerSideEncryptionByDefault(BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefaultArgs.builder()
///                     .kmsMasterKeyId(mykey.arn())
///                     .sseAlgorithm("aws:kms")
///                     .build())
///                 .bucketKeyEnabled(true)
///                 .blockedEncryptionTypes("SSE-C")
///                 .build())
///             .bucket(mybucket.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mykey:
///     type: aws:kms:Key
///     properties:
///       description: This key is used to encrypt bucket objects
///       deletionWindowInDays: 10
///   mybucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: mybucket
///   example:
///     type: aws:s3:BucketServerSideEncryptionConfiguration
///     properties:
///       rules:
///         - applyServerSideEncryptionByDefault:
///             kmsMasterKeyId: ${mykey.arn}
///             sseAlgorithm: aws:kms
///           bucketKeyEnabled: true
///           blockedEncryptionTypes:
///             - SSE-C
///       bucket: ${mybucket.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket server-side encryption configuration using the `bucket` or using the `bucket` and `expectedBucketOwner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketServerSideEncryptionConfigurationV2:BucketServerSideEncryptionConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketServerSideEncryptionConfigurationV2:BucketServerSideEncryptionConfigurationV2 example bucket-name,123456789012
/// ```
class BucketServerSideEncryptionConfigurationV2 extends pulumi.CustomResource {
  /// ID (name) of the bucket.
  late final pulumi.Output<String> bucket;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
  late final pulumi.Output<List<BucketServerSideEncryptionConfigurationV2Rule>> rules;

  /// Creates a new [BucketServerSideEncryptionConfigurationV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketServerSideEncryptionConfigurationV2]. {@macro pulumi_s3_bucket_server_side_encryption_configuration_v2_bucket_server_side_encryption_configuration_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketServerSideEncryptionConfigurationV2(
    String name, {
    BucketServerSideEncryptionConfigurationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketServerSideEncryptionConfigurationV2:BucketServerSideEncryptionConfigurationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketServerSideEncryptionConfigurationV2Rule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketServerSideEncryptionConfigurationV2Rule>(guardedValue, (value) => BucketServerSideEncryptionConfigurationV2Rule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [BucketServerSideEncryptionConfigurationV2] resource's state with the given [name] and [id].
  static BucketServerSideEncryptionConfigurationV2 get(
    String name,
    pulumi.Input<String> id, {
    BucketServerSideEncryptionConfigurationV2State? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketServerSideEncryptionConfigurationV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketServerSideEncryptionConfigurationV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketServerSideEncryptionConfigurationV2:BucketServerSideEncryptionConfigurationV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketServerSideEncryptionConfigurationV2Rule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketServerSideEncryptionConfigurationV2Rule>(guardedValue, (value) => BucketServerSideEncryptionConfigurationV2Rule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [BucketServerSideEncryptionConfigurationV2] resource.
  BucketServerSideEncryptionConfigurationV2.reference(String urn)
    : super(
        'aws:s3/bucketServerSideEncryptionConfigurationV2:BucketServerSideEncryptionConfigurationV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketServerSideEncryptionConfigurationV2Rule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketServerSideEncryptionConfigurationV2Rule>(guardedValue, (value) => BucketServerSideEncryptionConfigurationV2Rule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
