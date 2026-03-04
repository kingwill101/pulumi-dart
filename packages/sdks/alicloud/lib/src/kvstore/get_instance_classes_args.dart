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
    this.architecture,
    this.editionType,
    this.engine,
    this.engineVersion,
    this.instanceChargeType,
    this.nodeType,
    this.outputFile,
    this.packageType,
    this.performanceType,
    this.productType,
    this.seriesType,
    this.shardNumber,
    this.sortedBy,
    this.storageType,
    required this.zoneId,
  });

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
      architecture: (() {
        final guardedValue = map['architecture'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      editionType: (() {
        final guardedValue = map['editionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engineVersion: (() {
        final guardedValue = map['engineVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeType: (() {
        final guardedValue = map['nodeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageType: (() {
        final guardedValue = map['packageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      performanceType: (() {
        final guardedValue = map['performanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productType: (() {
        final guardedValue = map['productType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      seriesType: (() {
        final guardedValue = map['seriesType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shardNumber: (() {
        final guardedValue = map['shardNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sortedBy: (() {
        final guardedValue = map['sortedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageType: (() {
        final guardedValue = map['storageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
