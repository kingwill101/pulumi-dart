// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'store_encrypt_conf.dart';
import 'store_shard.dart';

/// Input properties used for looking up and filtering Store resources.
class StoreState {
  /// Determines whether to append log meta automatically. The meta includes log receive time and client IP address. Default to `true`.
  final pulumi.Input<bool>? appendMeta;
  /// Determines whether to automatically split a shard. Default to `false`.
  final pulumi.Input<bool>? autoSplit;
  /// Log library creation time. Unix timestamp format that represents the number of seconds from 1970-1-1 00:00:00 UTC calculation.
  final pulumi.Input<int>? createTime;
  /// Whether open webtracking. webtracking network tracing, support the collection of HTML log, H5, Ios and android platforms.
  final pulumi.Input<bool>? enableWebTracking;
  /// Encrypted storage of data, providing data static protection capability, encrypt_conf can be updated since 1.188.0 (only enable change is supported when updating logstore). See `encrypt_conf` below.
  final pulumi.Input<StoreEncryptConf>? encryptConf;
  /// The ttl of hot storage. Default to 30, at least 30, hot storage ttl must be less than ttl.
  final pulumi.Input<int>? hotTtl;
  /// Low frequency storage time
  final pulumi.Input<int>? infrequentAccessTtl;
  /// The log store, which is unique in the same project. You need to specify one of the attributes: `logstore_name`, `name`.
  final pulumi.Input<String>? logstoreName;
  /// The maximum number of shards for automatic split, which is in the range of 1 to 256. You must specify this parameter when autoSplit is true.
  final pulumi.Input<int>? maxSplitShardCount;
  /// Metering mode. The default metering mode of ChargeByFunction, ChargeByDataIngest traffic mode.
  final pulumi.Input<String>? meteringMode;
  /// The mode of storage. Default to `standard`, must be `standard` or `query`, `lite`.
  final pulumi.Input<String>? mode;
  /// . Field 'name' has been deprecated from provider version 1.215.0. New field 'logstore_name' instead.
  final pulumi.Input<String>? name;
  /// . Field 'project' has been deprecated from provider version 1.215.0. New field 'project_name' instead.
  final pulumi.Input<String>? project;
  /// The project name to the log store belongs. You need to specify one of the attributes: `project_name`, `project`.
  final pulumi.Input<String>? projectName;
  /// The data retention time (in days). Valid values: [1-3650]. Default to 30. Log store data will be stored permanently when the value is 3650.
  final pulumi.Input<int>? retentionPeriod;
  /// The number of shards in this log store. Default to 2. You can modify it by "Split" or "Merge" operations. [Refer to details](https://www.alibabacloud.com/help/zh/sls/product-overview/shard).
  final pulumi.Input<int>? shardCount;
  /// The shard attribute.
  final pulumi.Input<List<StoreShard>>? shards;
  /// Determines whether store type is metric. `Metrics` means metric store, empty means log store.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? telemetryType;

  /// Creates a new [StoreState].
  /// [appendMeta] Determines whether to append log meta automatically. The meta includes log receive time and client IP address. Default to `true`.
  /// [autoSplit] Determines whether to automatically split a shard. Default to `false`.
  /// [createTime] Log library creation time. Unix timestamp format that represents the number of seconds from 1970-1-1 00:00:00 UTC calculation.
  /// [enableWebTracking] Whether open webtracking. webtracking network tracing, support the collection of HTML log, H5, Ios and android platforms.
  /// [encryptConf] Encrypted storage of data, providing data static protection capability, encrypt_conf can be updated since 1.188.0 (only enable change is supported when updating logstore). See `encrypt_conf` below.
  /// [hotTtl] The ttl of hot storage. Default to 30, at least 30, hot storage ttl must be less than ttl.
  /// [infrequentAccessTtl] Low frequency storage time
  /// [logstoreName] The log store, which is unique in the same project. You need to specify one of the attributes: `logstore_name`, `name`.
  /// [maxSplitShardCount] The maximum number of shards for automatic split, which is in the range of 1 to 256. You must specify this parameter when autoSplit is true.
  /// [meteringMode] Metering mode. The default metering mode of ChargeByFunction, ChargeByDataIngest traffic mode.
  /// [mode] The mode of storage. Default to `standard`, must be `standard` or `query`, `lite`.
  /// [name] . Field 'name' has been deprecated from provider version 1.215.0. New field 'logstore_name' instead.
  /// [project] . Field 'project' has been deprecated from provider version 1.215.0. New field 'project_name' instead.
  /// [projectName] The project name to the log store belongs. You need to specify one of the attributes: `project_name`, `project`.
  /// [retentionPeriod] The data retention time (in days). Valid values: [1-3650]. Default to 30. Log store data will be stored permanently when the value is 3650.
  /// [shardCount] The number of shards in this log store. Default to 2. You can modify it by "Split" or "Merge" operations. [Refer to details](https://www.alibabacloud.com/help/zh/sls/product-overview/shard).
  /// [shards] The shard attribute.
  /// [telemetryType] Determines whether store type is metric. `Metrics` means metric store, empty means log store.
  StoreState({
    this.appendMeta,
    this.autoSplit,
    this.createTime,
    this.enableWebTracking,
    this.encryptConf,
    this.hotTtl,
    this.infrequentAccessTtl,
    this.logstoreName,
    this.maxSplitShardCount,
    this.meteringMode,
    this.mode,
    this.name,
    this.project,
    this.projectName,
    this.retentionPeriod,
    this.shardCount,
    this.shards,
    this.telemetryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendMeta': ?appendMeta,
      'autoSplit': ?autoSplit,
      'createTime': ?createTime,
      'enableWebTracking': ?enableWebTracking,
      'encryptConf': ?pulumi.Input.mapOptionalInputValue<StoreEncryptConf, Map<String, dynamic>>(encryptConf, (value) => value.toMap()),
      'hotTtl': ?hotTtl,
      'infrequentAccessTtl': ?infrequentAccessTtl,
      'logstoreName': ?logstoreName,
      'maxSplitShardCount': ?maxSplitShardCount,
      'meteringMode': ?meteringMode,
      'mode': ?mode,
      'name': ?name,
      'project': ?project,
      'projectName': ?projectName,
      'retentionPeriod': ?retentionPeriod,
      'shardCount': ?shardCount,
      'shards': ?pulumi.Input.mapOptionalInputValue<List<StoreShard>, List<Map<String, dynamic>>>(shards, (value) => pulumi.Input.encodeList<StoreShard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'telemetryType': ?telemetryType,
    };
  }

  factory StoreState.fromMap(Map<String, dynamic> map) {
    return StoreState(
      appendMeta: (() { final guardedValue = map['appendMeta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoSplit: (() { final guardedValue = map['autoSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableWebTracking: (() { final guardedValue = map['enableWebTracking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptConf: (() { final guardedValue = map['encryptConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StoreEncryptConf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hotTtl: (() { final guardedValue = map['hotTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      infrequentAccessTtl: (() { final guardedValue = map['infrequentAccessTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logstoreName: (() { final guardedValue = map['logstoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSplitShardCount: (() { final guardedValue = map['maxSplitShardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      meteringMode: (() { final guardedValue = map['meteringMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shards: (() { final guardedValue = map['shards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StoreShard>(guardedValue, (value) => StoreShard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      telemetryType: (() { final guardedValue = map['telemetryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

