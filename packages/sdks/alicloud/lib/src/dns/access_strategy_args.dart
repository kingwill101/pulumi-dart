// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_strategy_default_addr_pool.dart';
import 'access_strategy_failover_addr_pool.dart';
import 'access_strategy_line.dart';

/// {@template pulumi_dns_access_strategy_access_strategy_args_doc}
/// The set of arguments for AccessStrategy.
/// {@endtemplate}
/// {@macro pulumi_dns_access_strategy_access_strategy_args_doc}
class AccessStrategyArgs {
  /// The primary/secondary switchover policy for address pool groups. Valid values: `AUTO`, `DEFAULT`, `FAILOVER`.
  final pulumi.Input<String>? accessMode;
  /// The type of the primary address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  final pulumi.Input<String> defaultAddrPoolType;
  /// List of primary address pool collections. See `default_addr_pools` below for details.
  final pulumi.Input<List<AccessStrategyDefaultAddrPool>> defaultAddrPools;
  /// Specifies whether to enable scheduling optimization for latency resolution for the primary address pool group. Valid values: `OPEN`, `CLOSE`.
  final pulumi.Input<String>? defaultLatencyOptimization;
  /// The load balancing policy of the primary address pool group. Valid values: `ALL_RR`, `RATIO`. **NOTE:** The `default_lba_strategy` is required under the condition that `strategy_mode` is `GEO`.
  final pulumi.Input<String>? defaultLbaStrategy;
  /// The maximum number of addresses returned by the primary address pool set. **NOTE:** The `default_max_return_addr_num` is required under the condition that `strategy_mode` is `LATENCY`.
  final pulumi.Input<int>? defaultMaxReturnAddrNum;
  /// The minimum number of available addresses for the primary address pool set.
  final pulumi.Input<int> defaultMinAvailableAddrNum;
  /// The type of the secondary address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  final pulumi.Input<String>? failoverAddrPoolType;
  /// List of backup address pool sets. See `failover_addr_pools` below for details.
  final pulumi.Input<List<AccessStrategyFailoverAddrPool>>? failoverAddrPools;
  /// Specifies whether to enable scheduling optimization for latency resolution for the secondary address pool group. Valid values: `OPEN`, `CLOSE`.
  final pulumi.Input<String>? failoverLatencyOptimization;
  /// The load balancing policy of the secondary address pool group. Valid values: `ALL_RR`, `RATIO`.
  final pulumi.Input<String>? failoverLbaStrategy;
  /// The maximum number of returned addresses in the standby address pool.
  final pulumi.Input<int>? failoverMaxReturnAddrNum;
  /// The minimum number of available addresses in the standby address pool.
  final pulumi.Input<int>? failoverMinAvailableAddrNum;
  /// The Id of the associated instance.
  final pulumi.Input<String> instanceId;
  /// The lang.
  final pulumi.Input<String>? lang;
  /// The source regions. See `lines` below for details. **NOTE:** The `lines` is required under the condition that `strategy_mode` is `GEO`.
  final pulumi.Input<List<AccessStrategyLine>>? lines;
  /// The type of the access policy. Valid values: `GEO` or `LATENCY`. `GEO`: based on geographic location. `LATENCY`: Based on delay.
  final pulumi.Input<String> strategyMode;
  /// The name of the access policy.
  final pulumi.Input<String> strategyName;

