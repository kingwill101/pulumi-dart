// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_collection_encryption_config.dart';
import 'serverless_collection_timeouts.dart';
import 'serverless_collection_vector_option.dart';

/// Input properties used for looking up and filtering ServerlessCollection resources.
class ServerlessCollectionState {
  /// ARN of the collection.
  final pulumi.Input<String?>? arn;
  /// Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  final pulumi.Input<String?>? collectionEndpoint;
  /// Name of the collection group to associate with this collection.
  final pulumi.Input<String?>? collectionGroupName;
  /// Collection-specific endpoint used to access OpenSearch Dashboards.
  final pulumi.Input<String?>? dashboardEndpoint;
  /// Description of the collection.
  final pulumi.Input<String?>? description;
  /// Configuration block for direct collection encryption settings. See `encryptionConfig` below for details.
  final pulumi.Input<List<ServerlessCollectionEncryptionConfig>?>? encryptionConfigs;
  /// ARN of the Amazon Web Services KMS key used to encrypt the collection.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Name of the collection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String?>? standbyReplicas;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<ServerlessCollectionTimeouts?>? timeouts;
  /// Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  final pulumi.Input<String?>? type;
  /// Configuration block for vector search options. Only valid when `type` is `VECTORSEARCH`. See `vectorOptions` below for details.
  final pulumi.Input<List<ServerlessCollectionVectorOption>?>? vectorOptions;

  /// Creates a new [ServerlessCollectionState].
  /// [arn] ARN of the collection.
  /// [collectionEndpoint] Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  /// [collectionGroupName] Name of the collection group to associate with this collection.
  /// [dashboardEndpoint] Collection-specific endpoint used to access OpenSearch Dashboards.
  /// [description] Description of the collection.
  /// [encryptionConfigs] Configuration block for direct collection encryption settings. See `encryptionConfig` below for details.
  /// [kmsKeyArn] ARN of the Amazon Web Services KMS key used to encrypt the collection.
  /// [name] Name of the collection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standbyReplicas] Whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [type] Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  /// [vectorOptions] Configuration block for vector search options. Only valid when `type` is `VECTORSEARCH`. See `vectorOptions` below for details.
  const ServerlessCollectionState({
    this.arn,
    this.collectionEndpoint,
    this.collectionGroupName,
    this.dashboardEndpoint,
    this.description,
    this.encryptionConfigs,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.standbyReplicas,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.type,
    this.vectorOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'collectionEndpoint': ?collectionEndpoint,
      'collectionGroupName': ?collectionGroupName,
      'dashboardEndpoint': ?dashboardEndpoint,
      'description': ?description,
      'encryptionConfigs': ?pulumi.Input.mapOptionalInputValue<List<ServerlessCollectionEncryptionConfig>, List<Map<String, dynamic>>>(encryptionConfigs, (value) => pulumi.Input.encodeList<ServerlessCollectionEncryptionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'standbyReplicas': ?standbyReplicas,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ServerlessCollectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'vectorOptions': ?pulumi.Input.mapOptionalInputValue<List<ServerlessCollectionVectorOption>, List<Map<String, dynamic>>>(vectorOptions, (value) => pulumi.Input.encodeList<ServerlessCollectionVectorOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServerlessCollectionState.fromMap(Map<String, dynamic> map) {
    return ServerlessCollectionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionEndpoint: (() { final guardedValue = map['collectionEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionGroupName: (() { final guardedValue = map['collectionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboardEndpoint: (() { final guardedValue = map['dashboardEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfigs: (() { final guardedValue = map['encryptionConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessCollectionEncryptionConfig>(guardedValue, (value) => ServerlessCollectionEncryptionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyReplicas: (() { final guardedValue = map['standbyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessCollectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorOptions: (() { final guardedValue = map['vectorOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessCollectionVectorOption>(guardedValue, (value) => ServerlessCollectionVectorOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
