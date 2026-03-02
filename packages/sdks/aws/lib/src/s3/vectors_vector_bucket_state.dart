// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vectors_vector_bucket_encryption_configuration.dart';

/// Input properties used for looking up and filtering VectorsVectorBucket resources.
class VectorsVectorBucketState {
  /// Date and time when the vector bucket was created.
  final pulumi.Input<String>? creationTime;
  /// Encryption configuration for the vector bucket. See Encryption Configuration below for more details.
  final pulumi.Input<List<VectorsVectorBucketEncryptionConfiguration>>? encryptionConfigurations;
  /// Boolean that indicates all indexes and vectors should be deleted from the vector bucket *when the vector bucket is destroyed* so that the vector bucket can be destroyed without error. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the vector bucket or destroying the vector bucket, this flag will not work.
  final pulumi.Input<bool>? forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the vector bucket.
  final pulumi.Input<String>? vectorBucketArn;
  /// Name of the vector bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vectorBucketName;

  /// Creates a new [VectorsVectorBucketState].
  /// [creationTime] Date and time when the vector bucket was created.
  /// [encryptionConfigurations] Encryption configuration for the vector bucket. See Encryption Configuration below for more details.
  /// [forceDestroy] Boolean that indicates all indexes and vectors should be deleted from the vector bucket *when the vector bucket is destroyed* so that the vector bucket can be destroyed without error. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the vector bucket or destroying the vector bucket, this flag will not work.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vectorBucketArn] ARN of the vector bucket.
  /// [vectorBucketName] Name of the vector bucket.
  VectorsVectorBucketState({
    this.creationTime,
    this.encryptionConfigurations,
    this.forceDestroy,
    this.region,
    this.tags,
    this.tagsAll,
    this.vectorBucketArn,
    this.vectorBucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VectorsVectorBucketEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<VectorsVectorBucketEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vectorBucketArn': ?vectorBucketArn,
      'vectorBucketName': ?vectorBucketName,
    };
  }

  factory VectorsVectorBucketState.fromMap(Map<String, dynamic> map) {
    return VectorsVectorBucketState(
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : (pulumi.Input.decodeList<VectorsVectorBucketEncryptionConfiguration>(map['encryptionConfigurations'], (value) => VectorsVectorBucketEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vectorBucketArn: map['vectorBucketArn'] == null ? null : (map['vectorBucketArn'] as String).input(),
      vectorBucketName: map['vectorBucketName'] == null ? null : (map['vectorBucketName'] as String).input(),
    );
  }
}

