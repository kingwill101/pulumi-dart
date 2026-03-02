// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_strategies_strategy_default_addr_pool.dart';
import 'get_access_strategies_strategy_failover_addr_pool.dart';
import 'get_access_strategies_strategy_line.dart';

class GetAccessStrategiesStrategy {
  /// The primary/secondary switchover policy for address pool groups.
  final pulumi.Input<String> accessMode;
  /// The first ID of the resource.
  final pulumi.Input<String> accessStrategyId;
  /// The time when the access policy was created.
  final pulumi.Input<String> createTime;
  /// The timestamp that indicates when the access policy was created.
  final pulumi.Input<String> createTimestamp;
  /// The type of the primary address pool.
  final pulumi.Input<String> defaultAddrPoolType;
  /// The address pools in the primary address pool group.
  final pulumi.Input<List<GetAccessStrategiesStrategyDefaultAddrPool>> defaultAddrPools;
  /// The number of addresses currently available in the primary address pool.
  final pulumi.Input<int> defaultAvailableAddrNum;
  /// Indicates whether scheduling optimization for latency resolution was enabled for the primary address pool group.
  final pulumi.Input<String> defaultLatencyOptimization;
  /// The load balancing policy of the primary address pool group.
  final pulumi.Input<String> defaultLbaStrategy;
  /// The maximum number of addresses returned by the primary address pool set.
  final pulumi.Input<int> defaultMaxReturnAddrNum;
  /// The minimum number of available addresses for the primary address pool set.
  final pulumi.Input<int> defaultMinAvailableAddrNum;
  /// The type of the active address pool group.
  final pulumi.Input<String> effectiveAddrPoolGroupType;
  /// The type of the secondary address pool.
  final pulumi.Input<String> failoverAddrPoolType;
  /// The address pools in the secondary address pool group.
  final pulumi.Input<List<GetAccessStrategiesStrategyFailoverAddrPool>> failoverAddrPools;
  /// The number of available addresses in the standby address pool.
  final pulumi.Input<int> failoverAvailableAddrNum;
  /// Indicates whether scheduling optimization for latency resolution was enabled for the secondary address pool group.
  final pulumi.Input<String> failoverLatencyOptimization;
  /// The load balancing policy of the secondary address pool group.
  final pulumi.Input<String> failoverLbaStrategy;
  /// The maximum number of returned addresses in the standby address pool.
  final pulumi.Input<int> failoverMaxReturnAddrNum;
  /// The minimum number of available addresses in the standby address pool.
  final pulumi.Input<int> failoverMinAvailableAddrNum;
  /// The ID of the Access Strategy.
  final pulumi.Input<String> id;
  /// The Id of the associated instance.
  final pulumi.Input<String> instanceId;
  /// List of source regions.
  final pulumi.Input<List<GetAccessStrategiesStrategyLine>> lines;
  /// The type of the access policy.
  final pulumi.Input<String> strategyMode;
  /// The name of the access policy.
  final pulumi.Input<String> strategyName;

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
      'defaultAddrPools': pulumi.Input.mapInputValue<List<GetAccessStrategiesStrategyDefaultAddrPool>, List<Map<String, dynamic>>>(defaultAddrPools, (value) => pulumi.Input.encodeList<GetAccessStrategiesStrategyDefaultAddrPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultAvailableAddrNum': defaultAvailableAddrNum,
      'defaultLatencyOptimization': defaultLatencyOptimization,
      'defaultLbaStrategy': defaultLbaStrategy,
      'defaultMaxReturnAddrNum': defaultMaxReturnAddrNum,
      'defaultMinAvailableAddrNum': defaultMinAvailableAddrNum,
      'effectiveAddrPoolGroupType': effectiveAddrPoolGroupType,
      'failoverAddrPoolType': failoverAddrPoolType,
      'failoverAddrPools': pulumi.Input.mapInputValue<List<GetAccessStrategiesStrategyFailoverAddrPool>, List<Map<String, dynamic>>>(failoverAddrPools, (value) => pulumi.Input.encodeList<GetAccessStrategiesStrategyFailoverAddrPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failoverAvailableAddrNum': failoverAvailableAddrNum,
      'failoverLatencyOptimization': failoverLatencyOptimization,
      'failoverLbaStrategy': failoverLbaStrategy,
      'failoverMaxReturnAddrNum': failoverMaxReturnAddrNum,
      'failoverMinAvailableAddrNum': failoverMinAvailableAddrNum,
      'id': id,
      'instanceId': instanceId,
      'lines': pulumi.Input.mapInputValue<List<GetAccessStrategiesStrategyLine>, List<Map<String, dynamic>>>(lines, (value) => pulumi.Input.encodeList<GetAccessStrategiesStrategyLine, Map<String, dynamic>>(value, (value) => value.toMap())),
      'strategyMode': strategyMode,
      'strategyName': strategyName,
    };
  }

  factory GetAccessStrategiesStrategy.fromMap(Map<String, dynamic> map) {
    return GetAccessStrategiesStrategy(
      accessMode: (map['accessMode'] as String).input(),
      accessStrategyId: (map['accessStrategyId'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      createTimestamp: (map['createTimestamp'] as String).input(),
      defaultAddrPoolType: (map['defaultAddrPoolType'] as String).input(),
      defaultAddrPools: (pulumi.Input.decodeList<GetAccessStrategiesStrategyDefaultAddrPool>(map['defaultAddrPools'], (value) => GetAccessStrategiesStrategyDefaultAddrPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultAvailableAddrNum: (map['defaultAvailableAddrNum'] as int).input(),
      defaultLatencyOptimization: (map['defaultLatencyOptimization'] as String).input(),
      defaultLbaStrategy: (map['defaultLbaStrategy'] as String).input(),
      defaultMaxReturnAddrNum: (map['defaultMaxReturnAddrNum'] as int).input(),
      defaultMinAvailableAddrNum: (map['defaultMinAvailableAddrNum'] as int).input(),
      effectiveAddrPoolGroupType: (map['effectiveAddrPoolGroupType'] as String).input(),
      failoverAddrPoolType: (map['failoverAddrPoolType'] as String).input(),
      failoverAddrPools: (pulumi.Input.decodeList<GetAccessStrategiesStrategyFailoverAddrPool>(map['failoverAddrPools'], (value) => GetAccessStrategiesStrategyFailoverAddrPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      failoverAvailableAddrNum: (map['failoverAvailableAddrNum'] as int).input(),
      failoverLatencyOptimization: (map['failoverLatencyOptimization'] as String).input(),
      failoverLbaStrategy: (map['failoverLbaStrategy'] as String).input(),
      failoverMaxReturnAddrNum: (map['failoverMaxReturnAddrNum'] as int).input(),
      failoverMinAvailableAddrNum: (map['failoverMinAvailableAddrNum'] as int).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      lines: (pulumi.Input.decodeList<GetAccessStrategiesStrategyLine>(map['lines'], (value) => GetAccessStrategiesStrategyLine.fromMap((value as Map).cast<String, dynamic>()))).input(),
      strategyMode: (map['strategyMode'] as String).input(),
      strategyName: (map['strategyName'] as String).input(),
    );
  }
}

