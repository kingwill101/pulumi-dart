// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_collection_encryption_config.dart';
import 'serverless_collection_timeouts.dart';
import 'serverless_collection_vector_option.dart';

/// {@template pulumi_opensearch_serverless_collection_serverless_collection_args_doc}
/// The set of arguments for ServerlessCollection.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_collection_serverless_collection_args_doc}
class ServerlessCollectionArgs {
  /// Name of the collection group to associate with this collection.
  final pulumi.Input<String?>? collectionGroupName;
  /// Description of the collection.
  final pulumi.Input<String?>? description;
  /// Configuration block for direct collection encryption settings. See `encryptionConfig` below for details.
  final pulumi.Input<List<ServerlessCollectionEncryptionConfig>?>? encryptionConfigs;
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
  final pulumi.Input<ServerlessCollectionTimeouts?>? timeouts;
  /// Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  final pulumi.Input<String?>? type;
  /// Configuration block for vector search options. Only valid when `type` is `VECTORSEARCH`. See `vectorOptions` below for details.
  final pulumi.Input<List<ServerlessCollectionVectorOption>?>? vectorOptions;

  /// Creates a new [ServerlessCollectionArgs].
  /// [collectionGroupName] Name of the collection group to associate with this collection.
  /// [description] Description of the collection.
  /// [encryptionConfigs] Configuration block for direct collection encryption settings. See `encryptionConfig` below for details.
  /// [name] Name of the collection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standbyReplicas] Whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [type] Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  /// [vectorOptions] Configuration block for vector search options. Only valid when `type` is `VECTORSEARCH`. See `vectorOptions` below for details.
  const ServerlessCollectionArgs({
    this.collectionGroupName,
    this.description,
    this.encryptionConfigs,
    this.name,
    this.region,
    this.standbyReplicas,
    this.tags,
    this.timeouts,
    this.type,
    this.vectorOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionGroupName': ?collectionGroupName,
      'description': ?description,
      'encryptionConfigs': ?pulumi.Input.mapOptionalInputValue<List<ServerlessCollectionEncryptionConfig>, List<Map<String, dynamic>>>(encryptionConfigs, (value) => pulumi.Input.encodeList<ServerlessCollectionEncryptionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'standbyReplicas': ?standbyReplicas,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ServerlessCollectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'vectorOptions': ?pulumi.Input.mapOptionalInputValue<List<ServerlessCollectionVectorOption>, List<Map<String, dynamic>>>(vectorOptions, (value) => pulumi.Input.encodeList<ServerlessCollectionVectorOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServerlessCollectionArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessCollectionArgs(
      collectionGroupName: (() { final guardedValue = map['collectionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfigs: (() { final guardedValue = map['encryptionConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessCollectionEncryptionConfig>(guardedValue, (value) => ServerlessCollectionEncryptionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyReplicas: (() { final guardedValue = map['standbyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessCollectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorOptions: (() { final guardedValue = map['vectorOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessCollectionVectorOption>(guardedValue, (value) => ServerlessCollectionVectorOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
