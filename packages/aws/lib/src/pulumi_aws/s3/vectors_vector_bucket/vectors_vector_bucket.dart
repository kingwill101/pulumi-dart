import 'package:pulumi/pulumi.dart';
import '../vectors_vector_bucket_encryption_configuration/vectors_vector_bucket_encryption_configuration.dart';
import 'vectors_vector_bucket_args.dart';

/// Resource for managing an Amazon S3 Vectors Vector Bucket.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.S3.VectorsVectorBucket("example", new()
/// {
/// VectorBucketName = "example-bucket",
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
/// _, err := s3.NewVectorsVectorBucket(ctx, "example", &s3.VectorsVectorBucketArgs{
/// VectorBucketName: pulumi.String("example-bucket"),
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
/// import com.pulumi.aws.s3.VectorsVectorBucket;
/// import com.pulumi.aws.s3.VectorsVectorBucketArgs;
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
/// var example = new VectorsVectorBucket("example", VectorsVectorBucketArgs.builder()
/// .vectorBucketName("example-bucket")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:VectorsVectorBucket
/// properties:
/// vectorBucketName: example-bucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Encryption
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.VectorsVectorBucket("example", {
/// vectorBucketName: "example-bucket",
/// encryptionConfigurations: [{
/// sseType: "aws:kms",
/// kmsKeyArn: exampleAwsKmsKey.arn,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.VectorsVectorBucket("example",
/// vector_bucket_name="example-bucket",
/// encryption_configurations=[{
/// "sse_type": "aws:kms",
/// "kms_key_arn": example_aws_kms_key["arn"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.VectorsVectorBucket("example", new()
/// {
/// VectorBucketName = "example-bucket",
/// EncryptionConfigurations = new[]
/// {
/// new Aws.S3.Inputs.VectorsVectorBucketEncryptionConfigurationArgs
/// {
/// SseType = "aws:kms",
/// KmsKeyArn = exampleAwsKmsKey.Arn,
/// },
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
/// _, err := s3.NewVectorsVectorBucket(ctx, "example", &s3.VectorsVectorBucketArgs{
/// VectorBucketName: pulumi.String("example-bucket"),
/// EncryptionConfigurations: s3.VectorsVectorBucketEncryptionConfigurationArray{
/// &s3.VectorsVectorBucketEncryptionConfigurationArgs{
/// SseType:   pulumi.String("aws:kms"),
/// KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
/// },
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
/// import com.pulumi.aws.s3.VectorsVectorBucket;
/// import com.pulumi.aws.s3.VectorsVectorBucketArgs;
/// import com.pulumi.aws.s3.inputs.VectorsVectorBucketEncryptionConfigurationArgs;
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
/// var example = new VectorsVectorBucket("example", VectorsVectorBucketArgs.builder()
/// .vectorBucketName("example-bucket")
/// .encryptionConfigurations(VectorsVectorBucketEncryptionConfigurationArgs.builder()
/// .sseType("aws:kms")
/// .kmsKeyArn(exampleAwsKmsKey.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:VectorsVectorBucket
/// properties:
/// vectorBucketName: example-bucket
/// encryptionConfigurations:
/// - sseType: aws:kms
/// kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Vectors Vector Bucket using the <span pulumi-lang-nodejs="`vectorBucketArn`" pulumi-lang-dotnet="`VectorBucketArn`" pulumi-lang-go="`vectorBucketArn`" pulumi-lang-python="`vector_bucket_arn`" pulumi-lang-yaml="`vectorBucketArn`" pulumi-lang-java="`vectorBucketArn`">`vector_bucket_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:s3/vectorsVectorBucket:VectorsVectorBucket example arn:aws:s3vectors:us-west-2:123456789012:bucket/example-bucket
/// ```
class VectorsVectorBucket extends CustomResource {
  /// Date and time when the vector bucket was created.
  late final Output<String> creationTime;

  /// Encryption configuration for the vector bucket. See Encryption Configuration below for more details.
  late final Output<List<VectorsVectorBucketEncryptionConfiguration>>
      encryptionConfigurations;

  /// Boolean that indicates all indexes and vectors should be deleted from the vector bucket *when the vector bucket is destroyed* so that the vector bucket can be destroyed without error. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the vector bucket or destroying the vector bucket, this flag will not work.
  late final Output<bool> forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the vector bucket.
  late final Output<String> vectorBucketArn;

  /// Name of the vector bucket.
  ///
  /// The following arguments are optional:
  late final Output<String> vectorBucketName;

  VectorsVectorBucket(
    String name, {
    VectorsVectorBucketArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/vectorsVectorBucket:VectorsVectorBucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTime = Output.createUnknown<String>();
    this.encryptionConfigurations = Output.createUnknown<
        List<VectorsVectorBucketEncryptionConfiguration>>();
    this.forceDestroy = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vectorBucketArn = Output.createUnknown<String>();
    this.vectorBucketName = Output.createUnknown<String>();
  }
}
