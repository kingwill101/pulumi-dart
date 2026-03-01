// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_strategies_strategy_default_addr_pool.dart';
import 'get_access_strategies_strategy_failover_addr_pool.dart';
import 'get_access_strategies_strategy_line.dart';

class GetAccessStrategiesStrategy {
  /// The primary/secondary switchover policy for address pool groups.
  final String accessMode;
  /// The first ID of the resource.
  final String accessStrategyId;
  /// The time when the access policy was created.
  final String createTime;
  /// The timestamp that indicates when the access policy was created.
  final String createTimestamp;
  /// The type of the primary address pool.
  final String defaultAddrPoolType;
  /// The address pools in the primary address pool group.
  final List<GetAccessStrategiesStrategyDefaultAddrPool> defaultAddrPools;
  /// The number of addresses currently available in the primary address pool.
  final int defaultAvailableAddrNum;
  /// Indicates whether scheduling optimization for latency resolution was enabled for the primary address pool group.
  final String defaultLatencyOptimization;
  /// The load balancing policy of the primary address pool group.
  final String defaultLbaStrategy;
  /// The maximum number of addresses returned by the primary address pool set.
  final int defaultMaxReturnAddrNum;
  /// The minimum number of available addresses for the primary address pool set.
  final int defaultMinAvailableAddrNum;
  /// The type of the active address pool group.
  final String effectiveAddrPoolGroupType;
  /// The type of the secondary address pool.
  final String failoverAddrPoolType;
  /// The address pools in the secondary address pool group.
  final List<GetAccessStrategiesStrategyFailoverAddrPool> failoverAddrPools;
  /// The number of available addresses in the standby address pool.
  final int failoverAvailableAddrNum;
  /// Indicates whether scheduling optimization for latency resolution was enabled for the secondary address pool group.
  final String failoverLatencyOptimization;
  /// The load balancing policy of the secondary address pool group.
  final String failoverLbaStrategy;
  /// The maximum number of returned addresses in the standby address pool.
  final int failoverMaxReturnAddrNum;
  /// The minimum number of available addresses in the standby address pool.
  final int failoverMinAvailableAddrNum;
  /// The ID of the Access Strategy.
  final String id;
  /// The Id of the associated instance.
  final String instanceId;
  /// List of source regions.
  final List<GetAccessStrategiesStrategyLine> lines;
  /// The type of the access policy.
  final String strategyMode;
  /// The name of the access policy.
  final String strategyName;

