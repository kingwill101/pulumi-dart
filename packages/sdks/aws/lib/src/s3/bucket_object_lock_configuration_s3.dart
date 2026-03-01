import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_lock_configuration_args.dart';
import 'bucket_object_lock_configuration_rule.dart';
import 'bucket_object_lock_configuration_state.dart';

/// Provides an S3 bucket Object Lock configuration resource. For more information about Object Locking, go to [Using S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html) in the Amazon S3 User Guide.
///
/// > This resource can be used enable Object Lock for **new** and **existing** buckets.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Object Lock configuration for new or existing buckets
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "mybucket"});
/// const exampleBucketVersioning = new aws.s3.BucketVersioning("example", {
///     bucket: example.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const exampleBucketObjectLockConfiguration = new aws.s3.BucketObjectLockConfiguration("example", {
///     bucket: example.id,
///     rule: {
///         defaultRetention: {
///             mode: "COMPLIANCE",
///             days: 5,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="mybucket")
/// example_bucket_versioning = aws.s3.BucketVersioning("example",
///     bucket=example.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// example_bucket_object_lock_configuration = aws.s3.BucketObjectLockConfiguration("example",
///     bucket=example.id,
///     rule={
///         "default_retention": {
///             "mode": "COMPLIANCE",
///             "days": 5,
///         },
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
///         BucketName = "mybucket",
///     });
///
///     var exampleBucketVersioning = new Aws.S3.BucketVersioning("example", new()
///     {
///         Bucket = example.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var exampleBucketObjectLockConfiguration = new Aws.S3.BucketObjectLockConfiguration("example", new()
///     {
///         Bucket = example.Id,
///         Rule = new Aws.S3.Inputs.BucketObjectLockConfigurationRuleArgs
///         {
///             DefaultRetention = new Aws.S3.Inputs.BucketObjectLockConfigurationRuleDefaultRetentionArgs
///             {
///                 Mode = "COMPLIANCE",
///                 Days = 5,
///             },
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
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("mybucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketVersioning(ctx, "example", &s3.BucketVersioningArgs{
/// 			Bucket: example.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectLockConfiguration(ctx, "example", &s3.BucketObjectLockConfigurationArgs{
/// 			Bucket: example.ID(),
/// 			Rule: &s3.BucketObjectLockConfigurationRuleArgs{
/// 				DefaultRetention: &s3.BucketObjectLockConfigurationRuleDefaultRetentionArgs{
/// 					Mode: pulumi.String("COMPLIANCE"),
/// 					Days: pulumi.Int(5),
/// 				},
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
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.BucketObjectLockConfiguration;
/// import com.pulumi.aws.s3.BucketObjectLockConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketObjectLockConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketObjectLockConfigurationRuleDefaultRetentionArgs;
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
///             .bucket("mybucket")
///             .build());
///
///         var exampleBucketVersioning = new BucketVersioning("exampleBucketVersioning", BucketVersioningArgs.builder()
///             .bucket(example.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var exampleBucketObjectLockConfiguration = new BucketObjectLockConfiguration("exampleBucketObjectLockConfiguration", BucketObjectLockConfigurationArgs.builder()
///             .bucket(example.id())
///             .rule(BucketObjectLockConfigurationRuleArgs.builder()
///                 .defaultRetention(BucketObjectLockConfigurationRuleDefaultRetentionArgs.builder()
///                     .mode("COMPLIANCE")
///                     .days(5)
///                     .build())
///                 .build())
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
///       bucket: mybucket
///   exampleBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: example
///     properties:
///       bucket: ${example.id}
///       versioningConfiguration:
///         status: Enabled
///   exampleBucketObjectLockConfiguration:
///     type: aws:s3:BucketObjectLockConfiguration
///     name: example
///     properties:
///       bucket: ${example.id}
///       rule:
///         defaultRetention:
///           mode: COMPLIANCE
///           days: 5
/// ```
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner`, separated by a comma (`,`). For example:
///
///
/// **Using `pulumi import`**, import an S3 bucket Object Lock Configuration using one of two forms. If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner`, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration example bucket-name,123456789012
/// ```
class BucketObjectLockConfigurationS3 extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Indicates whether this bucket has an Object Lock configuration enabled. Defaults to `Enabled`. Valid values: `Enabled`.
  late final pulumi.Output<String?> objectLockEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for specifying the Object Lock rule for the specified object. See below.
  late final pulumi.Output<BucketObjectLockConfigurationRule?> rule;
  /// This argument is deprecated and no longer needed to enable Object Lock.
  /// To enable Object Lock for an existing bucket, you must first enable versioning on the bucket and then enable Object Lock. For more details on versioning, see the `aws.s3.BucketVersioning` resource.
  late final pulumi.Output<String?> token;

  /// Creates a new [BucketObjectLockConfigurationS3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketObjectLockConfigurationS3]. {@macro pulumi_s3_bucket_object_lock_configuration_bucket_object_lock_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketObjectLockConfigurationS3(
    String name, {
    BucketObjectLockConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.objectLockEnabled = registerOutput<String?>('objectLockEnabled');
    this.region = registerOutput<String>('region');
    this.rule = registerOutput<BucketObjectLockConfigurationRule?>('rule');
    this.token = registerOutput<String?>('token');
  }

  /// Gets an existing [BucketObjectLockConfigurationS3] resource's state with the given [name] and [id].
  static BucketObjectLockConfigurationS3 get(
    String name,
    pulumi.Input<String> id, {
    BucketObjectLockConfigurationState? state,
  }) {
    return BucketObjectLockConfigurationS3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketObjectLockConfigurationS3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketObjectLockConfiguration:BucketObjectLockConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.objectLockEnabled = registerOutput<String?>('objectLockEnabled');
    this.region = registerOutput<String>('region');
    this.rule = registerOutput<BucketObjectLockConfigurationRule?>('rule');
    this.token = registerOutput<String?>('token');
  }
}
