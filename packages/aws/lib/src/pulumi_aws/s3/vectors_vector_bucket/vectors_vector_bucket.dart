import 'package:pulumi/pulumi.dart' as pulumi;
import '../vectors_vector_bucket_encryption_configuration/vectors_vector_bucket_encryption_configuration.dart';
import 'vectors_vector_bucket_args.dart';

/// Resource for managing an Amazon S3 Vectors Vector Bucket.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Encryption
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Vectors Vector Bucket using the `vector_bucket_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/vectorsVectorBucket:VectorsVectorBucket example arn:aws:s3vectors:us-west-2:123456789012:bucket/example-bucket
/// ```
class VectorsVectorBucket extends pulumi.CustomResource {
  /// Date and time when the vector bucket was created.
  late final pulumi.Output<String> creationTime;

  /// Encryption configuration for the vector bucket. See Encryption Configuration below for more details.
  late final pulumi.Output<List<VectorsVectorBucketEncryptionConfiguration>>
      encryptionConfigurations;

  /// Boolean that indicates all indexes and vectors should be deleted from the vector bucket *when the vector bucket is destroyed* so that the vector bucket can be destroyed without error. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the vector bucket or destroying the vector bucket, this flag will not work.
  late final pulumi.Output<bool> forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the vector bucket.
  late final pulumi.Output<String> vectorBucketArn;

  /// Name of the vector bucket.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vectorBucketName;

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
    this.creationTime = registerOutput<String>('creationTime');
    this.encryptionConfigurations =
        registerOutput<List<VectorsVectorBucketEncryptionConfiguration>>(
            'encryptionConfigurations');
    this.forceDestroy = registerOutput<bool>('forceDestroy');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vectorBucketArn = registerOutput<String>('vectorBucketArn');
    this.vectorBucketName = registerOutput<String>('vectorBucketName');
  }
}
