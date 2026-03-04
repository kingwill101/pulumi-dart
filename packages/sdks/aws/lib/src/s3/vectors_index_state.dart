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
  final pulumi.Input<List<VectorsIndexEncryptionConfiguration>>?
  encryptionConfigurations;

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
      'encryptionConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<VectorsIndexEncryptionConfiguration>,
            List<Map<String, dynamic>>
          >(
            encryptionConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  VectorsIndexEncryptionConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'indexArn': ?indexArn,
      'indexName': ?indexName,
      'metadataConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VectorsIndexMetadataConfiguration,
            Map<String, dynamic>
          >(metadataConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vectorBucketName': ?vectorBucketName,
    };
  }

  factory VectorsIndexState.fromMap(Map<String, dynamic> map) {
    return VectorsIndexState(
      creationTime: (() {
        final guardedValue = map['creationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataType: (() {
        final guardedValue = map['dataType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dimension: (() {
        final guardedValue = map['dimension'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      distanceMetric: (() {
        final guardedValue = map['distanceMetric'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionConfigurations: (() {
        final guardedValue = map['encryptionConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VectorsIndexEncryptionConfiguration>(
            guardedValue,
            (value) => VectorsIndexEncryptionConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      indexArn: (() {
        final guardedValue = map['indexArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indexName: (() {
        final guardedValue = map['indexName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadataConfiguration: (() {
        final guardedValue = map['metadataConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VectorsIndexMetadataConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vectorBucketName: (() {
        final guardedValue = map['vectorBucketName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
