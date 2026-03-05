// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_access_logs.dart';
import 'get_load_balancer_connection_log.dart';
import 'get_load_balancer_health_check_log.dart';
import 'get_load_balancer_ipam_pool.dart';
import 'get_load_balancer_subnet_mapping.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  final GetLoadBalancerAccessLogs accessLogs;
  final String arn;
  final String arnSuffix;
  final int clientKeepAlive;
  final List<GetLoadBalancerConnectionLog> connectionLogs;
  final String customerOwnedIpv4Pool;
  final String desyncMitigationMode;
  final String dnsName;
  final String dnsRecordClientRoutingPolicy;
  final bool dropInvalidHeaderFields;
  final bool enableCrossZoneLoadBalancing;
  final bool enableDeletionProtection;
  final bool enableHttp2;
  final bool enableTlsVersionAndCipherSuiteHeaders;
  final bool enableWafFailOpen;
  final bool enableXffClientPort;
  final bool enableZonalShift;
  final String enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;
  final List<GetLoadBalancerHealthCheckLog> healthCheckLogs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final int idleTimeout;
  final bool internal;
  final String ipAddressType;
  final List<GetLoadBalancerIpamPool> ipamPools;
  final String loadBalancerType;
  final String name;
  final bool preserveHostHeader;
  final String region;
  final int secondaryIpsAutoAssignedPerSubnet;
  final List<String> securityGroups;
  final List<GetLoadBalancerSubnetMapping> subnetMappings;
  final List<String> subnets;
  final Map<String, String> tags;
  final String vpcId;
  final String xffHeaderProcessingMode;
  final String zoneId;

  /// Creates a new [GetLoadBalancerResult].
  /// [accessLogs] Required.
  /// [arn] Required.
  /// [arnSuffix] Required.
  /// [clientKeepAlive] Required.
  /// [connectionLogs] Required.
  /// [customerOwnedIpv4Pool] Required.
  /// [desyncMitigationMode] Required.
  /// [dnsName] Required.
  /// [dnsRecordClientRoutingPolicy] Required.
  /// [dropInvalidHeaderFields] Required.
  /// [enableCrossZoneLoadBalancing] Required.
  /// [enableDeletionProtection] Required.
  /// [enableHttp2] Required.
  /// [enableTlsVersionAndCipherSuiteHeaders] Required.
  /// [enableWafFailOpen] Required.
  /// [enableXffClientPort] Required.
  /// [enableZonalShift] Required.
  /// [enforceSecurityGroupInboundRulesOnPrivateLinkTraffic] Required.
  /// [healthCheckLogs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeout] Required.
  /// [internal] Required.
  /// [ipAddressType] Required.
  /// [ipamPools] Required.
  /// [loadBalancerType] Required.
  /// [name] Required.
  /// [preserveHostHeader] Required.
  /// [region] Required.
  /// [secondaryIpsAutoAssignedPerSubnet] Required.
  /// [securityGroups] Required.
  /// [subnetMappings] Required.
  /// [subnets] Required.
  /// [tags] Required.
  /// [vpcId] Required.
  /// [xffHeaderProcessingMode] Required.
  /// [zoneId] Required.
  GetLoadBalancerResult({
    required this.accessLogs,
    required this.arn,
    required this.arnSuffix,
    required this.clientKeepAlive,
    required this.connectionLogs,
    required this.customerOwnedIpv4Pool,
    required this.desyncMitigationMode,
    required this.dnsName,
    required this.dnsRecordClientRoutingPolicy,
    required this.dropInvalidHeaderFields,
    required this.enableCrossZoneLoadBalancing,
    required this.enableDeletionProtection,
    required this.enableHttp2,
    required this.enableTlsVersionAndCipherSuiteHeaders,
    required this.enableWafFailOpen,
    required this.enableXffClientPort,
    required this.enableZonalShift,
    required this.enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    required this.healthCheckLogs,
    required this.id,
    required this.idleTimeout,
    required this.internal,
    required this.ipAddressType,
    required this.ipamPools,
    required this.loadBalancerType,
    required this.name,
    required this.preserveHostHeader,
    required this.region,
    required this.secondaryIpsAutoAssignedPerSubnet,
    required this.securityGroups,
    required this.subnetMappings,
    required this.subnets,
    required this.tags,
    required this.vpcId,
    required this.xffHeaderProcessingMode,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': accessLogs.toMap(),
      'arn': arn,
      'arnSuffix': arnSuffix,
      'clientKeepAlive': clientKeepAlive,
      'connectionLogs': pulumi.Input.encodeList<GetLoadBalancerConnectionLog, Map<String, dynamic>>(connectionLogs, (value) => value.toMap()),
      'customerOwnedIpv4Pool': customerOwnedIpv4Pool,
      'desyncMitigationMode': desyncMitigationMode,
      'dnsName': dnsName,
      'dnsRecordClientRoutingPolicy': dnsRecordClientRoutingPolicy,
      'dropInvalidHeaderFields': dropInvalidHeaderFields,
      'enableCrossZoneLoadBalancing': enableCrossZoneLoadBalancing,
      'enableDeletionProtection': enableDeletionProtection,
      'enableHttp2': enableHttp2,
      'enableTlsVersionAndCipherSuiteHeaders': enableTlsVersionAndCipherSuiteHeaders,
      'enableWafFailOpen': enableWafFailOpen,
      'enableXffClientPort': enableXffClientPort,
      'enableZonalShift': enableZonalShift,
      'enforceSecurityGroupInboundRulesOnPrivateLinkTraffic': enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
      'healthCheckLogs': pulumi.Input.encodeList<GetLoadBalancerHealthCheckLog, Map<String, dynamic>>(healthCheckLogs, (value) => value.toMap()),
      'id': id,
      'idleTimeout': idleTimeout,
      'internal': internal,
      'ipAddressType': ipAddressType,
      'ipamPools': pulumi.Input.encodeList<GetLoadBalancerIpamPool, Map<String, dynamic>>(ipamPools, (value) => value.toMap()),
      'loadBalancerType': loadBalancerType,
      'name': name,
      'preserveHostHeader': preserveHostHeader,
      'region': region,
      'secondaryIpsAutoAssignedPerSubnet': secondaryIpsAutoAssignedPerSubnet,
      'securityGroups': securityGroups,
      'subnetMappings': pulumi.Input.encodeList<GetLoadBalancerSubnetMapping, Map<String, dynamic>>(subnetMappings, (value) => value.toMap()),
      'subnets': subnets,
      'tags': tags,
      'vpcId': vpcId,
      'xffHeaderProcessingMode': xffHeaderProcessingMode,
      'zoneId': zoneId,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      accessLogs: GetLoadBalancerAccessLogs.fromMap((map['accessLogs']! as Map).cast<String, dynamic>()),
      arn: map['arn'] as String,
      arnSuffix: map['arnSuffix'] as String,
      clientKeepAlive: map['clientKeepAlive'] as int,
      connectionLogs: pulumi.Input.decodeList<GetLoadBalancerConnectionLog>(map['connectionLogs']!, (value) => GetLoadBalancerConnectionLog.fromMap((value as Map).cast<String, dynamic>())),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] as String,
      desyncMitigationMode: map['desyncMitigationMode'] as String,
      dnsName: map['dnsName'] as String,
      dnsRecordClientRoutingPolicy: map['dnsRecordClientRoutingPolicy'] as String,
      dropInvalidHeaderFields: map['dropInvalidHeaderFields'] as bool,
      enableCrossZoneLoadBalancing: map['enableCrossZoneLoadBalancing'] as bool,
      enableDeletionProtection: map['enableDeletionProtection'] as bool,
      enableHttp2: map['enableHttp2'] as bool,
      enableTlsVersionAndCipherSuiteHeaders: map['enableTlsVersionAndCipherSuiteHeaders'] as bool,
      enableWafFailOpen: map['enableWafFailOpen'] as bool,
      enableXffClientPort: map['enableXffClientPort'] as bool,
      enableZonalShift: map['enableZonalShift'] as bool,
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic: map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic'] as String,
      healthCheckLogs: pulumi.Input.decodeList<GetLoadBalancerHealthCheckLog>(map['healthCheckLogs']!, (value) => GetLoadBalancerHealthCheckLog.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      idleTimeout: map['idleTimeout'] as int,
      internal: map['internal'] as bool,
      ipAddressType: map['ipAddressType'] as String,
      ipamPools: pulumi.Input.decodeList<GetLoadBalancerIpamPool>(map['ipamPools']!, (value) => GetLoadBalancerIpamPool.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerType: map['loadBalancerType'] as String,
      name: map['name'] as String,
      preserveHostHeader: map['preserveHostHeader'] as bool,
      region: map['region'] as String,
      secondaryIpsAutoAssignedPerSubnet: map['secondaryIpsAutoAssignedPerSubnet'] as int,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnetMappings: pulumi.Input.decodeList<GetLoadBalancerSubnetMapping>(map['subnetMappings']!, (value) => GetLoadBalancerSubnetMapping.fromMap((value as Map).cast<String, dynamic>())),
      subnets: (map['subnets'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      xffHeaderProcessingMode: map['xffHeaderProcessingMode'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

