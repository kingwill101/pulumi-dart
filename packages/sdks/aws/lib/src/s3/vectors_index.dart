import 'package:pulumi/pulumi.dart' as pulumi;
import 'vectors_index_args.dart';
import 'vectors_index_metadata_configuration.dart';
import 'vectors_index_state.dart';

/// Resource for managing an Amazon S3 Vectors Index.
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
/// const example = new aws.s3.VectorsIndex("example", {
///     indexName: "example-index",
///     vectorBucketName: exampleAwsS3vectorsVectorBucket.vectorBucketName,
///     dataType: "float32",
///     dimension: 2,
///     distanceMetric: "euclidean",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.VectorsIndex("example",
///     index_name="example-index",
///     vector_bucket_name=example_aws_s3vectors_vector_bucket["vectorBucketName"],
///     data_type="float32",
///     dimension=2,
///     distance_metric="euclidean")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.VectorsIndex("example", new()
///     {
///         IndexName = "example-index",
///         VectorBucketName = exampleAwsS3vectorsVectorBucket.VectorBucketName,
///         DataType = "float32",
///         Dimension = 2,
///         DistanceMetric = "euclidean",
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
/// 		_, err := s3.NewVectorsIndex(ctx, "example", &s3.VectorsIndexArgs{
/// 			IndexName:        pulumi.String("example-index"),
/// 			VectorBucketName: pulumi.Any(exampleAwsS3vectorsVectorBucket.VectorBucketName),
/// 			DataType:         pulumi.String("float32"),
/// 			Dimension:        pulumi.Int(2),
/// 			DistanceMetric:   pulumi.String("euclidean"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new VectorsIndex("example", VectorsIndexArgs.builder()
///             .indexName("example-index")
///             .vectorBucketName(exampleAwsS3vectorsVectorBucket.vectorBucketName())
///             .dataType("float32")
///             .dimension(2)
///             .distanceMetric("euclidean")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:VectorsIndex
///     properties:
///       indexName: example-index
///       vectorBucketName: ${exampleAwsS3vectorsVectorBucket.vectorBucketName}
///       dataType: float32
///       dimension: 2
///       distanceMetric: euclidean
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Vectors Index using the `index_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/vectorsIndex:VectorsIndex example arn:aws:s3vectors:us-west-2:123456789012:bucket/example-bucket/index/example-index
/// ```
class VectorsIndex extends pulumi.CustomResource {
  /// Date and time when the vector index was created.
  late final pulumi.Output<String> creationTime;
  /// Data type of the vectors to be inserted into the vector index. Valid values: `float32`.
  late final pulumi.Output<String> dataType;
  /// Dimensions of the vectors to be inserted into the vector index.
  late final pulumi.Output<int> dimension;
  /// Distance metric to be used for similarity search. Valid values: `cosine`, `euclidean`.
  late final pulumi.Output<String> distanceMetric;
  /// Block for encryption configuration for the vector index. See `encyption_configuration` block below.
  late final pulumi.Output<List<Map<String, dynamic>>> encryptionConfigurations;
  /// ARN of the vector index.
  late final pulumi.Output<String> indexArn;
  /// Name of the vector index.
  late final pulumi.Output<String> indexName;
  /// Block for metadata configuration for the vector index. See `metadata_configuration` block below.
  late final pulumi.Output<VectorsIndexMetadataConfiguration?> metadataConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Name of the vector bucket for the vector index.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vectorBucketName;

  /// Creates a new [VectorsIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VectorsIndex]. {@macro pulumi_s3_vectors_index_vectors_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VectorsIndex(
    String name, {
    VectorsIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/vectorsIndex:VectorsIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTime = registerOutput<String>('creationTime');
    dataType = registerOutput<String>('dataType');
    dimension = registerOutput<int>('dimension');
    distanceMetric = registerOutput<String>('distanceMetric');
    encryptionConfigurations = registerOutput<List<Map<String, dynamic>>>('encryptionConfigurations');
    indexArn = registerOutput<String>('indexArn');
    indexName = registerOutput<String>('indexName');
    metadataConfiguration = registerOutput<VectorsIndexMetadataConfiguration?>('metadataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VectorsIndexMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vectorBucketName = registerOutput<String>('vectorBucketName');
  }

  /// Gets an existing [VectorsIndex] resource's state with the given [name] and [id].
  static VectorsIndex get(
    String name,
    pulumi.Input<String> id, {
    VectorsIndexState? state,
  }) {
    return VectorsIndex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VectorsIndex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/vectorsIndex:VectorsIndex',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTime = registerOutput<String>('creationTime');
    dataType = registerOutput<String>('dataType');
    dimension = registerOutput<int>('dimension');
    distanceMetric = registerOutput<String>('distanceMetric');
    encryptionConfigurations = registerOutput<List<Map<String, dynamic>>>('encryptionConfigurations');
    indexArn = registerOutput<String>('indexArn');
    indexName = registerOutput<String>('indexName');
    metadataConfiguration = registerOutput<VectorsIndexMetadataConfiguration?>('metadataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VectorsIndexMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vectorBucketName = registerOutput<String>('vectorBucketName');
  }
}
