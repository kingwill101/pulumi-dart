// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vectors_index_encryption_configuration.dart';
import 'vectors_index_metadata_configuration.dart';

/// Input properties used for looking up and filtering VectorsIndex resources.
class VectorsIndexState {
  /// Date and time when the vector index was created.
  final pulumi.Input<String>? creationTime;
  /// Data type of the vectors to be inserted into the vector index. Valid values: `float32`.
  final pulumi.Input<String>? dataType;
  /// Dimensions of the vectors to be inserted into the vector index.
  final pulumi.Input<int>? dimension;
  /// Distance metric to be used for similarity search. Valid values: `cosine`, `euclidean`.
  final pulumi.Input<String>? distanceMetric;
  /// Block for encryption configuration for the vector index. See `encyption_configuration` block below.
  final pulumi.Input<List<VectorsIndexEncryptionConfiguration>>? encryptionConfigurations;
  /// ARN of the vector index.
  final pulumi.Input<String>? indexArn;
  /// Name of the vector index.
  final pulumi.Input<String>? indexName;
  /// Block for metadata configuration for the vector index. See `metadata_configuration` block below.
  final pulumi.Input<VectorsIndexMetadataConfiguration>? metadataConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Name of the vector bucket for the vector index.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vectorBucketName;

  /// Creates a new [VectorsIndexState].
  /// [creationTime] Date and time when the vector index was created.
  /// [dataType] Data type of the vectors to be inserted into the vector index. Valid values: `float32`.
  /// [dimension] Dimensions of the vectors to be inserted into the vector index.
  /// [distanceMetric] Distance metric to be used for similarity search. Valid values: `cosine`, `euclidean`.
  /// [encryptionConfigurations] Block for encryption configuration for the vector index. See `encyption_configuration` block below.
  /// [indexArn] ARN of the vector index.
  /// [indexName] Name of the vector index.
  /// [metadataConfiguration] Block for metadata configuration for the vector index. See `metadata_configuration` block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vectorBucketName] Name of the vector bucket for the vector index.
  VectorsIndexState({
    this.creationTime,
    this.dataType,
    this.dimension,
    this.distanceMetric,
    this.encryptionConfigurations,
    this.indexArn,
    this.indexName,
    this.metadataConfiguration,
    this.region,
    this.tags,
    this.tagsAll,
    this.vectorBucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'dataType': ?dataType,
      'dimension': ?dimension,
      'distanceMetric': ?distanceMetric,
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VectorsIndexEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<VectorsIndexEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indexArn': ?indexArn,
      'indexName': ?indexName,
      'metadataConfiguration': ?pulumi.Input.mapOptionalInputValue<VectorsIndexMetadataConfiguration, Map<String, dynamic>>(metadataConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vectorBucketName': ?vectorBucketName,
    };
  }

  factory VectorsIndexState.fromMap(Map<String, dynamic> map) {
    return VectorsIndexState(
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType'] as String).input(),
      dimension: map['dimension'] == null ? null : (map['dimension'] as int).input(),
      distanceMetric: map['distanceMetric'] == null ? null : (map['distanceMetric'] as String).input(),
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : (pulumi.Input.decodeList<VectorsIndexEncryptionConfiguration>(map['encryptionConfigurations'], (value) => VectorsIndexEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      indexArn: map['indexArn'] == null ? null : (map['indexArn'] as String).input(),
      indexName: map['indexName'] == null ? null : (map['indexName'] as String).input(),
      metadataConfiguration: map['metadataConfiguration'] == null ? null : (VectorsIndexMetadataConfiguration.fromMap((map['metadataConfiguration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vectorBucketName: map['vectorBucketName'] == null ? null : (map['vectorBucketName'] as String).input(),
    );
  }
}

