import 'package:pulumi/pulumi.dart' as pulumi;
import 'vectors_vector_bucket_args.dart';
import 'vectors_vector_bucket_state.dart';

/// Resource for managing an Amazon S3 Vectors Vector Bucket.
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
/// const example = new aws.s3.VectorsVectorBucket("example", {vectorBucketName: "example-bucket"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.VectorsVectorBucket("example", vector_bucket_name="example-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.VectorsVectorBucket("example", new()
///     {
///         VectorBucketName = "example-bucket",
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
/// 		_, err := s3.NewVectorsVectorBucket(ctx, "example", &s3.VectorsVectorBucketArgs{
/// 			VectorBucketName: pulumi.String("example-bucket"),
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
/// resource "aws_s3_vectorsvectorbucket" "example" {
///   vector_bucket_name = "example-bucket"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.VectorsVectorBucket;
/// import com.pulumi.aws.s3.VectorsVectorBucketArgs;
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
///         var example = new VectorsVectorBucket("example", VectorsVectorBucketArgs.builder()
///             .vectorBucketName("example-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:VectorsVectorBucket
///     properties:
///       vectorBucketName: example-bucket
/// ```
///
///
/// ### Encryption
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.VectorsVectorBucket("example", {
///     vectorBucketName: "example-bucket",
///     encryptionConfigurations: [{
///         sseType: "aws:kms",
///         kmsKeyArn: exampleAwsKmsKey.arn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.VectorsVectorBucket("example",
///     vector_bucket_name="example-bucket",
///     encryption_configurations=[{
///         "sse_type": "aws:kms",
///         "kms_key_arn": example_aws_kms_key["arn"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.VectorsVectorBucket("example", new()
///     {
///         VectorBucketName = "example-bucket",
///         EncryptionConfigurations = new[]
///         {
///             new Aws.S3.Inputs.VectorsVectorBucketEncryptionConfigurationArgs
///             {
///                 SseType = "aws:kms",
///                 KmsKeyArn = exampleAwsKmsKey.Arn,
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
/// 		_, err := s3.NewVectorsVectorBucket(ctx, "example", &s3.VectorsVectorBucketArgs{
/// 			VectorBucketName: pulumi.String("example-bucket"),
/// 			EncryptionConfigurations: s3.VectorsVectorBucketEncryptionConfigurationArray{
/// 				&s3.VectorsVectorBucketEncryptionConfigurationArgs{
/// 					SseType:   pulumi.String("aws:kms"),
/// 					KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
/// resource "aws_s3_vectorsvectorbucket" "example" {
///   vector_bucket_name = "example-bucket"
///   encryption_configurations {
///     sse_type    = "aws:kms"
///     kms_key_arn = exampleAwsKmsKey.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.VectorsVectorBucket;
/// import com.pulumi.aws.s3.VectorsVectorBucketArgs;
/// import com.pulumi.aws.s3.inputs.VectorsVectorBucketEncryptionConfigurationArgs;
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
///         var example = new VectorsVectorBucket("example", VectorsVectorBucketArgs.builder()
///             .vectorBucketName("example-bucket")
///             .encryptionConfigurations(VectorsVectorBucketEncryptionConfigurationArgs.builder()
///                 .sseType("aws:kms")
///                 .kmsKeyArn(exampleAwsKmsKey.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:VectorsVectorBucket
///     properties:
///       vectorBucketName: example-bucket
///       encryptionConfigurations:
///         - sseType: aws:kms
///           kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `vectorBucketArn` (String) ARN of the S3 Vectors Vector Bucket.
///
///
/// Using `pulumi import`, import S3 Vectors Vector Bucket using the `vectorBucketArn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/vectorsVectorBucket:VectorsVectorBucket example arn:aws:s3vectors:us-west-2:123456789012:bucket/example-bucket
/// ```
class VectorsVectorBucket extends pulumi.CustomResource {
  /// Date and time when the vector bucket was created.
  late final pulumi.Output<String> creationTime;
  /// Encryption configuration for the vector bucket. See `encryptionConfiguration` below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>> encryptionConfigurations;
  /// Boolean that indicates all indexes and vectors should be deleted from the vector bucket *when the vector bucket is destroyed* so that the vector bucket can be destroyed without error. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the vector bucket or destroying the vector bucket, this flag will not work.
  late final pulumi.Output<bool> forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the vector bucket.
  late final pulumi.Output<String> vectorBucketArn;
  /// Name of the vector bucket.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vectorBucketName;

  /// Creates a new [VectorsVectorBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VectorsVectorBucket]. {@macro pulumi_s3_vectors_vector_bucket_vectors_vector_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VectorsVectorBucket(
    String name, {
    VectorsVectorBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/vectorsVectorBucket:VectorsVectorBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTime = registerOutput<String>('creationTime');
    encryptionConfigurations = registerOutput<List<Map<String, dynamic>>>('encryptionConfigurations');
    forceDestroy = registerOutput<bool>('forceDestroy');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vectorBucketArn = registerOutput<String>('vectorBucketArn');
    vectorBucketName = registerOutput<String>('vectorBucketName');
  }

  /// Gets an existing [VectorsVectorBucket] resource's state with the given [name] and [id].
  static VectorsVectorBucket get(
    String name,
    pulumi.Input<String> id, {
    VectorsVectorBucketState? state,
  }) {
    return VectorsVectorBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VectorsVectorBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/vectorsVectorBucket:VectorsVectorBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTime = registerOutput<String>('creationTime');
    encryptionConfigurations = registerOutput<List<Map<String, dynamic>>>('encryptionConfigurations');
    forceDestroy = registerOutput<bool>('forceDestroy');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vectorBucketArn = registerOutput<String>('vectorBucketArn');
    vectorBucketName = registerOutput<String>('vectorBucketName');
  }
}
