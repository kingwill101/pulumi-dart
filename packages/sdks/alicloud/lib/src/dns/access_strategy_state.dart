// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_strategy_default_addr_pool.dart';
import 'access_strategy_failover_addr_pool.dart';
import 'access_strategy_line.dart';

/// Input properties used for looking up and filtering AccessStrategy resources.
class AccessStrategyState {
  /// The primary/secondary switchover policy for address pool groups. Valid values: `AUTO`, `DEFAULT`, `FAILOVER`.
  final pulumi.Input<String>? accessMode;

  /// The type of the primary address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  final pulumi.Input<String>? defaultAddrPoolType;

  /// List of primary address pool collections. See `default_addr_pools` below for details.
  final pulumi.Input<List<AccessStrategyDefaultAddrPool>>? defaultAddrPools;

  /// Specifies whether to enable scheduling optimization for latency resolution for the primary address pool group. Valid values: `OPEN`, `CLOSE`.
  final pulumi.Input<String>? defaultLatencyOptimization;

  /// The load balancing policy of the primary address pool group. Valid values: `ALL_RR`, `RATIO`. **NOTE:** The `default_lba_strategy` is required under the condition that `strategy_mode` is `GEO`.
  final pulumi.Input<String>? defaultLbaStrategy;

  /// The maximum number of addresses returned by the primary address pool set. **NOTE:** The `default_max_return_addr_num` is required under the condition that `strategy_mode` is `LATENCY`.
  final pulumi.Input<int>? defaultMaxReturnAddrNum;

  /// The minimum number of available addresses for the primary address pool set.
  final pulumi.Input<int>? defaultMinAvailableAddrNum;

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
  final pulumi.Input<String>? instanceId;

  /// The lang.
  final pulumi.Input<String>? lang;

  /// The source regions. See `lines` below for details. **NOTE:** The `lines` is required under the condition that `strategy_mode` is `GEO`.
  final pulumi.Input<List<AccessStrategyLine>>? lines;

  /// The type of the access policy. Valid values: `GEO` or `LATENCY`. `GEO`: based on geographic location. `LATENCY`: Based on delay.
  final pulumi.Input<String>? strategyMode;

  /// The name of the access policy.
  final pulumi.Input<String>? strategyName;

  /// Creates a new [AccessStrategyState].
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
  AccessStrategyState({
    this.accessMode,
    this.defaultAddrPoolType,
    this.defaultAddrPools,
    this.defaultLatencyOptimization,
    this.defaultLbaStrategy,
    this.defaultMaxReturnAddrNum,
    this.defaultMinAvailableAddrNum,
    this.failoverAddrPoolType,
    this.failoverAddrPools,
    this.failoverLatencyOptimization,
    this.failoverLbaStrategy,
    this.failoverMaxReturnAddrNum,
    this.failoverMinAvailableAddrNum,
    this.instanceId,
    this.lang,
    this.lines,
    this.strategyMode,
    this.strategyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'defaultAddrPoolType': ?defaultAddrPoolType,
      'defaultAddrPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessStrategyDefaultAddrPool>,
            List<Map<String, dynamic>>
          >(
            defaultAddrPools,
            (value) =>
                pulumi.Input.encodeList<
                  AccessStrategyDefaultAddrPool,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultLatencyOptimization': ?defaultLatencyOptimization,
      'defaultLbaStrategy': ?defaultLbaStrategy,
      'defaultMaxReturnAddrNum': ?defaultMaxReturnAddrNum,
      'defaultMinAvailableAddrNum': ?defaultMinAvailableAddrNum,
      'failoverAddrPoolType': ?failoverAddrPoolType,
      'failoverAddrPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessStrategyFailoverAddrPool>,
            List<Map<String, dynamic>>
          >(
            failoverAddrPools,
            (value) =>
                pulumi.Input.encodeList<
                  AccessStrategyFailoverAddrPool,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'failoverLatencyOptimization': ?failoverLatencyOptimization,
      'failoverLbaStrategy': ?failoverLbaStrategy,
      'failoverMaxReturnAddrNum': ?failoverMaxReturnAddrNum,
      'failoverMinAvailableAddrNum': ?failoverMinAvailableAddrNum,
      'instanceId': ?instanceId,
      'lang': ?lang,
      'lines':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessStrategyLine>,
            List<Map<String, dynamic>>
          >(
            lines,
            (value) =>
                pulumi.Input.encodeList<
                  AccessStrategyLine,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'strategyMode': ?strategyMode,
      'strategyName': ?strategyName,
    };
  }

  factory AccessStrategyState.fromMap(Map<String, dynamic> map) {
    return AccessStrategyState(
      accessMode: (() {
        final guardedValue = map['accessMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultAddrPoolType: (() {
        final guardedValue = map['defaultAddrPoolType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultAddrPools: (() {
        final guardedValue = map['defaultAddrPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessStrategyDefaultAddrPool>(
            guardedValue,
            (value) => AccessStrategyDefaultAddrPool.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      defaultLatencyOptimization: (() {
        final guardedValue = map['defaultLatencyOptimization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultLbaStrategy: (() {
        final guardedValue = map['defaultLbaStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultMaxReturnAddrNum: (() {
        final guardedValue = map['defaultMaxReturnAddrNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      defaultMinAvailableAddrNum: (() {
        final guardedValue = map['defaultMinAvailableAddrNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      failoverAddrPoolType: (() {
        final guardedValue = map['failoverAddrPoolType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failoverAddrPools: (() {
        final guardedValue = map['failoverAddrPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessStrategyFailoverAddrPool>(
            guardedValue,
            (value) => AccessStrategyFailoverAddrPool.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      failoverLatencyOptimization: (() {
        final guardedValue = map['failoverLatencyOptimization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failoverLbaStrategy: (() {
        final guardedValue = map['failoverLbaStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failoverMaxReturnAddrNum: (() {
        final guardedValue = map['failoverMaxReturnAddrNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      failoverMinAvailableAddrNum: (() {
        final guardedValue = map['failoverMinAvailableAddrNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lines: (() {
        final guardedValue = map['lines'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessStrategyLine>(
            guardedValue,
            (value) => AccessStrategyLine.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      strategyMode: (() {
        final guardedValue = map['strategyMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      strategyName: (() {
        final guardedValue = map['strategyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
