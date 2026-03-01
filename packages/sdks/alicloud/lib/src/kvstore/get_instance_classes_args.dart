// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_get_instance_classes_get_instance_classes_args_doc}
/// Arguments for getInstanceClasses.
/// {@endtemplate}
/// {@macro pulumi_kvstore_get_instance_classes_get_instance_classes_args_doc}
class GetInstanceClassesArgs {
  /// The Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance system architecture required by the user. Valid values: `standard`, `cluster` and `rwsplit`.
  final pulumi.Input<String>? architecture;
  /// The Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance edition type required by the user. Valid values: `Community` and `Enterprise`.
  final pulumi.Input<String>? editionType;
  /// Database type. Options are `Redis`, `Memcache`. Default to `Redis`.
  final pulumi.Input<String>? engine;
  /// Database version required by the user. Value options of Redis can refer to the latest docs [detail info](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-createinstance-redis) `EngineVersion`. Value of Memcache should be empty.
  final pulumi.Input<String>? engineVersion;
  /// Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PrePaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// The Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance node type required by the user. Valid values: `double`, `single`, `readone`, `readthree` and `readfive`.
  final pulumi.Input<String>? nodeType;
  /// File name where to save data source results (after running `pulumi up`).
  final pulumi.Input<String>? outputFile;
  /// It has been deprecated from 1.68.0.
  final pulumi.Input<String>? packageType;
  /// It has been deprecated from 1.68.0.
  final pulumi.Input<String>? performanceType;
  /// The type of the service. Valid values:
  /// * Local: a Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance with a local disk.
  /// * OnECS: a Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance with a standard disk. This type is available only on the Alibaba Cloud China site.
  final pulumi.Input<String>? productType;
  /// The Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance series type required by the user. Valid values: `enhanced_performance_type` and `hybrid_storage`.
  final pulumi.Input<String>? seriesType;
  /// The number of shard.Valid values: `1`, `2`, `4`, `8`, `16`, `32`, `64`, `128`, `256`.
  final pulumi.Input<int>? shardNumber;
  final pulumi.Input<String>? sortedBy;
  /// It has been deprecated from 1.68.0.
  final pulumi.Input<String>? storageType;
  /// The Zone to launch the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetInstanceClassesArgs].
  /// [architecture] The Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance system architecture required by the user. Valid values: `standard`, `cluster` and `rwsplit`.
  /// [editionType] The Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance edition type required by the user. Valid values: `Community` and `Enterprise`.
  /// [engine] Database type. Options are `Redis`, `Memcache`. Default to `Redis`.
  /// [engineVersion] Database version required by the user. Value options of Redis can refer to the latest docs [detail info](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-createinstance-redis) `EngineVersion`. Value of Memcache should be empty.
  /// [instanceChargeType] Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PrePaid`.
  /// [nodeType] The Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance node type required by the user. Valid values: `double`, `single`, `readone`, `readthree` and `readfive`.
  /// [outputFile] File name where to save data source results (after running `pulumi up`).
  /// [packageType] It has been deprecated from 1.68.0.
  /// [performanceType] It has been deprecated from 1.68.0.
  /// [productType] The type of the service. Valid values:
  /// [seriesType] The Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance series type required by the user. Valid values: `enhanced_performance_type` and `hybrid_storage`.
  /// [shardNumber] The number of shard.Valid values: `1`, `2`, `4`, `8`, `16`, `32`, `64`, `128`, `256`.
  /// [sortedBy] Optional.
  /// [storageType] It has been deprecated from 1.68.0.
  /// [zoneId] The Zone to launch the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  GetInstanceClassesArgs({
    pulumi.Output<String>? architecture,
    pulumi.Output<String>? editionType,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? nodeType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? packageType,
    pulumi.Output<String>? performanceType,
    pulumi.Output<String>? productType,
    pulumi.Output<String>? seriesType,
    pulumi.Output<int>? shardNumber,
    pulumi.Output<String>? sortedBy,
    pulumi.Output<String>? storageType,
    required pulumi.Output<String> zoneId,
  }) :
      architecture = pulumi.Input.asOptionalInput<String>(architecture),
      editionType = pulumi.Input.asOptionalInput<String>(editionType),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      packageType = pulumi.Input.asOptionalInput<String>(packageType),
      performanceType = pulumi.Input.asOptionalInput<String>(performanceType),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      seriesType = pulumi.Input.asOptionalInput<String>(seriesType),
      shardNumber = pulumi.Input.asOptionalInput<int>(shardNumber),
      sortedBy = pulumi.Input.asOptionalInput<String>(sortedBy),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'editionType': ?editionType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'instanceChargeType': ?instanceChargeType,
      'nodeType': ?nodeType,
      'outputFile': ?outputFile,
      'packageType': ?packageType,
      'performanceType': ?performanceType,
      'productType': ?productType,
      'seriesType': ?seriesType,
      'shardNumber': ?shardNumber,
      'sortedBy': ?sortedBy,
      'storageType': ?storageType,
      'zoneId': zoneId,
    };
  }

  factory GetInstanceClassesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassesArgs(
      architecture: map['architecture'] == null ? null : pulumi.Output.create<String>(map['architecture'] as String),
      editionType: map['editionType'] == null ? null : pulumi.Output.create<String>(map['editionType'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      packageType: map['packageType'] == null ? null : pulumi.Output.create<String>(map['packageType'] as String),
      performanceType: map['performanceType'] == null ? null : pulumi.Output.create<String>(map['performanceType'] as String),
      productType: map['productType'] == null ? null : pulumi.Output.create<String>(map['productType'] as String),
      seriesType: map['seriesType'] == null ? null : pulumi.Output.create<String>(map['seriesType'] as String),
      shardNumber: map['shardNumber'] == null ? null : pulumi.Output.create<int>(map['shardNumber'] as int),
      sortedBy: map['sortedBy'] == null ? null : pulumi.Output.create<String>(map['sortedBy'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

