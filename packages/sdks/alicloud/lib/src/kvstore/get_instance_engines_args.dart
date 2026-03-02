// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_get_instance_engines_get_instance_engines_args_doc}
/// Arguments for getInstanceEngines.
/// {@endtemplate}
/// {@macro pulumi_kvstore_get_instance_engines_get_instance_engines_args_doc}
class GetInstanceEnginesArgs {
  /// Database type. Options are `Redis`, `Memcache`. Default to `Redis`.
  final pulumi.Input<String>? engine;
  /// Database version required by the user. Value options of Redis can refer to the latest docs [detail info](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-createinstance-redis) `EngineVersion`. Value of Memcache should be empty.
  final pulumi.Input<String>? engineVersion;
  /// Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PrePaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// File name where to save data source results (after running `pulumi up`).
  final pulumi.Input<String>? outputFile;
  /// The Zone to launch the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetInstanceEnginesArgs].
  /// [engine] Database type. Options are `Redis`, `Memcache`. Default to `Redis`.
  /// [engineVersion] Database version required by the user. Value options of Redis can refer to the latest docs [detail info](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-createinstance-redis) `EngineVersion`. Value of Memcache should be empty.
  /// [instanceChargeType] Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PrePaid`.
  /// [outputFile] File name where to save data source results (after running `pulumi up`).
  /// [zoneId] The Zone to launch the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  GetInstanceEnginesArgs({
    this.engine,
    this.engineVersion,
    this.instanceChargeType,
    this.outputFile,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'instanceChargeType': ?instanceChargeType,
      'outputFile': ?outputFile,
      'zoneId': zoneId,
    };
  }

  factory GetInstanceEnginesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnginesArgs(
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

