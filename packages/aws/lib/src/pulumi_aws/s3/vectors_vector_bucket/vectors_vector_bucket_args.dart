// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vectors_vector_bucket_encryption_configuration/vectors_vector_bucket_encryption_configuration.dart';

/// The set of arguments for VectorsVectorBucket.
class VectorsVectorBucketArgs {
  /// Encryption configuration for the vector bucket. See Encryption Configuration below for more details.
  final Input<List<VectorsVectorBucketEncryptionConfiguration>>?
      encryptionConfigurations;

  /// Boolean that indicates all indexes and vectors should be deleted from the vector bucket *when the vector bucket is destroyed* so that the vector bucket can be destroyed without error. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the vector bucket or destroying the vector bucket, this flag will not work.
  final Input<bool>? forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name of the vector bucket.
  ///
  /// The following arguments are optional:
  final Input<String> vectorBucketName;

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
      map['encryptionConfigurations'] = Input.mapOptionalInputValue<
              List<VectorsVectorBucketEncryptionConfiguration>,
              List<Map<String, dynamic>>>(
          encryptionConfigurationsValue,
          (value) => Input.encodeList<
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
      encryptionConfigurations: Input.asOptionalInput<
              List<VectorsVectorBucketEncryptionConfiguration>>(
          map['encryptionConfigurations']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vectorBucketName: Input.asInput<String>(map['vectorBucketName']),
    );
  }
}
