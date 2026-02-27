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
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Vectors Index using the `index_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/vectorsIndex:VectorsIndex example arn:aws:s3vectors:us-west-2:123456789012:bucket/example-bucket/index/example-index
/// ```
class VectorsIndex extends CustomResource {
  /// Date and time when the vector index was created.
  late final Output<String> creationTime;

  /// Data type of the vectors to be inserted into the vector index. Valid values: `float32`.
  late final Output<String> dataType;

  /// Dimensions of the vectors to be inserted into the vector index.
  late final Output<int> dimension;

  /// Distance metric to be used for similarity search. Valid values: `cosine`, `euclidean`.
  late final Output<String> distanceMetric;

  /// Block for encryption configuration for the vector index. See `encyption_configuration` block below.
  late final Output<List<VectorsIndexEncryptionConfiguration>>
      encryptionConfigurations;

  /// ARN of the vector index.
  late final Output<String> indexArn;

  /// Name of the vector index.
  late final Output<String> indexName;

  /// Block for metadata configuration for the vector index. See `metadata_configuration` block below.
  late final Output<VectorsIndexMetadataConfiguration?> metadataConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
    this.creationTime = registerOutput<String>('creationTime');
    this.dataType = registerOutput<String>('dataType');
    this.dimension = registerOutput<int>('dimension');
    this.distanceMetric = registerOutput<String>('distanceMetric');
    this.encryptionConfigurations =
        registerOutput<List<VectorsIndexEncryptionConfiguration>>(
            'encryptionConfigurations');
    this.indexArn = registerOutput<String>('indexArn');
    this.indexName = registerOutput<String>('indexName');
    this.metadataConfiguration =
        registerOutput<VectorsIndexMetadataConfiguration?>(
            'metadataConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vectorBucketName = registerOutput<String>('vectorBucketName');
  }
}
