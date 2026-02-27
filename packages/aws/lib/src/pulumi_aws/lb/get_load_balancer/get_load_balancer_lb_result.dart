// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_load_balancer_access_logs/get_load_balancer_access_logs_lb.dart';
import '../get_load_balancer_connection_log/get_load_balancer_connection_log_lb.dart';
import '../get_load_balancer_health_check_log/get_load_balancer_health_check_log_lb.dart';
import '../get_load_balancer_ipam_pool/get_load_balancer_ipam_pool_lb.dart';
import '../get_load_balancer_subnet_mapping/get_load_balancer_subnet_mapping_lb.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerLbResult {
  final GetLoadBalancerAccessLogsLb accessLogs;
  final String arn;
  final String arnSuffix;
  final int clientKeepAlive;
  final List<GetLoadBalancerConnectionLogLb> connectionLogs;
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
  final List<GetLoadBalancerHealthCheckLogLb> healthCheckLogs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final int idleTimeout;
  final bool internal;
  final String ipAddressType;
  final List<GetLoadBalancerIpamPoolLb> ipamPools;
  final String loadBalancerType;
  final String name;
  final bool preserveHostHeader;
  final String region;
  final int secondaryIpsAutoAssignedPerSubnet;
  final List<String> securityGroups;
  final List<GetLoadBalancerSubnetMappingLb> subnetMappings;
  final List<String> subnets;
  final Map<String, String> tags;
  final String vpcId;
  final String xffHeaderProcessingMode;
  final String zoneId;

  GetLoadBalancerLbResult({
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
    final map = <String, dynamic>{};
    map['accessLogs'] = accessLogs.toMap();
    map['arn'] = arn;
    map['arnSuffix'] = arnSuffix;
    map['clientKeepAlive'] = clientKeepAlive;
    map['connectionLogs'] = pulumi.Input.encodeList<
        GetLoadBalancerConnectionLogLb,
        Map<String, dynamic>>(connectionLogs, (value) => value.toMap());
    map['customerOwnedIpv4Pool'] = customerOwnedIpv4Pool;
    map['desyncMitigationMode'] = desyncMitigationMode;
    map['dnsName'] = dnsName;
    map['dnsRecordClientRoutingPolicy'] = dnsRecordClientRoutingPolicy;
    map['dropInvalidHeaderFields'] = dropInvalidHeaderFields;
    map['enableCrossZoneLoadBalancing'] = enableCrossZoneLoadBalancing;
    map['enableDeletionProtection'] = enableDeletionProtection;
    map['enableHttp2'] = enableHttp2;
    map['enableTlsVersionAndCipherSuiteHeaders'] =
        enableTlsVersionAndCipherSuiteHeaders;
    map['enableWafFailOpen'] = enableWafFailOpen;
    map['enableXffClientPort'] = enableXffClientPort;
    map['enableZonalShift'] = enableZonalShift;
    map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic'] =
        enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;
    map['healthCheckLogs'] = pulumi.Input.encodeList<
        GetLoadBalancerHealthCheckLogLb,
        Map<String, dynamic>>(healthCheckLogs, (value) => value.toMap());
    map['id'] = id;
    map['idleTimeout'] = idleTimeout;
    map['internal'] = internal;
    map['ipAddressType'] = ipAddressType;
    map['ipamPools'] = pulumi.Input.encodeList<GetLoadBalancerIpamPoolLb,
        Map<String, dynamic>>(ipamPools, (value) => value.toMap());
    map['loadBalancerType'] = loadBalancerType;
    map['name'] = name;
    map['preserveHostHeader'] = preserveHostHeader;
    map['region'] = region;
    map['secondaryIpsAutoAssignedPerSubnet'] =
        secondaryIpsAutoAssignedPerSubnet;
    map['securityGroups'] = securityGroups;
    map['subnetMappings'] = pulumi.Input.encodeList<
        GetLoadBalancerSubnetMappingLb,
        Map<String, dynamic>>(subnetMappings, (value) => value.toMap());
    map['subnets'] = subnets;
    map['tags'] = tags;
    map['vpcId'] = vpcId;
    map['xffHeaderProcessingMode'] = xffHeaderProcessingMode;
    map['zoneId'] = zoneId;
    return map;
  }

  factory GetLoadBalancerLbResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerLbResult(
      accessLogs: GetLoadBalancerAccessLogsLb.fromMap(
          (map['accessLogs'] as Map).cast<String, dynamic>()),
      arn: map['arn'] as String,
      arnSuffix: map['arnSuffix'] as String,
      clientKeepAlive: map['clientKeepAlive'] as int,
      connectionLogs: pulumi.Input.decodeList<GetLoadBalancerConnectionLogLb>(
          map['connectionLogs'],
          (value) => GetLoadBalancerConnectionLogLb.fromMap(
              (value as Map).cast<String, dynamic>())),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] as String,
      desyncMitigationMode: map['desyncMitigationMode'] as String,
      dnsName: map['dnsName'] as String,
      dnsRecordClientRoutingPolicy:
          map['dnsRecordClientRoutingPolicy'] as String,
      dropInvalidHeaderFields: map['dropInvalidHeaderFields'] as bool,
      enableCrossZoneLoadBalancing: map['enableCrossZoneLoadBalancing'] as bool,
      enableDeletionProtection: map['enableDeletionProtection'] as bool,
      enableHttp2: map['enableHttp2'] as bool,
      enableTlsVersionAndCipherSuiteHeaders:
          map['enableTlsVersionAndCipherSuiteHeaders'] as bool,
      enableWafFailOpen: map['enableWafFailOpen'] as bool,
      enableXffClientPort: map['enableXffClientPort'] as bool,
      enableZonalShift: map['enableZonalShift'] as bool,
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic:
          map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic'] as String,
      healthCheckLogs: pulumi.Input.decodeList<GetLoadBalancerHealthCheckLogLb>(
          map['healthCheckLogs'],
          (value) => GetLoadBalancerHealthCheckLogLb.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      idleTimeout: map['idleTimeout'] as int,
      internal: map['internal'] as bool,
      ipAddressType: map['ipAddressType'] as String,
      ipamPools: pulumi.Input.decodeList<GetLoadBalancerIpamPoolLb>(
          map['ipamPools'],
          (value) => GetLoadBalancerIpamPoolLb.fromMap(
              (value as Map).cast<String, dynamic>())),
      loadBalancerType: map['loadBalancerType'] as String,
      name: map['name'] as String,
      preserveHostHeader: map['preserveHostHeader'] as bool,
      region: map['region'] as String,
      secondaryIpsAutoAssignedPerSubnet:
          map['secondaryIpsAutoAssignedPerSubnet'] as int,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnetMappings: pulumi.Input.decodeList<GetLoadBalancerSubnetMappingLb>(
          map['subnetMappings'],
          (value) => GetLoadBalancerSubnetMappingLb.fromMap(
              (value as Map).cast<String, dynamic>())),
      subnets: (map['subnets'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      xffHeaderProcessingMode: map['xffHeaderProcessingMode'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}
