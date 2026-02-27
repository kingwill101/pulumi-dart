// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vectors_index_encryption_configuration/vectors_index_encryption_configuration.dart';
import '../vectors_index_metadata_configuration/vectors_index_metadata_configuration.dart';

/// The set of arguments for VectorsIndex.
class VectorsIndexArgs {
  /// Data type of the vectors to be inserted into the vector index. Valid values: `float32`.
  final Input<String> dataType;

  /// Dimensions of the vectors to be inserted into the vector index.
  final Input<int> dimension;

  /// Distance metric to be used for similarity search. Valid values: `cosine`, `euclidean`.
  final Input<String> distanceMetric;

  /// Block for encryption configuration for the vector index. See `encyption_configuration` block below.
  final Input<List<VectorsIndexEncryptionConfiguration>>?
      encryptionConfigurations;

  /// Name of the vector index.
  final Input<String> indexName;

  /// Block for metadata configuration for the vector index. See `metadata_configuration` block below.
  final Input<VectorsIndexMetadataConfiguration>? metadataConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name of the vector bucket for the vector index.
  ///
  /// The following arguments are optional:
  final Input<String> vectorBucketName;

  VectorsIndexArgs({
    required this.dataType,
    required this.dimension,
    required this.distanceMetric,
    this.encryptionConfigurations,
    required this.indexName,
    this.metadataConfiguration,
    this.region,
    this.tags,
    required this.vectorBucketName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataType'] = dataType;
    map['dimension'] = dimension;
    map['distanceMetric'] = distanceMetric;
    final encryptionConfigurationsValue = encryptionConfigurations;
    if (encryptionConfigurationsValue != null) {
      map['encryptionConfigurations'] = Input.mapOptionalInputValue<
              List<VectorsIndexEncryptionConfiguration>,
              List<Map<String, dynamic>>>(
          encryptionConfigurationsValue,
          (value) => Input.encodeList<VectorsIndexEncryptionConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['indexName'] = indexName;
    final metadataConfigurationValue = metadataConfiguration;
    if (metadataConfigurationValue != null) {
      map['metadataConfiguration'] = Input.mapOptionalInputValue<
              VectorsIndexMetadataConfiguration, Map<String, dynamic>>(
          metadataConfigurationValue, (value) => value.toMap());
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

  factory VectorsIndexArgs.fromMap(Map<String, dynamic> map) {
    return VectorsIndexArgs(
      dataType: Input.asInput<String>(map['dataType']),
      dimension: Input.asInput<int>(map['dimension']),
      distanceMetric: Input.asInput<String>(map['distanceMetric']),
      encryptionConfigurations:
          Input.asOptionalInput<List<VectorsIndexEncryptionConfiguration>>(
              map['encryptionConfigurations']),
      indexName: Input.asInput<String>(map['indexName']),
      metadataConfiguration:
          Input.asOptionalInput<VectorsIndexMetadataConfiguration>(
              map['metadataConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vectorBucketName: Input.asInput<String>(map['vectorBucketName']),
    );
  }
}
