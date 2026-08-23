import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cors_configuration_v2_args.dart';
import 'bucket_cors_configuration_v2_state.dart';

/// Provides an S3 bucket CORS configuration resource. For more information about CORS, go to [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html) in the Amazon S3 User Guide.
///
/// &gt; **NOTE:** S3 Buckets only support a single CORS configuration. Declaring multiple `aws.s3.BucketCorsConfiguration` resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "mybucket"});
/// const exampleBucketCorsConfiguration = new aws.s3.BucketCorsConfiguration("example", {
///     bucket: example.id,
///     corsRules: [
///         {
///             allowedHeaders: ["*"],
///             allowedMethods: [
///                 "PUT",
///                 "POST",
///             ],
///             allowedOrigins: ["https://s3-website-test.domain.example"],
///             exposeHeaders: ["ETag"],
///             maxAgeSeconds: 3000,
///         },
///         {
///             allowedMethods: ["GET"],
///             allowedOrigins: ["*"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="mybucket")
/// example_bucket_cors_configuration = aws.s3.BucketCorsConfiguration("example",
///     bucket=example.id,
///     cors_rules=[
///         {
///             "allowed_headers": ["*"],
///             "allowed_methods": [
///                 "PUT",
///                 "POST",
///             ],
///             "allowed_origins": ["https://s3-website-test.domain.example"],
///             "expose_headers": ["ETag"],
///             "max_age_seconds": 3000,
///         },
///         {
///             "allowed_methods": ["GET"],
///             "allowed_origins": ["*"],
///         },
///     ])
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
///     var exampleBucketCorsConfiguration = new Aws.S3.BucketCorsConfiguration("example", new()
///     {
///         Bucket = example.Id,
///         CorsRules = new[]
///         {
///             new Aws.S3.Inputs.BucketCorsConfigurationCorsRuleArgs
///             {
///                 AllowedHeaders = new[]
///                 {
///                     "*",
///                 },
///                 AllowedMethods = new[]
///                 {
///                     "PUT",
///                     "POST",
///                 },
///                 AllowedOrigins = new[]
///                 {
///                     "https://s3-website-test.domain.example",
///                 },
///                 ExposeHeaders = new[]
///                 {
///                     "ETag",
///                 },
///                 MaxAgeSeconds = 3000,
///             },
///             new Aws.S3.Inputs.BucketCorsConfigurationCorsRuleArgs
///             {
///                 AllowedMethods = new[]
///                 {
///                     "GET",
///                 },
///                 AllowedOrigins = new[]
///                 {
///                     "*",
///                 },
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
/// 		_, err = s3.NewBucketCorsConfiguration(ctx, "example", &s3.BucketCorsConfigurationArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			CorsRules: s3.BucketCorsConfigurationCorsRuleArray{
/// 				&s3.BucketCorsConfigurationCorsRuleArgs{
/// 					AllowedHeaders: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("PUT"),
/// 						pulumi.String("POST"),
/// 					},
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("https://s3-website-test.domain.example"),
/// 					},
/// 					ExposeHeaders: pulumi.StringArray{
/// 						pulumi.String("ETag"),
/// 					},
/// 					MaxAgeSeconds: pulumi.Int(3000),
/// 				},
/// 				&s3.BucketCorsConfigurationCorsRuleArgs{
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 					},
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucket" "example" {
///   bucket = "mybucket"
/// }
/// resource "aws_s3_bucketcorsconfiguration" "example" {
///   bucket = aws_s3_bucket.example.id
///   cors_rules {
///     allowed_headers = ["*"]
///     allowed_methods = ["PUT", "POST"]
///     allowed_origins = ["https://s3-website-test.domain.example"]
///     expose_headers  = ["ETag"]
///     max_age_seconds = 3000
///   }
///   cors_rules {
///     allowed_methods = ["GET"]
///     allowed_origins = ["*"]
///   }
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
/// import com.pulumi.aws.s3.BucketCorsConfiguration;
/// import com.pulumi.aws.s3.BucketCorsConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketCorsConfigurationCorsRuleArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("mybucket")
///             .build());
///
///         var exampleBucketCorsConfiguration = new BucketCorsConfiguration("exampleBucketCorsConfiguration", BucketCorsConfigurationArgs.builder()
///             .bucket(example.id())
///             .corsRules(
///                 BucketCorsConfigurationCorsRuleArgs.builder()
///                     .allowedHeaders("*")
///                     .allowedMethods(
///                         "PUT",
///                         "POST")
///                     .allowedOrigins("https://s3-website-test.domain.example")
///                     .exposeHeaders("ETag")
///                     .maxAgeSeconds(3000)
///                     .build(),
///                 BucketCorsConfigurationCorsRuleArgs.builder()
///                     .allowedMethods("GET")
///                     .allowedOrigins("*")
///                     .build())
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
///   exampleBucketCorsConfiguration:
///     type: aws:s3:BucketCorsConfiguration
///     name: example
///     properties:
///       bucket: ${example.id}
///       corsRules:
///         - allowedHeaders:
///             - '*'
///           allowedMethods:
///             - PUT
///             - POST
///           allowedOrigins:
///             - https://s3-website-test.domain.example
///           exposeHeaders:
///             - ETag
///           maxAgeSeconds: 3000
///         - allowedMethods:
///             - GET
///           allowedOrigins:
///             - '*'
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
/// **Using `pulumi import` to import** S3 bucket CORS configuration using the `bucket` or using the `bucket` and `expectedBucketOwner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketCorsConfigurationV2:BucketCorsConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketCorsConfigurationV2:BucketCorsConfigurationV2 example bucket-name,123456789012
/// ```
class BucketCorsConfigurationV2 extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;
  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  late final pulumi.Output<List<Map<String, dynamic>>> corsRules;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BucketCorsConfigurationV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketCorsConfigurationV2]. {@macro pulumi_s3_bucket_cors_configuration_v2_bucket_cors_configuration_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketCorsConfigurationV2(
    String name, {
    BucketCorsConfigurationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketCorsConfigurationV2:BucketCorsConfigurationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    corsRules = registerOutput<List<Map<String, dynamic>>>('corsRules');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BucketCorsConfigurationV2] resource's state with the given [name] and [id].
  static BucketCorsConfigurationV2 get(
    String name,
    pulumi.Input<String> id, {
    BucketCorsConfigurationV2State? state,
  }) {
    return BucketCorsConfigurationV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketCorsConfigurationV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketCorsConfigurationV2:BucketCorsConfigurationV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    corsRules = registerOutput<List<Map<String, dynamic>>>('corsRules');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
  }
}
