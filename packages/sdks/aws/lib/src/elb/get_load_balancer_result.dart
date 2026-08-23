// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_access_logs.dart';
import 'get_load_balancer_health_check.dart';
import 'get_load_balancer_listener.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  final GetLoadBalancerAccessLogs accessLogs;
  final String arn;
  final List<String> availabilityZones;
  final bool connectionDraining;
  final int connectionDrainingTimeout;
  final bool crossZoneLoadBalancing;
  final String desyncMitigationMode;
  final String dnsName;
  final GetLoadBalancerHealthCheck healthCheck;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final int idleTimeout;
  final List<String> instances;
  final bool internal;
  final List<GetLoadBalancerListener> listeners;
  final String name;
  final String region;
  final List<String> securityGroups;
  final String sourceSecurityGroup;
  final String sourceSecurityGroupId;
  final List<String> subnets;
  final Map<String, String> tags;
  final String zoneId;

  /// Creates a new [GetLoadBalancerResult].
  /// [accessLogs] Required.
  /// [arn] Required.
  /// [availabilityZones] Required.
  /// [connectionDraining] Required.
  /// [connectionDrainingTimeout] Required.
  /// [crossZoneLoadBalancing] Required.
  /// [desyncMitigationMode] Required.
  /// [dnsName] Required.
  /// [healthCheck] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeout] Required.
  /// [instances] Required.
  /// [internal] Required.
  /// [listeners] Required.
  /// [name] Required.
  /// [region] Required.
  /// [securityGroups] Required.
  /// [sourceSecurityGroup] Required.
  /// [sourceSecurityGroupId] Required.
  /// [subnets] Required.
  /// [tags] Required.
  /// [zoneId] Required.
  const GetLoadBalancerResult({
    required this.accessLogs,
    required this.arn,
    required this.availabilityZones,
    required this.connectionDraining,
    required this.connectionDrainingTimeout,
    required this.crossZoneLoadBalancing,
    required this.desyncMitigationMode,
    required this.dnsName,
    required this.healthCheck,
    required this.id,
    required this.idleTimeout,
    required this.instances,
    required this.internal,
    required this.listeners,
    required this.name,
    required this.region,
    required this.securityGroups,
    required this.sourceSecurityGroup,
    required this.sourceSecurityGroupId,
    required this.subnets,
    required this.tags,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': accessLogs.toMap(),
      'arn': arn,
      'availabilityZones': availabilityZones,
      'connectionDraining': connectionDraining,
      'connectionDrainingTimeout': connectionDrainingTimeout,
      'crossZoneLoadBalancing': crossZoneLoadBalancing,
      'desyncMitigationMode': desyncMitigationMode,
      'dnsName': dnsName,
      'healthCheck': healthCheck.toMap(),
      'id': id,
      'idleTimeout': idleTimeout,
      'instances': instances,
      'internal': internal,
      'listeners': pulumi.Input.encodeList<GetLoadBalancerListener, Map<String, dynamic>>(listeners, (value) => value.toMap()),
      'name': name,
      'region': region,
      'securityGroups': securityGroups,
      'sourceSecurityGroup': sourceSecurityGroup,
      'sourceSecurityGroupId': sourceSecurityGroupId,
      'subnets': subnets,
      'tags': tags,
      'zoneId': zoneId,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      accessLogs: GetLoadBalancerAccessLogs.fromMap((map['accessLogs']! as Map).cast<String, dynamic>()),
      arn: map['arn'] as String,
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      connectionDraining: map['connectionDraining'] as bool,
      connectionDrainingTimeout: map['connectionDrainingTimeout'] as int,
      crossZoneLoadBalancing: map['crossZoneLoadBalancing'] as bool,
      desyncMitigationMode: map['desyncMitigationMode'] as String,
      dnsName: map['dnsName'] as String,
      healthCheck: GetLoadBalancerHealthCheck.fromMap((map['healthCheck']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      idleTimeout: map['idleTimeout'] as int,
      instances: (map['instances'] as List).cast<String>(),
      internal: map['internal'] as bool,
      listeners: pulumi.Input.decodeList<GetLoadBalancerListener>(map['listeners']!, (value) => GetLoadBalancerListener.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      sourceSecurityGroup: map['sourceSecurityGroup'] as String,
      sourceSecurityGroupId: map['sourceSecurityGroupId'] as String,
      subnets: (map['subnets'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      zoneId: map['zoneId'] as String,
    );
  }
}
