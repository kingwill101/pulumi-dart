// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vectors_vector_bucket_encryption_configuration.dart';

/// {@template pulumi_s3_vectors_vector_bucket_vectors_vector_bucket_args_doc}
/// The set of arguments for VectorsVectorBucket.
/// {@endtemplate}
/// {@macro pulumi_s3_vectors_vector_bucket_vectors_vector_bucket_args_doc}
class VectorsVectorBucketArgs {
  /// Encryption configuration for the vector bucket. See Encryption Configuration below for more details.
  final pulumi.Input<List<VectorsVectorBucketEncryptionConfiguration>>? encryptionConfigurations;
  /// Boolean that indicates all indexes and vectors should be deleted from the vector bucket *when the vector bucket is destroyed* so that the vector bucket can be destroyed without error. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the vector bucket or destroying the vector bucket, this flag will not work.
  final pulumi.Input<bool>? forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the vector bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vectorBucketName;

  /// Creates a new [VectorsVectorBucketArgs].
  /// [encryptionConfigurations] Encryption configuration for the vector bucket. See Encryption Configuration below for more details.
  /// [forceDestroy] Boolean that indicates all indexes and vectors should be deleted from the vector bucket *when the vector bucket is destroyed* so that the vector bucket can be destroyed without error. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the vector bucket or destroying the vector bucket, this flag will not work.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vectorBucketName] Name of the vector bucket.
  VectorsVectorBucketArgs({
    pulumi.Output<List<VectorsVectorBucketEncryptionConfiguration>>? encryptionConfigurations,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vectorBucketName,
  }) :
      encryptionConfigurations = pulumi.Input.asOptionalInput<List<VectorsVectorBucketEncryptionConfiguration>>(encryptionConfigurations),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vectorBucketName = pulumi.Input.asInput<String>(vectorBucketName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VectorsVectorBucketEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<VectorsVectorBucketEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'region': ?region,
      'tags': ?tags,
      'vectorBucketName': vectorBucketName,
    };
  }

  factory VectorsVectorBucketArgs.fromMap(Map<String, dynamic> map) {
    return VectorsVectorBucketArgs(
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : pulumi.Output.create<List<VectorsVectorBucketEncryptionConfiguration>>(pulumi.Input.decodeList<VectorsVectorBucketEncryptionConfiguration>(map['encryptionConfigurations'], (value) => VectorsVectorBucketEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vectorBucketName: pulumi.Output.create<String>(map['vectorBucketName'] as String),
    );
  }
}

