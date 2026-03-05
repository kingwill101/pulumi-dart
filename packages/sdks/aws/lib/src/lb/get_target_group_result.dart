// ignore_for_file: unused_element, unnecessary_cast

import 'get_target_group_health_check.dart';
import 'get_target_group_stickiness.dart';

/// Result data returned by getTargetGroup.
class GetTargetGroupResult {
  final String arn;
  final String arnSuffix;
  final bool connectionTermination;
  final String deregistrationDelay;
  final GetTargetGroupHealthCheck healthCheck;

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
  final GetTargetGroupStickiness stickiness;
  final Map<String, String> tags;
  final int targetControlPort;
  final String targetType;
  final String vpcId;

  /// Creates a new [GetTargetGroupResult].
  /// [arn] Required.
  /// [arnSuffix] Required.
  /// [connectionTermination] Required.
  /// [deregistrationDelay] Required.
  /// [healthCheck] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lambdaMultiValueHeadersEnabled] Required.
  /// [loadBalancerArns] Required.
  /// [loadBalancingAlgorithmType] Required.
  /// [loadBalancingAnomalyMitigation] Required.
  /// [loadBalancingCrossZoneEnabled] Required.
  /// [name] Required.
  /// [port] Required.
  /// [preserveClientIp] Required.
  /// [protocol] Required.
  /// [protocolVersion] Required.
  /// [proxyProtocolV2] Required.
  /// [region] Required.
  /// [slowStart] Required.
  /// [stickiness] Required.
  /// [tags] Required.
  /// [targetControlPort] Required.
  /// [targetType] Required.
  /// [vpcId] Required.
  GetTargetGroupResult({
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
    return <String, dynamic>{
      'arn': arn,
      'arnSuffix': arnSuffix,
      'connectionTermination': connectionTermination,
      'deregistrationDelay': deregistrationDelay,
      'healthCheck': healthCheck.toMap(),
      'id': id,
      'lambdaMultiValueHeadersEnabled': lambdaMultiValueHeadersEnabled,
      'loadBalancerArns': loadBalancerArns,
      'loadBalancingAlgorithmType': loadBalancingAlgorithmType,
      'loadBalancingAnomalyMitigation': loadBalancingAnomalyMitigation,
      'loadBalancingCrossZoneEnabled': loadBalancingCrossZoneEnabled,
      'name': name,
      'port': port,
      'preserveClientIp': preserveClientIp,
      'protocol': protocol,
      'protocolVersion': protocolVersion,
      'proxyProtocolV2': proxyProtocolV2,
      'region': region,
      'slowStart': slowStart,
      'stickiness': stickiness.toMap(),
      'tags': tags,
      'targetControlPort': targetControlPort,
      'targetType': targetType,
      'vpcId': vpcId,
    };
  }

  factory GetTargetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupResult(
      arn: map['arn'] as String,
      arnSuffix: map['arnSuffix'] as String,
      connectionTermination: map['connectionTermination'] as bool,
      deregistrationDelay: map['deregistrationDelay'] as String,
      healthCheck: GetTargetGroupHealthCheck.fromMap(
        (map['healthCheck']! as Map).cast<String, dynamic>(),
      ),
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
      stickiness: GetTargetGroupStickiness.fromMap(
        (map['stickiness']! as Map).cast<String, dynamic>(),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
      targetControlPort: map['targetControlPort'] as int,
      targetType: map['targetType'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
