// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_access_logs.dart';
import 'get_load_balancer_connection_log.dart';
import 'get_load_balancer_health_check_log.dart';
import 'get_load_balancer_ipam_pool.dart';
import 'get_load_balancer_subnet_mapping.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  final GetLoadBalancerAccessLogs? accessLogs;
  final String? arn;
  final String? arnSuffix;
  final int? clientKeepAlive;
  final List<GetLoadBalancerConnectionLog>? connectionLogs;
  final String? customerOwnedIpv4Pool;
  final String? desyncMitigationMode;
  final String? dnsName;
  final String? dnsRecordClientRoutingPolicy;
  final bool? dropInvalidHeaderFields;
  final bool? enableCrossZoneLoadBalancing;
  final bool? enableDeletionProtection;
  final bool? enableHttp2;
  final String? enablePrefixForIpv6SourceNat;
  final bool? enableTlsVersionAndCipherSuiteHeaders;
  final bool? enableWafFailOpen;
  final bool? enableXffClientPort;
  final bool? enableZonalShift;
  final String? enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;
  final List<GetLoadBalancerHealthCheckLog>? healthCheckLogs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final int? idleTimeout;
  final bool? internal;
  final String? ipAddressType;
  final List<GetLoadBalancerIpamPool>? ipamPools;
  final String? loadBalancerType;
  final String? name;
  final bool? preserveHostHeader;
  final String? region;
  final int? secondaryIpsAutoAssignedPerSubnet;
  final List<String>? securityGroups;
  final List<GetLoadBalancerSubnetMapping>? subnetMappings;
  final List<String>? subnets;
  final Map<String, String>? tags;
  final String? vpcId;
  final String? xffHeaderProcessingMode;
  final String? zoneId;

  /// Creates a new [GetLoadBalancerResult].
  /// [accessLogs] Optional.
  /// [arn] Optional.
  /// [arnSuffix] Optional.
  /// [clientKeepAlive] Optional.
  /// [connectionLogs] Optional.
  /// [customerOwnedIpv4Pool] Optional.
  /// [desyncMitigationMode] Optional.
  /// [dnsName] Optional.
  /// [dnsRecordClientRoutingPolicy] Optional.
  /// [dropInvalidHeaderFields] Optional.
  /// [enableCrossZoneLoadBalancing] Optional.
  /// [enableDeletionProtection] Optional.
  /// [enableHttp2] Optional.
  /// [enablePrefixForIpv6SourceNat] Optional.
  /// [enableTlsVersionAndCipherSuiteHeaders] Optional.
  /// [enableWafFailOpen] Optional.
  /// [enableXffClientPort] Optional.
  /// [enableZonalShift] Optional.
  /// [enforceSecurityGroupInboundRulesOnPrivateLinkTraffic] Optional.
  /// [healthCheckLogs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeout] Optional.
  /// [internal] Optional.
  /// [ipAddressType] Optional.
  /// [ipamPools] Optional.
  /// [loadBalancerType] Optional.
  /// [name] Optional.
  /// [preserveHostHeader] Optional.
  /// [region] Optional.
  /// [secondaryIpsAutoAssignedPerSubnet] Optional.
  /// [securityGroups] Optional.
  /// [subnetMappings] Optional.
  /// [subnets] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  /// [xffHeaderProcessingMode] Optional.
  /// [zoneId] Optional.
  const GetLoadBalancerResult({
    this.accessLogs,
    this.arn,
    this.arnSuffix,
    this.clientKeepAlive,
    this.connectionLogs,
    this.customerOwnedIpv4Pool,
    this.desyncMitigationMode,
    this.dnsName,
    this.dnsRecordClientRoutingPolicy,
    this.dropInvalidHeaderFields,
    this.enableCrossZoneLoadBalancing,
    this.enableDeletionProtection,
    this.enableHttp2,
    this.enablePrefixForIpv6SourceNat,
    this.enableTlsVersionAndCipherSuiteHeaders,
    this.enableWafFailOpen,
    this.enableXffClientPort,
    this.enableZonalShift,
    this.enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    this.healthCheckLogs,
    this.id,
    this.idleTimeout,
    this.internal,
    this.ipAddressType,
    this.ipamPools,
    this.loadBalancerType,
    this.name,
    this.preserveHostHeader,
    this.region,
    this.secondaryIpsAutoAssignedPerSubnet,
    this.securityGroups,
    this.subnetMappings,
    this.subnets,
    this.tags,
    this.vpcId,
    this.xffHeaderProcessingMode,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': ?accessLogs?.toMap(),
      'arn': ?arn,
      'arnSuffix': ?arnSuffix,
      'clientKeepAlive': ?clientKeepAlive,
      'connectionLogs': ?(() { final guardedValue = connectionLogs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerConnectionLog, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'desyncMitigationMode': ?desyncMitigationMode,
      'dnsName': ?dnsName,
      'dnsRecordClientRoutingPolicy': ?dnsRecordClientRoutingPolicy,
      'dropInvalidHeaderFields': ?dropInvalidHeaderFields,
      'enableCrossZoneLoadBalancing': ?enableCrossZoneLoadBalancing,
      'enableDeletionProtection': ?enableDeletionProtection,
      'enableHttp2': ?enableHttp2,
      'enablePrefixForIpv6SourceNat': ?enablePrefixForIpv6SourceNat,
      'enableTlsVersionAndCipherSuiteHeaders': ?enableTlsVersionAndCipherSuiteHeaders,
      'enableWafFailOpen': ?enableWafFailOpen,
      'enableXffClientPort': ?enableXffClientPort,
      'enableZonalShift': ?enableZonalShift,
      'enforceSecurityGroupInboundRulesOnPrivateLinkTraffic': ?enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
      'healthCheckLogs': ?(() { final guardedValue = healthCheckLogs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerHealthCheckLog, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'idleTimeout': ?idleTimeout,
      'internal': ?internal,
      'ipAddressType': ?ipAddressType,
      'ipamPools': ?(() { final guardedValue = ipamPools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerIpamPool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'loadBalancerType': ?loadBalancerType,
      'name': ?name,
      'preserveHostHeader': ?preserveHostHeader,
      'region': ?region,
      'secondaryIpsAutoAssignedPerSubnet': ?secondaryIpsAutoAssignedPerSubnet,
      'securityGroups': ?securityGroups,
      'subnetMappings': ?(() { final guardedValue = subnetMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerSubnetMapping, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnets': ?subnets,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'xffHeaderProcessingMode': ?xffHeaderProcessingMode,
      'zoneId': ?zoneId,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      accessLogs: (() { final guardedValue = map['accessLogs']; if (guardedValue == null) return null; return GetLoadBalancerAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arnSuffix: (() { final guardedValue = map['arnSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientKeepAlive: (() { final guardedValue = map['clientKeepAlive']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      connectionLogs: (() { final guardedValue = map['connectionLogs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerConnectionLog>(guardedValue, (value) => GetLoadBalancerConnectionLog.fromMap((value as Map).cast<String, dynamic>())); })(),
      customerOwnedIpv4Pool: (() { final guardedValue = map['customerOwnedIpv4Pool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      desyncMitigationMode: (() { final guardedValue = map['desyncMitigationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsRecordClientRoutingPolicy: (() { final guardedValue = map['dnsRecordClientRoutingPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dropInvalidHeaderFields: (() { final guardedValue = map['dropInvalidHeaderFields']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableCrossZoneLoadBalancing: (() { final guardedValue = map['enableCrossZoneLoadBalancing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableDeletionProtection: (() { final guardedValue = map['enableDeletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableHttp2: (() { final guardedValue = map['enableHttp2']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePrefixForIpv6SourceNat: (() { final guardedValue = map['enablePrefixForIpv6SourceNat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableTlsVersionAndCipherSuiteHeaders: (() { final guardedValue = map['enableTlsVersionAndCipherSuiteHeaders']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableWafFailOpen: (() { final guardedValue = map['enableWafFailOpen']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableXffClientPort: (() { final guardedValue = map['enableXffClientPort']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableZonalShift: (() { final guardedValue = map['enableZonalShift']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic: (() { final guardedValue = map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthCheckLogs: (() { final guardedValue = map['healthCheckLogs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerHealthCheckLog>(guardedValue, (value) => GetLoadBalancerHealthCheckLog.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      internal: (() { final guardedValue = map['internal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamPools: (() { final guardedValue = map['ipamPools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerIpamPool>(guardedValue, (value) => GetLoadBalancerIpamPool.fromMap((value as Map).cast<String, dynamic>())); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preserveHostHeader: (() { final guardedValue = map['preserveHostHeader']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryIpsAutoAssignedPerSubnet: (() { final guardedValue = map['secondaryIpsAutoAssignedPerSubnet']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subnetMappings: (() { final guardedValue = map['subnetMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerSubnetMapping>(guardedValue, (value) => GetLoadBalancerSubnetMapping.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      xffHeaderProcessingMode: (() { final guardedValue = map['xffHeaderProcessingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
