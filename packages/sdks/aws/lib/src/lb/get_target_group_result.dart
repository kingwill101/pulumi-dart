// ignore_for_file: unused_element, unnecessary_cast

import 'get_target_group_health_check.dart';
import 'get_target_group_stickiness.dart';

/// Result data returned by getTargetGroup.
class GetTargetGroupResult {
  final String? arn;
  final String? arnSuffix;
  final bool? connectionTermination;
  final String? deregistrationDelay;
  final GetTargetGroupHealthCheck? healthCheck;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? lambdaMultiValueHeadersEnabled;
  final List<String>? loadBalancerArns;
  final String? loadBalancingAlgorithmType;
  final String? loadBalancingAnomalyMitigation;
  final String? loadBalancingCrossZoneEnabled;
  final String? name;
  final int? port;
  final String? preserveClientIp;
  final String? protocol;
  final String? protocolVersion;
  final bool? proxyProtocolV2;
  final String? region;
  final int? slowStart;
  final GetTargetGroupStickiness? stickiness;
  final Map<String, String>? tags;
  final int? targetControlPort;
  final String? targetType;
  final String? vpcId;

  /// Creates a new [GetTargetGroupResult].
  /// [arn] Optional.
  /// [arnSuffix] Optional.
  /// [connectionTermination] Optional.
  /// [deregistrationDelay] Optional.
  /// [healthCheck] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lambdaMultiValueHeadersEnabled] Optional.
  /// [loadBalancerArns] Optional.
  /// [loadBalancingAlgorithmType] Optional.
  /// [loadBalancingAnomalyMitigation] Optional.
  /// [loadBalancingCrossZoneEnabled] Optional.
  /// [name] Optional.
  /// [port] Optional.
  /// [preserveClientIp] Optional.
  /// [protocol] Optional.
  /// [protocolVersion] Optional.
  /// [proxyProtocolV2] Optional.
  /// [region] Optional.
  /// [slowStart] Optional.
  /// [stickiness] Optional.
  /// [tags] Optional.
  /// [targetControlPort] Optional.
  /// [targetType] Optional.
  /// [vpcId] Optional.
  const GetTargetGroupResult({
    this.arn,
    this.arnSuffix,
    this.connectionTermination,
    this.deregistrationDelay,
    this.healthCheck,
    this.id,
    this.lambdaMultiValueHeadersEnabled,
    this.loadBalancerArns,
    this.loadBalancingAlgorithmType,
    this.loadBalancingAnomalyMitigation,
    this.loadBalancingCrossZoneEnabled,
    this.name,
    this.port,
    this.preserveClientIp,
    this.protocol,
    this.protocolVersion,
    this.proxyProtocolV2,
    this.region,
    this.slowStart,
    this.stickiness,
    this.tags,
    this.targetControlPort,
    this.targetType,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'arnSuffix': ?arnSuffix,
      'connectionTermination': ?connectionTermination,
      'deregistrationDelay': ?deregistrationDelay,
      'healthCheck': ?healthCheck?.toMap(),
      'id': ?id,
      'lambdaMultiValueHeadersEnabled': ?lambdaMultiValueHeadersEnabled,
      'loadBalancerArns': ?loadBalancerArns,
      'loadBalancingAlgorithmType': ?loadBalancingAlgorithmType,
      'loadBalancingAnomalyMitigation': ?loadBalancingAnomalyMitigation,
      'loadBalancingCrossZoneEnabled': ?loadBalancingCrossZoneEnabled,
      'name': ?name,
      'port': ?port,
      'preserveClientIp': ?preserveClientIp,
      'protocol': ?protocol,
      'protocolVersion': ?protocolVersion,
      'proxyProtocolV2': ?proxyProtocolV2,
      'region': ?region,
      'slowStart': ?slowStart,
      'stickiness': ?stickiness?.toMap(),
      'tags': ?tags,
      'targetControlPort': ?targetControlPort,
      'targetType': ?targetType,
      'vpcId': ?vpcId,
    };
  }

  factory GetTargetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arnSuffix: (() { final guardedValue = map['arnSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionTermination: (() { final guardedValue = map['connectionTermination']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deregistrationDelay: (() { final guardedValue = map['deregistrationDelay']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return GetTargetGroupHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lambdaMultiValueHeadersEnabled: (() { final guardedValue = map['lambdaMultiValueHeadersEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      loadBalancerArns: (() { final guardedValue = map['loadBalancerArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      loadBalancingAlgorithmType: (() { final guardedValue = map['loadBalancingAlgorithmType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancingAnomalyMitigation: (() { final guardedValue = map['loadBalancingAnomalyMitigation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancingCrossZoneEnabled: (() { final guardedValue = map['loadBalancingCrossZoneEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      preserveClientIp: (() { final guardedValue = map['preserveClientIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocolVersion: (() { final guardedValue = map['protocolVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyProtocolV2: (() { final guardedValue = map['proxyProtocolV2']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      slowStart: (() { final guardedValue = map['slowStart']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      stickiness: (() { final guardedValue = map['stickiness']; if (guardedValue == null) return null; return GetTargetGroupStickiness.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetControlPort: (() { final guardedValue = map['targetControlPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