  /// Creates a new [AccessStrategyArgs].
  /// [accessMode] The primary/secondary switchover policy for address pool groups. Valid values: `AUTO`, `DEFAULT`, `FAILOVER`.
  /// [defaultAddrPoolType] The type of the primary address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  /// [defaultAddrPools] List of primary address pool collections. See `default_addr_pools` below for details.
  /// [defaultLatencyOptimization] Specifies whether to enable scheduling optimization for latency resolution for the primary address pool group. Valid values: `OPEN`, `CLOSE`.
  /// [defaultLbaStrategy] The load balancing policy of the primary address pool group. Valid values: `ALL_RR`, `RATIO`. **NOTE:** The `default_lba_strategy` is required under the condition that `strategy_mode` is `GEO`.
  /// [defaultMaxReturnAddrNum] The maximum number of addresses returned by the primary address pool set. **NOTE:** The `default_max_return_addr_num` is required under the condition that `strategy_mode` is `LATENCY`.
  /// [defaultMinAvailableAddrNum] The minimum number of available addresses for the primary address pool set.
  /// [failoverAddrPoolType] The type of the secondary address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  /// [failoverAddrPools] List of backup address pool sets. See `failover_addr_pools` below for details.
  /// [failoverLatencyOptimization] Specifies whether to enable scheduling optimization for latency resolution for the secondary address pool group. Valid values: `OPEN`, `CLOSE`.
  /// [failoverLbaStrategy] The load balancing policy of the secondary address pool group. Valid values: `ALL_RR`, `RATIO`.
  /// [failoverMaxReturnAddrNum] The maximum number of returned addresses in the standby address pool.
  /// [failoverMinAvailableAddrNum] The minimum number of available addresses in the standby address pool.
  /// [instanceId] The Id of the associated instance.
  /// [lang] The lang.
  /// [lines] The source regions. See `lines` below for details. **NOTE:** The `lines` is required under the condition that `strategy_mode` is `GEO`.
  /// [strategyMode] The type of the access policy. Valid values: `GEO` or `LATENCY`. `GEO`: based on geographic location. `LATENCY`: Based on delay.
  /// [strategyName] The name of the access policy.
  AccessStrategyArgs({
    pulumi.Output<String>? accessMode,
    required pulumi.Output<String> defaultAddrPoolType,
    required pulumi.Output<List<AccessStrategyDefaultAddrPool>> defaultAddrPools,
    pulumi.Output<String>? defaultLatencyOptimization,
    pulumi.Output<String>? defaultLbaStrategy,
    pulumi.Output<int>? defaultMaxReturnAddrNum,
    required pulumi.Output<int> defaultMinAvailableAddrNum,
    pulumi.Output<String>? failoverAddrPoolType,
    pulumi.Output<List<AccessStrategyFailoverAddrPool>>? failoverAddrPools,
    pulumi.Output<String>? failoverLatencyOptimization,
    pulumi.Output<String>? failoverLbaStrategy,
    pulumi.Output<int>? failoverMaxReturnAddrNum,
    pulumi.Output<int>? failoverMinAvailableAddrNum,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? lang,
    pulumi.Output<List<AccessStrategyLine>>? lines,
    required pulumi.Output<String> strategyMode,
    required pulumi.Output<String> strategyName,
  }) :
      accessMode = pulumi.Input.asOptionalInput<String>(accessMode),
      defaultAddrPoolType = pulumi.Input.asInput<String>(defaultAddrPoolType),
      defaultAddrPools = pulumi.Input.asInput<List<AccessStrategyDefaultAddrPool>>(defaultAddrPools),
      defaultLatencyOptimization = pulumi.Input.asOptionalInput<String>(defaultLatencyOptimization),
      defaultLbaStrategy = pulumi.Input.asOptionalInput<String>(defaultLbaStrategy),
      defaultMaxReturnAddrNum = pulumi.Input.asOptionalInput<int>(defaultMaxReturnAddrNum),
      defaultMinAvailableAddrNum = pulumi.Input.asInput<int>(defaultMinAvailableAddrNum),
      failoverAddrPoolType = pulumi.Input.asOptionalInput<String>(failoverAddrPoolType),
      failoverAddrPools = pulumi.Input.asOptionalInput<List<AccessStrategyFailoverAddrPool>>(failoverAddrPools),
      failoverLatencyOptimization = pulumi.Input.asOptionalInput<String>(failoverLatencyOptimization),
      failoverLbaStrategy = pulumi.Input.asOptionalInput<String>(failoverLbaStrategy),
      failoverMaxReturnAddrNum = pulumi.Input.asOptionalInput<int>(failoverMaxReturnAddrNum),
      failoverMinAvailableAddrNum = pulumi.Input.asOptionalInput<int>(failoverMinAvailableAddrNum),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      lines = pulumi.Input.asOptionalInput<List<AccessStrategyLine>>(lines),
      strategyMode = pulumi.Input.asInput<String>(strategyMode),
      strategyName = pulumi.Input.asInput<String>(strategyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'defaultAddrPoolType': defaultAddrPoolType,
      'defaultAddrPools': pulumi.Input.mapInputValue<List<AccessStrategyDefaultAddrPool>, List<Map<String, dynamic>>>(defaultAddrPools, (value) => pulumi.Input.encodeList<AccessStrategyDefaultAddrPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultLatencyOptimization': ?defaultLatencyOptimization,
      'defaultLbaStrategy': ?defaultLbaStrategy,
      'defaultMaxReturnAddrNum': ?defaultMaxReturnAddrNum,
      'defaultMinAvailableAddrNum': defaultMinAvailableAddrNum,
      'failoverAddrPoolType': ?failoverAddrPoolType,
      'failoverAddrPools': ?pulumi.Input.mapOptionalInputValue<List<AccessStrategyFailoverAddrPool>, List<Map<String, dynamic>>>(failoverAddrPools, (value) => pulumi.Input.encodeList<AccessStrategyFailoverAddrPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failoverLatencyOptimization': ?failoverLatencyOptimization,
      'failoverLbaStrategy': ?failoverLbaStrategy,
      'failoverMaxReturnAddrNum': ?failoverMaxReturnAddrNum,
      'failoverMinAvailableAddrNum': ?failoverMinAvailableAddrNum,
      'instanceId': instanceId,
      'lang': ?lang,
      'lines': ?pulumi.Input.mapOptionalInputValue<List<AccessStrategyLine>, List<Map<String, dynamic>>>(lines, (value) => pulumi.Input.encodeList<AccessStrategyLine, Map<String, dynamic>>(value, (value) => value.toMap())),
      'strategyMode': strategyMode,
      'strategyName': strategyName,
    };
  }

  factory AccessStrategyArgs.fromMap(Map<String, dynamic> map) {
    return AccessStrategyArgs(
      accessMode: map['accessMode'] == null ? null : pulumi.Output.create<String>(map['accessMode'] as String),
      defaultAddrPoolType: pulumi.Output.create<String>(map['defaultAddrPoolType'] as String),
      defaultAddrPools: pulumi.Output.create<List<AccessStrategyDefaultAddrPool>>(pulumi.Input.decodeList<AccessStrategyDefaultAddrPool>(map['defaultAddrPools'], (value) => AccessStrategyDefaultAddrPool.fromMap((value as Map).cast<String, dynamic>()))),
      defaultLatencyOptimization: map['defaultLatencyOptimization'] == null ? null : pulumi.Output.create<String>(map['defaultLatencyOptimization'] as String),
      defaultLbaStrategy: map['defaultLbaStrategy'] == null ? null : pulumi.Output.create<String>(map['defaultLbaStrategy'] as String),
      defaultMaxReturnAddrNum: map['defaultMaxReturnAddrNum'] == null ? null : pulumi.Output.create<int>(map['defaultMaxReturnAddrNum'] as int),
      defaultMinAvailableAddrNum: pulumi.Output.create<int>(map['defaultMinAvailableAddrNum'] as int),
      failoverAddrPoolType: map['failoverAddrPoolType'] == null ? null : pulumi.Output.create<String>(map['failoverAddrPoolType'] as String),
      failoverAddrPools: map['failoverAddrPools'] == null ? null : pulumi.Output.create<List<AccessStrategyFailoverAddrPool>>(pulumi.Input.decodeList<AccessStrategyFailoverAddrPool>(map['failoverAddrPools'], (value) => AccessStrategyFailoverAddrPool.fromMap((value as Map).cast<String, dynamic>()))),
      failoverLatencyOptimization: map['failoverLatencyOptimization'] == null ? null : pulumi.Output.create<String>(map['failoverLatencyOptimization'] as String),
      failoverLbaStrategy: map['failoverLbaStrategy'] == null ? null : pulumi.Output.create<String>(map['failoverLbaStrategy'] as String),
      failoverMaxReturnAddrNum: map['failoverMaxReturnAddrNum'] == null ? null : pulumi.Output.create<int>(map['failoverMaxReturnAddrNum'] as int),
      failoverMinAvailableAddrNum: map['failoverMinAvailableAddrNum'] == null ? null : pulumi.Output.create<int>(map['failoverMinAvailableAddrNum'] as int),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      lines: map['lines'] == null ? null : pulumi.Output.create<List<AccessStrategyLine>>(pulumi.Input.decodeList<AccessStrategyLine>(map['lines'], (value) => AccessStrategyLine.fromMap((value as Map).cast<String, dynamic>()))),
      strategyMode: pulumi.Output.create<String>(map['strategyMode'] as String),
      strategyName: pulumi.Output.create<String>(map['strategyName'] as String),
    );
  }
}

