// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_access_logs.dart';
import 'get_load_balancer_health_check.dart';
import 'get_load_balancer_listener.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  final GetLoadBalancerAccessLogs? accessLogs;
  final String? arn;
  final List<String>? availabilityZones;
  final bool? connectionDraining;
  final int? connectionDrainingTimeout;
  final bool? crossZoneLoadBalancing;
  final String? desyncMitigationMode;
  final String? dnsName;
  final GetLoadBalancerHealthCheck? healthCheck;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final int? idleTimeout;
  final List<String>? instances;
  final bool? internal;
  final List<GetLoadBalancerListener>? listeners;
  final String? name;
  final String? region;
  final List<String>? securityGroups;
  final String? sourceSecurityGroup;
  final String? sourceSecurityGroupId;
  final List<String>? subnets;
  final Map<String, String>? tags;
  final String? zoneId;

  /// Creates a new [GetLoadBalancerResult].
  /// [accessLogs] Optional.
  /// [arn] Optional.
  /// [availabilityZones] Optional.
  /// [connectionDraining] Optional.
  /// [connectionDrainingTimeout] Optional.
  /// [crossZoneLoadBalancing] Optional.
  /// [desyncMitigationMode] Optional.
  /// [dnsName] Optional.
  /// [healthCheck] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeout] Optional.
  /// [instances] Optional.
  /// [internal] Optional.
  /// [listeners] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [securityGroups] Optional.
  /// [sourceSecurityGroup] Optional.
  /// [sourceSecurityGroupId] Optional.
  /// [subnets] Optional.
  /// [tags] Optional.
  /// [zoneId] Optional.
  const GetLoadBalancerResult({
    this.accessLogs,
    this.arn,
    this.availabilityZones,
    this.connectionDraining,
    this.connectionDrainingTimeout,
    this.crossZoneLoadBalancing,
    this.desyncMitigationMode,
    this.dnsName,
    this.healthCheck,
    this.id,
    this.idleTimeout,
    this.instances,
    this.internal,
    this.listeners,
    this.name,
    this.region,
    this.securityGroups,
    this.sourceSecurityGroup,
    this.sourceSecurityGroupId,
    this.subnets,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': ?accessLogs?.toMap(),
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'connectionDraining': ?connectionDraining,
      'connectionDrainingTimeout': ?connectionDrainingTimeout,
      'crossZoneLoadBalancing': ?crossZoneLoadBalancing,
      'desyncMitigationMode': ?desyncMitigationMode,
      'dnsName': ?dnsName,
      'healthCheck': ?healthCheck?.toMap(),
      'id': ?id,
      'idleTimeout': ?idleTimeout,
      'instances': ?instances,
      'internal': ?internal,
      'listeners': ?(() { final guardedValue = listeners; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerListener, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'sourceSecurityGroup': ?sourceSecurityGroup,
      'sourceSecurityGroupId': ?sourceSecurityGroupId,
      'subnets': ?subnets,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      accessLogs: (() { final guardedValue = map['accessLogs']; if (guardedValue == null) return null; return GetLoadBalancerAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      connectionDraining: (() { final guardedValue = map['connectionDraining']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      connectionDrainingTimeout: (() { final guardedValue = map['connectionDrainingTimeout']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      crossZoneLoadBalancing: (() { final guardedValue = map['crossZoneLoadBalancing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      desyncMitigationMode: (() { final guardedValue = map['desyncMitigationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return GetLoadBalancerHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      internal: (() { final guardedValue = map['internal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerListener>(guardedValue, (value) => GetLoadBalancerListener.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sourceSecurityGroup: (() { final guardedValue = map['sourceSecurityGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceSecurityGroupId: (() { final guardedValue = map['sourceSecurityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
