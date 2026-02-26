import 'package:pulumi/pulumi.dart';
import '../vectors_index_encryption_configuration/vectors_index_encryption_configuration.dart';
import '../vectors_index_metadata_configuration/vectors_index_metadata_configuration.dart';
import 'vectors_index_args.dart';

/// Resource for managing an Amazon S3 Vectors Index.
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
/// const example = new aws.s3.VectorsIndex("example", {
/// indexName: "example-index",
/// vectorBucketName: exampleAwsS3vectorsVectorBucket.vectorBucketName,
/// dataType: "float32",
/// dimension: 2,
/// distanceMetric: "euclidean",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.VectorsIndex("example",
/// index_name="example-index",
/// vector_bucket_name=example_aws_s3vectors_vector_bucket["vectorBucketName"],
/// data_type="float32",
/// dimension=2,
/// distance_metric="euclidean")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.VectorsIndex("example", new()
/// {
/// IndexName = "example-index",
/// VectorBucketName = exampleAwsS3vectorsVectorBucket.VectorBucketName,
/// DataType = "float32",
/// Dimension = 2,
/// DistanceMetric = "euclidean",
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
/// _, err := s3.NewVectorsIndex(ctx, "example", &s3.VectorsIndexArgs{
/// IndexName:        pulumi.String("example-index"),
/// VectorBucketName: pulumi.Any(exampleAwsS3vectorsVectorBucket.VectorBucketName),
/// DataType:         pulumi.String("float32"),
/// Dimension:        pulumi.Int(2),
/// DistanceMetric:   pulumi.String("euclidean"),
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
/// import com.pulumi.aws.s3.VectorsIndex;
/// import com.pulumi.aws.s3.VectorsIndexArgs;
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
/// var example = new VectorsIndex("example", VectorsIndexArgs.builder()
/// .indexName("example-index")
/// .vectorBucketName(exampleAwsS3vectorsVectorBucket.vectorBucketName())
/// .dataType("float32")
/// .dimension(2)
/// .distanceMetric("euclidean")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:VectorsIndex
/// properties:
/// indexName: example-index
/// vectorBucketName: ${exampleAwsS3vectorsVectorBucket.vectorBucketName}
/// dataType: float32
/// dimension: 2
/// distanceMetric: euclidean
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Vectors Index using the <span pulumi-lang-nodejs="`indexArn`" pulumi-lang-dotnet="`IndexArn`" pulumi-lang-go="`indexArn`" pulumi-lang-python="`index_arn`" pulumi-lang-yaml="`indexArn`" pulumi-lang-java="`indexArn`">`index_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:s3/vectorsIndex:VectorsIndex example arn:aws:s3vectors:us-west-2:123456789012:bucket/example-bucket/index/example-index
/// ```
class VectorsIndex extends CustomResource {
  /// Date and time when the vector index was created.
  late final Output<String> creationTime;

  /// Data type of the vectors to be inserted into the vector index. Valid values: <span pulumi-lang-nodejs="`float32`" pulumi-lang-dotnet="`Float32`" pulumi-lang-go="`float32`" pulumi-lang-python="`float32`" pulumi-lang-yaml="`float32`" pulumi-lang-java="`float32`">`float32`</span>.
  late final Output<String> dataType;

  /// Dimensions of the vectors to be inserted into the vector index.
  late final Output<int> dimension;

  /// Distance metric to be used for similarity search. Valid values: <span pulumi-lang-nodejs="`cosine`" pulumi-lang-dotnet="`Cosine`" pulumi-lang-go="`cosine`" pulumi-lang-python="`cosine`" pulumi-lang-yaml="`cosine`" pulumi-lang-java="`cosine`">`cosine`</span>, <span pulumi-lang-nodejs="`euclidean`" pulumi-lang-dotnet="`Euclidean`" pulumi-lang-go="`euclidean`" pulumi-lang-python="`euclidean`" pulumi-lang-yaml="`euclidean`" pulumi-lang-java="`euclidean`">`euclidean`</span>.
  late final Output<String> distanceMetric;

  /// Block for encryption configuration for the vector index. See <span pulumi-lang-nodejs="`encyptionConfiguration`" pulumi-lang-dotnet="`EncyptionConfiguration`" pulumi-lang-go="`encyptionConfiguration`" pulumi-lang-python="`encyption_configuration`" pulumi-lang-yaml="`encyptionConfiguration`" pulumi-lang-java="`encyptionConfiguration`">`encyption_configuration`</span> block below.
  late final Output<List<VectorsIndexEncryptionConfiguration>>
      encryptionConfigurations;

  /// ARN of the vector index.
  late final Output<String> indexArn;

  /// Name of the vector index.
  late final Output<String> indexName;

  /// Block for metadata configuration for the vector index. See <span pulumi-lang-nodejs="`metadataConfiguration`" pulumi-lang-dotnet="`MetadataConfiguration`" pulumi-lang-go="`metadataConfiguration`" pulumi-lang-python="`metadata_configuration`" pulumi-lang-yaml="`metadataConfiguration`" pulumi-lang-java="`metadataConfiguration`">`metadata_configuration`</span> block below.
  late final Output<VectorsIndexMetadataConfiguration?> metadataConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name of the vector bucket for the vector index.
  ///
  /// The following arguments are optional:
  late final Output<String> vectorBucketName;

  VectorsIndex(
    String name, {
    VectorsIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/vectorsIndex:VectorsIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTime = Output.createUnknown<String>();
    this.dataType = Output.createUnknown<String>();
    this.dimension = Output.createUnknown<int>();
    this.distanceMetric = Output.createUnknown<String>();
    this.encryptionConfigurations =
        Output.createUnknown<List<VectorsIndexEncryptionConfiguration>>();
    this.indexArn = Output.createUnknown<String>();
    this.indexName = Output.createUnknown<String>();
    this.metadataConfiguration =
        Output.createUnknown<VectorsIndexMetadataConfiguration?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vectorBucketName = Output.createUnknown<String>();
  }
}
