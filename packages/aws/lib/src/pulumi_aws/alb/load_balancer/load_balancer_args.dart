// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../load_balancer_access_logs/load_balancer_access_logs.dart';
import '../load_balancer_connection_logs/load_balancer_connection_logs.dart';
import '../load_balancer_health_check_logs/load_balancer_health_check_logs.dart';
import '../load_balancer_ipam_pools/load_balancer_ipam_pools.dart';
import '../load_balancer_minimum_load_balancer_capacity/load_balancer_minimum_load_balancer_capacity.dart';
import '../load_balancer_subnet_mapping/load_balancer_subnet_mapping.dart';
import '../load_balancer_type/load_balancer_type.dart';

/// The set of arguments for LoadBalancer.
class LoadBalancerArgs {
  /// Access Logs block. See below.
  final pulumi.Input<LoadBalancerAccessLogs>? accessLogs;

  /// Client keep alive value in seconds. The valid range is 60-604800 seconds. The default is 3600 seconds.
  final pulumi.Input<int>? clientKeepAlive;

  /// Connection Logs block. See below. Only valid for Load Balancers of type `application`.
  final pulumi.Input<LoadBalancerConnectionLogs>? connectionLogs;

  /// ID of the customer owned ipv4 pool to use for this load balancer.
  final pulumi.Input<String>? customerOwnedIpv4Pool;

  /// How the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are `monitor`, `defensive` (default), `strictest`.
  final pulumi.Input<String>? desyncMitigationMode;

  /// How traffic is distributed among the load balancer Availability Zones. Possible values are `any_availability_zone` (default), `availability_zone_affinity`, or `partial_availability_zone_affinity`. See   [Availability Zone DNS affinity](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#zonal-dns-affinity) for additional details. Only valid for `network` type load balancers.
  final pulumi.Input<String>? dnsRecordClientRoutingPolicy;

  /// Whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type `application`.
  final pulumi.Input<bool>? dropInvalidHeaderFields;

  /// If true, cross-zone load balancing of the load balancer will be enabled. For `network` and `gateway` type load balancers, this feature is disabled by default (`false`). For `application` load balancer this feature is always enabled (`true`) and cannot be disabled. Defaults to `false`.
  final pulumi.Input<bool>? enableCrossZoneLoadBalancing;

  /// If true, deletion of the load balancer will be disabled via the AWS API. This will prevent this provider from deleting the load balancer. Defaults to `false`.
  final pulumi.Input<bool>? enableDeletionProtection;

  /// Whether HTTP/2 is enabled in `application` load balancers. Defaults to `true`.
  final pulumi.Input<bool>? enableHttp2;

  /// Whether the two headers (`x-amzn-tls-version` and `x-amzn-tls-cipher-suite`), which contain information about the negotiated TLS version and cipher suite, are added to the client request before sending it to the target. Only valid for Load Balancers of type `application`. Defaults to `false`
  final pulumi.Input<bool>? enableTlsVersionAndCipherSuiteHeaders;

  /// Whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. Defaults to `false`.
  final pulumi.Input<bool>? enableWafFailOpen;

  /// Whether the X-Forwarded-For header should preserve the source port that the client used to connect to the load balancer in `application` load balancers. Defaults to `false`.
  final pulumi.Input<bool>? enableXffClientPort;

  /// Whether zonal shift is enabled. Defaults to `false`.
  final pulumi.Input<bool>? enableZonalShift;

  /// Whether inbound security group rules are enforced for traffic originating from a PrivateLink. Only valid for Load Balancers of type `network`. The possible values are `on` and `off`.
  final pulumi.Input<String>?
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;

  /// Health Check Logs block. See below. Only valid for Load Balancers of type `application`.
  final pulumi.Input<LoadBalancerHealthCheckLogs>? healthCheckLogs;

  /// Time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type `application`. Default: 60.
  final pulumi.Input<int>? idleTimeout;

  /// If true, the LB will be internal. Defaults to `false`.
  final pulumi.Input<bool>? internal;

  /// Type of IP addresses used by the subnets for your load balancer. The possible values depend upon the load balancer type: `ipv4` (all load balancer types), `dualstack` (all load balancer types), and `dualstack-without-public-ipv4` (type `application` only).
  final pulumi.Input<String>? ipAddressType;

