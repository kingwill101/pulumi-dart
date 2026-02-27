// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vectors_vector_bucket_encryption_configuration/vectors_vector_bucket_encryption_configuration.dart';

/// The set of arguments for VectorsVectorBucket.
class VectorsVectorBucketArgs {
  /// Encryption configuration for the vector bucket. See Encryption Configuration below for more details.
  final pulumi.Input<List<VectorsVectorBucketEncryptionConfiguration>>?
      encryptionConfigurations;

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

  VectorsVectorBucketArgs({
    this.encryptionConfigurations,
    this.forceDestroy,
    this.region,
    this.tags,
    required this.vectorBucketName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionConfigurationsValue = encryptionConfigurations;
    if (encryptionConfigurationsValue != null) {
      map['encryptionConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<VectorsVectorBucketEncryptionConfiguration>,
              List<Map<String, dynamic>>>(
          encryptionConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              VectorsVectorBucketEncryptionConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vectorBucketName'] = vectorBucketName;
    return map;
  }

  factory VectorsVectorBucketArgs.fromMap(Map<String, dynamic> map) {
    return VectorsVectorBucketArgs(
      encryptionConfigurations: pulumi.Input.asOptionalInput<
              List<VectorsVectorBucketEncryptionConfiguration>>(
          map['encryptionConfigurations']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vectorBucketName: pulumi.Input.asInput<String>(map['vectorBucketName']),
    );
  }
}
