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
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? dataType,
    pulumi.Output<int>? dimension,
    pulumi.Output<String>? distanceMetric,
    pulumi.Output<List<VectorsIndexEncryptionConfiguration>>? encryptionConfigurations,
    pulumi.Output<String>? indexArn,
    pulumi.Output<String>? indexName,
    pulumi.Output<VectorsIndexMetadataConfiguration>? metadataConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vectorBucketName,
  }) :
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      dataType = pulumi.Input.asOptionalInput<String>(dataType),
      dimension = pulumi.Input.asOptionalInput<int>(dimension),
      distanceMetric = pulumi.Input.asOptionalInput<String>(distanceMetric),
      encryptionConfigurations = pulumi.Input.asOptionalInput<List<VectorsIndexEncryptionConfiguration>>(encryptionConfigurations),
      indexArn = pulumi.Input.asOptionalInput<String>(indexArn),
      indexName = pulumi.Input.asOptionalInput<String>(indexName),
      metadataConfiguration = pulumi.Input.asOptionalInput<VectorsIndexMetadataConfiguration>(metadataConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vectorBucketName = pulumi.Input.asOptionalInput<String>(vectorBucketName);

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
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      dataType: map['dataType'] == null ? null : pulumi.Output.create<String>(map['dataType'] as String),
      dimension: map['dimension'] == null ? null : pulumi.Output.create<int>(map['dimension'] as int),
      distanceMetric: map['distanceMetric'] == null ? null : pulumi.Output.create<String>(map['distanceMetric'] as String),
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : pulumi.Output.create<List<VectorsIndexEncryptionConfiguration>>(pulumi.Input.decodeList<VectorsIndexEncryptionConfiguration>(map['encryptionConfigurations'], (value) => VectorsIndexEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      indexArn: map['indexArn'] == null ? null : pulumi.Output.create<String>(map['indexArn'] as String),
      indexName: map['indexName'] == null ? null : pulumi.Output.create<String>(map['indexName'] as String),
      metadataConfiguration: map['metadataConfiguration'] == null ? null : pulumi.Output.create<VectorsIndexMetadataConfiguration>(VectorsIndexMetadataConfiguration.fromMap((map['metadataConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vectorBucketName: map['vectorBucketName'] == null ? null : pulumi.Output.create<String>(map['vectorBucketName'] as String),
    );
  }
}

