// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'store_encrypt_conf.dart';

/// {@template pulumi_log_store_store_args_doc}
/// The set of arguments for Store.
/// {@endtemplate}
/// {@macro pulumi_log_store_store_args_doc}
class StoreArgs {
  /// Determines whether to append log meta automatically. The meta includes log receive time and client IP address. Default to `true`.
  final pulumi.Input<bool>? appendMeta;
  /// Determines whether to automatically split a shard. Default to `false`.
  final pulumi.Input<bool>? autoSplit;
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
  /// Determines whether store type is metric. `Metrics` means metric store, empty means log store.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? telemetryType;

  /// Creates a new [StoreArgs].
  /// [appendMeta] Determines whether to append log meta automatically. The meta includes log receive time and client IP address. Default to `true`.
  /// [autoSplit] Determines whether to automatically split a shard. Default to `false`.
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
  /// [telemetryType] Determines whether store type is metric. `Metrics` means metric store, empty means log store.
  StoreArgs({
    this.appendMeta,
    this.autoSplit,
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
    this.telemetryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendMeta': ?appendMeta,
      'autoSplit': ?autoSplit,
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
      'telemetryType': ?telemetryType,
    };
  }

  factory StoreArgs.fromMap(Map<String, dynamic> map) {
    return StoreArgs(
      appendMeta: map['appendMeta'] == null ? null : (map['appendMeta']! as bool).input(),
      autoSplit: map['autoSplit'] == null ? null : (map['autoSplit']! as bool).input(),
      enableWebTracking: map['enableWebTracking'] == null ? null : (map['enableWebTracking']! as bool).input(),
      encryptConf: map['encryptConf'] == null ? null : (StoreEncryptConf.fromMap((map['encryptConf']! as Map).cast<String, dynamic>())).input(),
      hotTtl: map['hotTtl'] == null ? null : (map['hotTtl']! as int).input(),
      infrequentAccessTtl: map['infrequentAccessTtl'] == null ? null : (map['infrequentAccessTtl']! as int).input(),
      logstoreName: map['logstoreName'] == null ? null : (map['logstoreName']! as String).input(),
      maxSplitShardCount: map['maxSplitShardCount'] == null ? null : (map['maxSplitShardCount']! as int).input(),
      meteringMode: map['meteringMode'] == null ? null : (map['meteringMode']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod']! as int).input(),
      shardCount: map['shardCount'] == null ? null : (map['shardCount']! as int).input(),
      telemetryType: map['telemetryType'] == null ? null : (map['telemetryType']! as String).input(),
    );
  }
}