  /// Creates a new [GetAccessStrategiesStrategy].
  /// [accessMode] The primary/secondary switchover policy for address pool groups.
  /// [accessStrategyId] The first ID of the resource.
  /// [createTime] The time when the access policy was created.
  /// [createTimestamp] The timestamp that indicates when the access policy was created.
  /// [defaultAddrPoolType] The type of the primary address pool.
  /// [defaultAddrPools] The address pools in the primary address pool group.
  /// [defaultAvailableAddrNum] The number of addresses currently available in the primary address pool.
  /// [defaultLatencyOptimization] Indicates whether scheduling optimization for latency resolution was enabled for the primary address pool group.
  /// [defaultLbaStrategy] The load balancing policy of the primary address pool group.
  /// [defaultMaxReturnAddrNum] The maximum number of addresses returned by the primary address pool set.
  /// [defaultMinAvailableAddrNum] The minimum number of available addresses for the primary address pool set.
  /// [effectiveAddrPoolGroupType] The type of the active address pool group.
  /// [failoverAddrPoolType] The type of the secondary address pool.
  /// [failoverAddrPools] The address pools in the secondary address pool group.
  /// [failoverAvailableAddrNum] The number of available addresses in the standby address pool.
  /// [failoverLatencyOptimization] Indicates whether scheduling optimization for latency resolution was enabled for the secondary address pool group.
  /// [failoverLbaStrategy] The load balancing policy of the secondary address pool group.
  /// [failoverMaxReturnAddrNum] The maximum number of returned addresses in the standby address pool.
  /// [failoverMinAvailableAddrNum] The minimum number of available addresses in the standby address pool.
  /// [id] The ID of the Access Strategy.
  /// [instanceId] The Id of the associated instance.
  /// [lines] List of source regions.
  /// [strategyMode] The type of the access policy.
  /// [strategyName] The name of the access policy.
  GetAccessStrategiesStrategy({
    required this.accessMode,
    required this.accessStrategyId,
    required this.createTime,
    required this.createTimestamp,
    required this.defaultAddrPoolType,
    required this.defaultAddrPools,
    required this.defaultAvailableAddrNum,
    required this.defaultLatencyOptimization,
    required this.defaultLbaStrategy,
    required this.defaultMaxReturnAddrNum,
    required this.defaultMinAvailableAddrNum,
    required this.effectiveAddrPoolGroupType,
    required this.failoverAddrPoolType,
    required this.failoverAddrPools,
    required this.failoverAvailableAddrNum,
    required this.failoverLatencyOptimization,
    required this.failoverLbaStrategy,
    required this.failoverMaxReturnAddrNum,
    required this.failoverMinAvailableAddrNum,
    required this.id,
    required this.instanceId,
    required this.lines,
    required this.strategyMode,
    required this.strategyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'accessStrategyId': accessStrategyId,
      'createTime': createTime,
      'createTimestamp': createTimestamp,
      'defaultAddrPoolType': defaultAddrPoolType,
      'defaultAddrPools': pulumi.Input.encodeList<GetAccessStrategiesStrategyDefaultAddrPool, Map<String, dynamic>>(defaultAddrPools, (value) => value.toMap()),
      'defaultAvailableAddrNum': defaultAvailableAddrNum,
      'defaultLatencyOptimization': defaultLatencyOptimization,
      'defaultLbaStrategy': defaultLbaStrategy,
      'defaultMaxReturnAddrNum': defaultMaxReturnAddrNum,
      'defaultMinAvailableAddrNum': defaultMinAvailableAddrNum,
      'effectiveAddrPoolGroupType': effectiveAddrPoolGroupType,
      'failoverAddrPoolType': failoverAddrPoolType,
      'failoverAddrPools': pulumi.Input.encodeList<GetAccessStrategiesStrategyFailoverAddrPool, Map<String, dynamic>>(failoverAddrPools, (value) => value.toMap()),
      'failoverAvailableAddrNum': failoverAvailableAddrNum,
      'failoverLatencyOptimization': failoverLatencyOptimization,
      'failoverLbaStrategy': failoverLbaStrategy,
      'failoverMaxReturnAddrNum': failoverMaxReturnAddrNum,
      'failoverMinAvailableAddrNum': failoverMinAvailableAddrNum,
      'id': id,
      'instanceId': instanceId,
      'lines': pulumi.Input.encodeList<GetAccessStrategiesStrategyLine, Map<String, dynamic>>(lines, (value) => value.toMap()),
      'strategyMode': strategyMode,
      'strategyName': strategyName,
    };
  }

  factory GetAccessStrategiesStrategy.fromMap(Map<String, dynamic> map) {
    return GetAccessStrategiesStrategy(
      accessMode: map['accessMode'] as String,
      accessStrategyId: map['accessStrategyId'] as String,
      createTime: map['createTime'] as String,
      createTimestamp: map['createTimestamp'] as String,
      defaultAddrPoolType: map['defaultAddrPoolType'] as String,
      defaultAddrPools: pulumi.Input.decodeList<GetAccessStrategiesStrategyDefaultAddrPool>(map['defaultAddrPools'], (value) => GetAccessStrategiesStrategyDefaultAddrPool.fromMap((value as Map).cast<String, dynamic>())),
      defaultAvailableAddrNum: map['defaultAvailableAddrNum'] as int,
      defaultLatencyOptimization: map['defaultLatencyOptimization'] as String,
      defaultLbaStrategy: map['defaultLbaStrategy'] as String,
      defaultMaxReturnAddrNum: map['defaultMaxReturnAddrNum'] as int,
      defaultMinAvailableAddrNum: map['defaultMinAvailableAddrNum'] as int,
      effectiveAddrPoolGroupType: map['effectiveAddrPoolGroupType'] as String,
      failoverAddrPoolType: map['failoverAddrPoolType'] as String,
      failoverAddrPools: pulumi.Input.decodeList<GetAccessStrategiesStrategyFailoverAddrPool>(map['failoverAddrPools'], (value) => GetAccessStrategiesStrategyFailoverAddrPool.fromMap((value as Map).cast<String, dynamic>())),
      failoverAvailableAddrNum: map['failoverAvailableAddrNum'] as int,
      failoverLatencyOptimization: map['failoverLatencyOptimization'] as String,
      failoverLbaStrategy: map['failoverLbaStrategy'] as String,
      failoverMaxReturnAddrNum: map['failoverMaxReturnAddrNum'] as int,
      failoverMinAvailableAddrNum: map['failoverMinAvailableAddrNum'] as int,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      lines: pulumi.Input.decodeList<GetAccessStrategiesStrategyLine>(map['lines'], (value) => GetAccessStrategiesStrategyLine.fromMap((value as Map).cast<String, dynamic>())),
      strategyMode: map['strategyMode'] as String,
      strategyName: map['strategyName'] as String,
    );
  }
}