  /// . The IPAM pools to use with the load balancer.  Only valid for Load Balancers of type `application`. See ipam_pools for more information.
  final pulumi.Input<LoadBalancerIpamPools>? ipamPools;

  /// Type of load balancer to create. Possible values are `application`, `gateway`, or `network`. The default value is `application`.
  final pulumi.Input<LoadBalancerType>? loadBalancerType;

  /// Minimum capacity for a load balancer. Only valid for Load Balancers of type `application` or `network`.
  final pulumi.Input<LoadBalancerMinimumLoadBalancerCapacity>?
      minimumLoadBalancerCapacity;

  /// Name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified, this provider will autogenerate a name beginning with `tf-lb`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change. Defaults to `false`.
  final pulumi.Input<bool>? preserveHostHeader;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The number of secondary IP addresses to configure for your load balancer nodes. Only valid for Load Balancers of type `network`. The valid range is 0-7. When decreased, this will force a recreation of the resource. Default: `0`.
  final pulumi.Input<int>? secondaryIpsAutoAssignedPerSubnet;

  /// List of security group IDs to assign to the LB. Only valid for Load Balancers of type `application` or `network`. For load balancers of type `network` security groups cannot be added if none are currently present, and cannot all be removed once added. If either of these conditions are met, this will force a recreation of the resource.
  final pulumi.Input<List<String>>? securityGroups;

  /// Subnet mapping block. See below. For Load Balancers of type `network` subnet mappings can only be added.
  final pulumi.Input<List<LoadBalancerSubnetMapping>>? subnetMappings;

  /// List of subnet IDs to attach to the LB. For Load Balancers of type `network` subnets can only be added (see [Availability Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#availability-zones)), deleting a subnet for load balancers of type `network` will force a recreation of the resource.
  final pulumi.Input<List<String>>? subnets;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Determines how the load balancer modifies the `X-Forwarded-For` header in the HTTP request before sending the request to the target. The possible values are `append`, `preserve`, and `remove`. Only valid for Load Balancers of type `application`. The default is `append`.
  ///
  /// > **NOTE:** Please note that internal LBs can only use `ipv4` as the `ip_address_type`. You can only change to `dualstack` `ip_address_type` if the selected subnets are IPv6 enabled.
  ///
  /// > **NOTE:** Please note that one of either `subnets` or `subnet_mapping` is required.
  final pulumi.Input<String>? xffHeaderProcessingMode;

