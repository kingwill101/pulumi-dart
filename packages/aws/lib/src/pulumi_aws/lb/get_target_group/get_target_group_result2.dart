// ignore_for_file: unused_element, unnecessary_cast

import '../get_target_group_health_check/get_target_group_health_check2.dart';
import '../get_target_group_stickiness/get_target_group_stickiness2.dart';

/// Result data returned by getTargetGroup.
class GetTargetGroupResult2 {
  final String arn;
  final String arnSuffix;
  final bool connectionTermination;
  final String deregistrationDelay;
  final GetTargetGroupHealthCheck2 healthCheck;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool lambdaMultiValueHeadersEnabled;
  final List<String> loadBalancerArns;
  final String loadBalancingAlgorithmType;
  final String loadBalancingAnomalyMitigation;
  final String loadBalancingCrossZoneEnabled;
  final String name;
  final int port;
  final String preserveClientIp;
  final String protocol;
  final String protocolVersion;
  final bool proxyProtocolV2;
  final String region;
  final int slowStart;
  final GetTargetGroupStickiness2 stickiness;
  final Map<String, String> tags;
  final int targetControlPort;
  final String targetType;
  final String vpcId;

  GetTargetGroupResult2({
    required this.arn,
    required this.arnSuffix,
    required this.connectionTermination,
    required this.deregistrationDelay,
    required this.healthCheck,
    required this.id,
    required this.lambdaMultiValueHeadersEnabled,
    required this.loadBalancerArns,
    required this.loadBalancingAlgorithmType,
    required this.loadBalancingAnomalyMitigation,
    required this.loadBalancingCrossZoneEnabled,
    required this.name,
    required this.port,
    required this.preserveClientIp,
    required this.protocol,
    required this.protocolVersion,
    required this.proxyProtocolV2,
    required this.region,
    required this.slowStart,
    required this.stickiness,
    required this.tags,
    required this.targetControlPort,
    required this.targetType,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['arnSuffix'] = arnSuffix;
    map['connectionTermination'] = connectionTermination;
    map['deregistrationDelay'] = deregistrationDelay;
    map['healthCheck'] = healthCheck.toMap();
    map['id'] = id;
    map['lambdaMultiValueHeadersEnabled'] = lambdaMultiValueHeadersEnabled;
    map['loadBalancerArns'] = loadBalancerArns;
    map['loadBalancingAlgorithmType'] = loadBalancingAlgorithmType;
    map['loadBalancingAnomalyMitigation'] = loadBalancingAnomalyMitigation;
    map['loadBalancingCrossZoneEnabled'] = loadBalancingCrossZoneEnabled;
    map['name'] = name;
    map['port'] = port;
    map['preserveClientIp'] = preserveClientIp;
    map['protocol'] = protocol;
    map['protocolVersion'] = protocolVersion;
    map['proxyProtocolV2'] = proxyProtocolV2;
    map['region'] = region;
    map['slowStart'] = slowStart;
    map['stickiness'] = stickiness.toMap();
    map['tags'] = tags;
    map['targetControlPort'] = targetControlPort;
    map['targetType'] = targetType;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetTargetGroupResult2.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupResult2(
      arn: map['arn'] as String,
      arnSuffix: map['arnSuffix'] as String,
      connectionTermination: map['connectionTermination'] as bool,
      deregistrationDelay: map['deregistrationDelay'] as String,
      healthCheck: GetTargetGroupHealthCheck2.fromMap(
          (map['healthCheck'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      lambdaMultiValueHeadersEnabled:
          map['lambdaMultiValueHeadersEnabled'] as bool,
      loadBalancerArns: (map['loadBalancerArns'] as List).cast<String>(),
      loadBalancingAlgorithmType: map['loadBalancingAlgorithmType'] as String,
      loadBalancingAnomalyMitigation:
          map['loadBalancingAnomalyMitigation'] as String,
      loadBalancingCrossZoneEnabled:
          map['loadBalancingCrossZoneEnabled'] as String,
      name: map['name'] as String,
      port: map['port'] as int,
      preserveClientIp: map['preserveClientIp'] as String,
      protocol: map['protocol'] as String,
      protocolVersion: map['protocolVersion'] as String,
      proxyProtocolV2: map['proxyProtocolV2'] as bool,
      region: map['region'] as String,
      slowStart: map['slowStart'] as int,
      stickiness: GetTargetGroupStickiness2.fromMap(
          (map['stickiness'] as Map).cast<String, dynamic>()),
      tags: (map['tags'] as Map).cast<String, String>(),
      targetControlPort: map['targetControlPort'] as int,
      targetType: map['targetType'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
