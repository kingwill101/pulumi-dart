import 'package:pulumi/pulumi.dart' as pulumi;
import 'vectors_vector_bucket_policy_args.dart';

/// Resource for managing an Amazon S3 Vectors Vector Bucket policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.VectorsVectorBucketPolicy("example", {
///     vectorBucketArn: exampleAwsS3vectorsVectorBucket.arn,
///     policy: `{
///   \\"Version\\": \\"2012-10-17\\",
///   \\"Id\\": \\"writePolicy\\",
///   \\"Statement\\": [{
///     \\"Sid\\": \\"writeStatement\\",
///     \\"Effect\\": \\"Allow\\",
///     \\"Principal\\": {
///       \\"AWS\\": \\"123456789012\\"
///     },
///     \\"Action\\": [
///       \\"s3vectors:PutVectors\\"
///     ],
///     \\"Resource\\": \\"*\\"
///   }]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.VectorsVectorBucketPolicy("example",
///     vector_bucket_arn=example_aws_s3vectors_vector_bucket["arn"],
///     policy="""{
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"writePolicy\",
///   \"Statement\": [{
///     \"Sid\": \"writeStatement\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789012\"
///     },
///     \"Action\": [
///       \"s3vectors:PutVectors\"
///     ],
///     \"Resource\": \"*\"
///   }]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.VectorsVectorBucketPolicy("example", new()
///     {
///         VectorBucketArn = exampleAwsS3vectorsVectorBucket.Arn,
///         Policy = @"{
///   \""Version\"": \""2012-10-17\"",
///   \""Id\"": \""writePolicy\"",
///   \""Statement\"": [{
///     \""Sid\"": \""writeStatement\"",
///     \""Effect\"": \""Allow\"",
///     \""Principal\"": {
///       \""AWS\"": \""123456789012\""
///     },
///     \""Action\"": [
///       \""s3vectors:PutVectors\""
///     ],
///     \""Resource\"": \""*\""
///   }]
/// }
/// ",
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
/// 		_, err := s3.NewVectorsVectorBucketPolicy(ctx, "example", &s3.VectorsVectorBucketPolicyArgs{
/// 			VectorBucketArn: pulumi.Any(exampleAwsS3vectorsVectorBucket.Arn),
/// 			Policy: pulumi.String(`{
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"writePolicy\",
///   \"Statement\": [{
///     \"Sid\": \"writeStatement\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789012\"
///     },
///     \"Action\": [
///       \"s3vectors:PutVectors\"
///     ],
///     \"Resource\": \"*\"
///   }]
/// }
/// `),
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
/// import com.pulumi.aws.s3.VectorsVectorBucketPolicy;
/// import com.pulumi.aws.s3.VectorsVectorBucketPolicyArgs;
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
///         var example = new VectorsVectorBucketPolicy("example", VectorsVectorBucketPolicyArgs.builder()
///             .vectorBucketArn(exampleAwsS3vectorsVectorBucket.arn())
///             .policy("""
/// {
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"writePolicy\",
///   \"Statement\": [{
///     \"Sid\": \"writeStatement\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789012\"
///     },
///     \"Action\": [
///       \"s3vectors:PutVectors\"
///     ],
///     \"Resource\": \"*\"
///   }]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:VectorsVectorBucketPolicy
///     properties:
///       vectorBucketArn: ${exampleAwsS3vectorsVectorBucket.arn}
///       policy: |
///         {
///           \"Version\": \"2012-10-17\",
///           \"Id\": \"writePolicy\",
///           \"Statement\": [{
///             \"Sid\": \"writeStatement\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///               \"AWS\": \"123456789012\"
///             },
///             \"Action\": [
///               \"s3vectors:PutVectors\"
///             ],
///             \"Resource\": \"*\"
///           }]
///         }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Vectors Vector Bucket policy using the `vector_bucket_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/vectorsVectorBucketPolicy:VectorsVectorBucketPolicy example arn:aws:s3vectors:us-west-2:123456789012:bucket/example-bucket
/// ```
class VectorsVectorBucketPolicy extends pulumi.CustomResource {
  /// The policy document.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the vector bucket.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vectorBucketArn;

  /// Creates a new [VectorsVectorBucketPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VectorsVectorBucketPolicy]. {@macro pulumi_s3_vectors_vector_bucket_policy_vectors_vector_bucket_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VectorsVectorBucketPolicy(
    String name, {
    VectorsVectorBucketPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/vectorsVectorBucketPolicy:VectorsVectorBucketPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.vectorBucketArn = registerOutput<String>('vectorBucketArn');
  }
}