  LoadBalancerArgs({
    this.accessLogs,
    this.clientKeepAlive,
    this.connectionLogs,
    this.customerOwnedIpv4Pool,
    this.desyncMitigationMode,
    this.dnsRecordClientRoutingPolicy,
    this.dropInvalidHeaderFields,
    this.enableCrossZoneLoadBalancing,
    this.enableDeletionProtection,
    this.enableHttp2,
    this.enableTlsVersionAndCipherSuiteHeaders,
    this.enableWafFailOpen,
    this.enableXffClientPort,
    this.enableZonalShift,
    this.enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    this.healthCheckLogs,
    this.idleTimeout,
    this.internal,
    this.ipAddressType,
    this.ipamPools,
    this.loadBalancerType,
    this.minimumLoadBalancerCapacity,
    this.name,
    this.namePrefix,
    this.preserveHostHeader,
    this.region,
    this.secondaryIpsAutoAssignedPerSubnet,
    this.securityGroups,
    this.subnetMappings,
    this.subnets,
    this.tags,
    this.xffHeaderProcessingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLogsValue = accessLogs;
    if (accessLogsValue != null) {
      map['accessLogs'] = pulumi.Input.mapOptionalInputValue<
          LoadBalancerAccessLogs,
          Map<String, dynamic>>(accessLogsValue, (value) => value.toMap());
    }
    final clientKeepAliveValue = clientKeepAlive;
    if (clientKeepAliveValue != null) {
      map['clientKeepAlive'] = clientKeepAliveValue;
    }
    final connectionLogsValue = connectionLogs;
    if (connectionLogsValue != null) {
      map['connectionLogs'] = pulumi.Input.mapOptionalInputValue<
          LoadBalancerConnectionLogs,
          Map<String, dynamic>>(connectionLogsValue, (value) => value.toMap());
    }
    final customerOwnedIpv4PoolValue = customerOwnedIpv4Pool;
    if (customerOwnedIpv4PoolValue != null) {
      map['customerOwnedIpv4Pool'] = customerOwnedIpv4PoolValue;
    }
    final desyncMitigationModeValue = desyncMitigationMode;
    if (desyncMitigationModeValue != null) {
      map['desyncMitigationMode'] = desyncMitigationModeValue;
    }
    final dnsRecordClientRoutingPolicyValue = dnsRecordClientRoutingPolicy;
    if (dnsRecordClientRoutingPolicyValue != null) {
      map['dnsRecordClientRoutingPolicy'] = dnsRecordClientRoutingPolicyValue;
    }
    final dropInvalidHeaderFieldsValue = dropInvalidHeaderFields;
    if (dropInvalidHeaderFieldsValue != null) {
      map['dropInvalidHeaderFields'] = dropInvalidHeaderFieldsValue;
    }
    final enableCrossZoneLoadBalancingValue = enableCrossZoneLoadBalancing;
    if (enableCrossZoneLoadBalancingValue != null) {
      map['enableCrossZoneLoadBalancing'] = enableCrossZoneLoadBalancingValue;
    }
    final enableDeletionProtectionValue = enableDeletionProtection;
    if (enableDeletionProtectionValue != null) {
      map['enableDeletionProtection'] = enableDeletionProtectionValue;
    }
    final enableHttp2Value = enableHttp2;
    if (enableHttp2Value != null) {
      map['enableHttp2'] = enableHttp2Value;
    }
    final enableTlsVersionAndCipherSuiteHeadersValue =
        enableTlsVersionAndCipherSuiteHeaders;
    if (enableTlsVersionAndCipherSuiteHeadersValue != null) {
      map['enableTlsVersionAndCipherSuiteHeaders'] =
          enableTlsVersionAndCipherSuiteHeadersValue;
    }
    final enableWafFailOpenValue = enableWafFailOpen;
    if (enableWafFailOpenValue != null) {
      map['enableWafFailOpen'] = enableWafFailOpenValue;
    }
    final enableXffClientPortValue = enableXffClientPort;
    if (enableXffClientPortValue != null) {
      map['enableXffClientPort'] = enableXffClientPortValue;
    }
    final enableZonalShiftValue = enableZonalShift;
    if (enableZonalShiftValue != null) {
      map['enableZonalShift'] = enableZonalShiftValue;
    }
    final enforceSecurityGroupInboundRulesOnPrivateLinkTrafficValue =
        enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;
    if (enforceSecurityGroupInboundRulesOnPrivateLinkTrafficValue != null) {
      map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic'] =
          enforceSecurityGroupInboundRulesOnPrivateLinkTrafficValue;
    }
    final healthCheckLogsValue = healthCheckLogs;
    if (healthCheckLogsValue != null) {
      map['healthCheckLogs'] = pulumi.Input.mapOptionalInputValue<
          LoadBalancerHealthCheckLogs,
          Map<String, dynamic>>(healthCheckLogsValue, (value) => value.toMap());
    }
    final idleTimeoutValue = idleTimeout;
    if (idleTimeoutValue != null) {
      map['idleTimeout'] = idleTimeoutValue;
    }
    final internalValue = internal;
    if (internalValue != null) {
      map['internal'] = internalValue;
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final ipamPoolsValue = ipamPools;
    if (ipamPoolsValue != null) {
      map['ipamPools'] = pulumi.Input.mapOptionalInputValue<
          LoadBalancerIpamPools,
          Map<String, dynamic>>(ipamPoolsValue, (value) => value.toMap());
    }
    final loadBalancerTypeValue = loadBalancerType;
    if (loadBalancerTypeValue != null) {
      map['loadBalancerType'] =
          pulumi.Input.mapOptionalInputValue<LoadBalancerType, String>(
              loadBalancerTypeValue, (value) => value.value);
    }
    final minimumLoadBalancerCapacityValue = minimumLoadBalancerCapacity;
    if (minimumLoadBalancerCapacityValue != null) {
      map['minimumLoadBalancerCapacity'] = pulumi.Input.mapOptionalInputValue<
              LoadBalancerMinimumLoadBalancerCapacity, Map<String, dynamic>>(
          minimumLoadBalancerCapacityValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final preserveHostHeaderValue = preserveHostHeader;
    if (preserveHostHeaderValue != null) {
      map['preserveHostHeader'] = preserveHostHeaderValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secondaryIpsAutoAssignedPerSubnetValue =
        secondaryIpsAutoAssignedPerSubnet;
    if (secondaryIpsAutoAssignedPerSubnetValue != null) {
      map['secondaryIpsAutoAssignedPerSubnet'] =
          secondaryIpsAutoAssignedPerSubnetValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final subnetMappingsValue = subnetMappings;
    if (subnetMappingsValue != null) {
      map['subnetMappings'] = pulumi.Input.mapOptionalInputValue<
              List<LoadBalancerSubnetMapping>, List<Map<String, dynamic>>>(
          subnetMappingsValue,
          (value) => pulumi.Input.encodeList<LoadBalancerSubnetMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final subnetsValue = subnets;
    if (subnetsValue != null) {
      map['subnets'] = subnetsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final xffHeaderProcessingModeValue = xffHeaderProcessingMode;
    if (xffHeaderProcessingModeValue != null) {
      map['xffHeaderProcessingMode'] = xffHeaderProcessingModeValue;
    }
    return map;
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      accessLogs: pulumi.Input.asOptionalInput<LoadBalancerAccessLogs>(
          map['accessLogs']),
      clientKeepAlive:
          pulumi.Input.asOptionalInput<int>(map['clientKeepAlive']),
      connectionLogs: pulumi.Input.asOptionalInput<LoadBalancerConnectionLogs>(
          map['connectionLogs']),
      customerOwnedIpv4Pool:
          pulumi.Input.asOptionalInput<String>(map['customerOwnedIpv4Pool']),
      desyncMitigationMode:
          pulumi.Input.asOptionalInput<String>(map['desyncMitigationMode']),
      dnsRecordClientRoutingPolicy: pulumi.Input.asOptionalInput<String>(
          map['dnsRecordClientRoutingPolicy']),
      dropInvalidHeaderFields:
          pulumi.Input.asOptionalInput<bool>(map['dropInvalidHeaderFields']),
      enableCrossZoneLoadBalancing: pulumi.Input.asOptionalInput<bool>(
          map['enableCrossZoneLoadBalancing']),
      enableDeletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['enableDeletionProtection']),
      enableHttp2: pulumi.Input.asOptionalInput<bool>(map['enableHttp2']),
      enableTlsVersionAndCipherSuiteHeaders: pulumi.Input.asOptionalInput<bool>(
          map['enableTlsVersionAndCipherSuiteHeaders']),
      enableWafFailOpen:
          pulumi.Input.asOptionalInput<bool>(map['enableWafFailOpen']),
      enableXffClientPort:
          pulumi.Input.asOptionalInput<bool>(map['enableXffClientPort']),
      enableZonalShift:
          pulumi.Input.asOptionalInput<bool>(map['enableZonalShift']),
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic:
          pulumi.Input.asOptionalInput<String>(
              map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic']),
      healthCheckLogs:
          pulumi.Input.asOptionalInput<LoadBalancerHealthCheckLogs>(
              map['healthCheckLogs']),
      idleTimeout: pulumi.Input.asOptionalInput<int>(map['idleTimeout']),
      internal: pulumi.Input.asOptionalInput<bool>(map['internal']),
      ipAddressType: pulumi.Input.asOptionalInput<String>(map['ipAddressType']),
      ipamPools:
          pulumi.Input.asOptionalInput<LoadBalancerIpamPools>(map['ipamPools']),
      loadBalancerType: pulumi.Input.asOptionalInput<LoadBalancerType>(
          map['loadBalancerType']),
      minimumLoadBalancerCapacity:
          pulumi.Input.asOptionalInput<LoadBalancerMinimumLoadBalancerCapacity>(
              map['minimumLoadBalancerCapacity']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      preserveHostHeader:
          pulumi.Input.asOptionalInput<bool>(map['preserveHostHeader']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secondaryIpsAutoAssignedPerSubnet: pulumi.Input.asOptionalInput<int>(
          map['secondaryIpsAutoAssignedPerSubnet']),
      securityGroups:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroups']),
      subnetMappings:
          pulumi.Input.asOptionalInput<List<LoadBalancerSubnetMapping>>(
              map['subnetMappings']),
      subnets: pulumi.Input.asOptionalInput<List<String>>(map['subnets']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      xffHeaderProcessingMode:
          pulumi.Input.asOptionalInput<String>(map['xffHeaderProcessingMode']),
    );
  }
}
