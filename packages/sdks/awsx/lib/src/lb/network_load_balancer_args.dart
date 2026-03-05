// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener.dart';
import 'target_group.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

/// {@template pulumi_lb_network_load_balancer_args_doc}
/// The set of arguments for NetworkLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_lb_network_load_balancer_args_doc}
class NetworkLoadBalancerArgs {
  /// Access Logs block. See below.
  final pulumi.Input<pulumi_aws_lb.LoadBalancerAccessLogs>? accessLogs;
  /// Client keep alive value in seconds. The valid range is 60-604800 seconds. The default is 3600 seconds.
  final pulumi.Input<int>? clientKeepAlive;
  /// Connection Logs block. See below. Only valid for Load Balancers of type `application`.
  final pulumi.Input<pulumi_aws_lb.LoadBalancerConnectionLogs>? connectionLogs;
  /// ID of the customer owned ipv4 pool to use for this load balancer.
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  /// Options creating a default target group.
  final pulumi.Input<TargetGroup>? defaultTargetGroup;
  /// Port to use to connect with the target. Valid values are ports 1-65535. Defaults to 80.
  final pulumi.Input<int>? defaultTargetGroupPort;
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
  /// Whether the two headers (`x-amzn-tls-version` and `x-amzn-tls-cipher-suite`), which contain information about the negotiated TLS version and cipher suite, are added to the client request before sending it to the target. Only valid for Load Balancers of type `application`. Defaults to `false`
  final pulumi.Input<bool>? enableTlsVersionAndCipherSuiteHeaders;
  /// Whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. Defaults to `false`.
  final pulumi.Input<bool>? enableWafFailOpen;
  /// Whether the X-Forwarded-For header should preserve the source port that the client used to connect to the load balancer in `application` load balancers. Defaults to `false`.
  final pulumi.Input<bool>? enableXffClientPort;
  /// Whether zonal shift is enabled. Defaults to `false`.
  final pulumi.Input<bool>? enableZonalShift;
  /// Whether inbound security group rules are enforced for traffic originating from a PrivateLink. Only valid for Load Balancers of type `network`. The possible values are `on` and `off`.
  final pulumi.Input<String>? enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;
  /// Health Check Logs block. See below. Only valid for Load Balancers of type `application`.
  final pulumi.Input<pulumi_aws_lb.LoadBalancerHealthCheckLogs>? healthCheckLogs;
  /// Time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type `application`. Default: 60.
  final pulumi.Input<int>? idleTimeout;
  /// If true, the LB will be internal. Defaults to `false`.
  final pulumi.Input<bool>? internal;
  /// Type of IP addresses used by the subnets for your load balancer. The possible values depend upon the load balancer type: `ipv4` (all load balancer types), `dualstack` (all load balancer types), and `dualstack-without-public-ipv4` (type `application` only).
  final pulumi.Input<String>? ipAddressType;
  /// . The IPAM pools to use with the load balancer.  Only valid for Load Balancers of type `application`. See ipam_pools for more information.
  final pulumi.Input<pulumi_aws_lb.LoadBalancerIpamPools>? ipamPools;
  /// A listener to create. Only one of [listener] and [listeners] can be specified.
  final pulumi.Input<Listener>? listener;
  /// List of listeners to create. Only one of [listener] and [listeners] can be specified.
  final pulumi.Input<List<Listener>>? listeners;
  /// Minimum capacity for a load balancer. Only valid for Load Balancers of type `application` or `network`.
  final pulumi.Input<pulumi_aws_lb.LoadBalancerMinimumLoadBalancerCapacity>? minimumLoadBalancerCapacity;
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
  /// List of subnet IDs to attach to the LB. For Load Balancers of type `network` subnets can only be added (see [Availability Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#availability-zones)), deleting a subnet for load balancers of type `network` will force a recreation of the resource.
  final pulumi.Input<List<String>>? subnetIds;
  /// Subnet mapping block. See below. For Load Balancers of type `network` subnet mappings can only be added.
  final pulumi.Input<List<pulumi_aws_lb.LoadBalancerSubnetMapping>>? subnetMappings;
  /// A list of subnets to attach to the LB. Only one of [subnets], [subnetIds] or [subnetMappings] can be specified
  final pulumi.Input<List<pulumi_aws_ec2.Subnet>>? subnets;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Determines how the load balancer modifies the `X-Forwarded-For` header in the HTTP request before sending the request to the target. The possible values are `append`, `preserve`, and `remove`. Only valid for Load Balancers of type `application`. The default is `append`.
  ///
  /// &gt; **NOTE:** Please note that internal LBs can only use `ipv4` as the `ip_address_type`. You can only change to `dualstack` `ip_address_type` if the selected subnets are IPv6 enabled.
  ///
  /// &gt; **NOTE:** Please note that one of either `subnets` or `subnet_mapping` is required.
  final pulumi.Input<String>? xffHeaderProcessingMode;

  /// Creates a new [NetworkLoadBalancerArgs].
  /// [accessLogs] Access Logs block. See below.
  /// [clientKeepAlive] Client keep alive value in seconds. The valid range is 60-604800 seconds. The default is 3600 seconds.
  /// [connectionLogs] Connection Logs block. See below. Only valid for Load Balancers of type `application`.
  /// [customerOwnedIpv4Pool] ID of the customer owned ipv4 pool to use for this load balancer.
  /// [defaultTargetGroup] Options creating a default target group.
  /// [defaultTargetGroupPort] Port to use to connect with the target. Valid values are ports 1-65535. Defaults to 80.
  /// [desyncMitigationMode] How the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are `monitor`, `defensive` (default), `strictest`.
  /// [dnsRecordClientRoutingPolicy] How traffic is distributed among the load balancer Availability Zones. Possible values are `any_availability_zone` (default), `availability_zone_affinity`, or `partial_availability_zone_affinity`. See   [Availability Zone DNS affinity](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#zonal-dns-affinity) for additional details. Only valid for `network` type load balancers.
  /// [dropInvalidHeaderFields] Whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type `application`.
  /// [enableCrossZoneLoadBalancing] If true, cross-zone load balancing of the load balancer will be enabled. For `network` and `gateway` type load balancers, this feature is disabled by default (`false`). For `application` load balancer this feature is always enabled (`true`) and cannot be disabled. Defaults to `false`.
  /// [enableDeletionProtection] If true, deletion of the load balancer will be disabled via the AWS API. This will prevent this provider from deleting the load balancer. Defaults to `false`.
  /// [enableTlsVersionAndCipherSuiteHeaders] Whether the two headers (`x-amzn-tls-version` and `x-amzn-tls-cipher-suite`), which contain information about the negotiated TLS version and cipher suite, are added to the client request before sending it to the target. Only valid for Load Balancers of type `application`. Defaults to `false`
  /// [enableWafFailOpen] Whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. Defaults to `false`.
  /// [enableXffClientPort] Whether the X-Forwarded-For header should preserve the source port that the client used to connect to the load balancer in `application` load balancers. Defaults to `false`.
  /// [enableZonalShift] Whether zonal shift is enabled. Defaults to `false`.
  /// [enforceSecurityGroupInboundRulesOnPrivateLinkTraffic] Whether inbound security group rules are enforced for traffic originating from a PrivateLink. Only valid for Load Balancers of type `network`. The possible values are `on` and `off`.
  /// [healthCheckLogs] Health Check Logs block. See below. Only valid for Load Balancers of type `application`.
  /// [idleTimeout] Time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type `application`. Default: 60.
  /// [internal] If true, the LB will be internal. Defaults to `false`.
  /// [ipAddressType] Type of IP addresses used by the subnets for your load balancer. The possible values depend upon the load balancer type: `ipv4` (all load balancer types), `dualstack` (all load balancer types), and `dualstack-without-public-ipv4` (type `application` only).
  /// [ipamPools] . The IPAM pools to use with the load balancer.  Only valid for Load Balancers of type `application`. See ipam_pools for more information.
  /// [listener] A listener to create. Only one of [listener] and [listeners] can be specified.
  /// [listeners] List of listeners to create. Only one of [listener] and [listeners] can be specified.
  /// [minimumLoadBalancerCapacity] Minimum capacity for a load balancer. Only valid for Load Balancers of type `application` or `network`.
  /// [name] Name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified, this provider will autogenerate a name beginning with `tf-lb`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [preserveHostHeader] Whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryIpsAutoAssignedPerSubnet] The number of secondary IP addresses to configure for your load balancer nodes. Only valid for Load Balancers of type `network`. The valid range is 0-7. When decreased, this will force a recreation of the resource. Default: `0`.
  /// [securityGroups] List of security group IDs to assign to the LB. Only valid for Load Balancers of type `application` or `network`. For load balancers of type `network` security groups cannot be added if none are currently present, and cannot all be removed once added. If either of these conditions are met, this will force a recreation of the resource.
  /// [subnetIds] List of subnet IDs to attach to the LB. For Load Balancers of type `network` subnets can only be added (see [Availability Zones](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#availability-zones)), deleting a subnet for load balancers of type `network` will force a recreation of the resource.
  /// [subnetMappings] Subnet mapping block. See below. For Load Balancers of type `network` subnet mappings can only be added.
  /// [subnets] A list of subnets to attach to the LB. Only one of [subnets], [subnetIds] or [subnetMappings] can be specified
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [xffHeaderProcessingMode] Determines how the load balancer modifies the `X-Forwarded-For` header in the HTTP request before sending the request to the target. The possible values are `append`, `preserve`, and `remove`. Only valid for Load Balancers of type `application`. The default is `append`.
  NetworkLoadBalancerArgs({
    this.accessLogs,
    this.clientKeepAlive,
    this.connectionLogs,
    this.customerOwnedIpv4Pool,
    this.defaultTargetGroup,
    this.defaultTargetGroupPort,
    this.desyncMitigationMode,
    this.dnsRecordClientRoutingPolicy,
    this.dropInvalidHeaderFields,
    this.enableCrossZoneLoadBalancing,
    this.enableDeletionProtection,
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
    this.listener,
    this.listeners,
    this.minimumLoadBalancerCapacity,
    this.name,
    this.namePrefix,
    this.preserveHostHeader,
    this.region,
    this.secondaryIpsAutoAssignedPerSubnet,
    this.securityGroups,
    this.subnetIds,
    this.subnetMappings,
    this.subnets,
    this.tags,
    this.xffHeaderProcessingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_lb.LoadBalancerAccessLogs, Map<String, dynamic>>(accessLogs, (value) => value.toMap()),
      'clientKeepAlive': ?clientKeepAlive,
      'connectionLogs': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_lb.LoadBalancerConnectionLogs, Map<String, dynamic>>(connectionLogs, (value) => value.toMap()),
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'defaultTargetGroup': ?pulumi.Input.mapOptionalInputValue<TargetGroup, Map<String, dynamic>>(defaultTargetGroup, (value) => value.toMap()),
      'defaultTargetGroupPort': ?defaultTargetGroupPort,
      'desyncMitigationMode': ?desyncMitigationMode,
      'dnsRecordClientRoutingPolicy': ?dnsRecordClientRoutingPolicy,
      'dropInvalidHeaderFields': ?dropInvalidHeaderFields,
      'enableCrossZoneLoadBalancing': ?enableCrossZoneLoadBalancing,
      'enableDeletionProtection': ?enableDeletionProtection,
      'enableTlsVersionAndCipherSuiteHeaders': ?enableTlsVersionAndCipherSuiteHeaders,
      'enableWafFailOpen': ?enableWafFailOpen,
      'enableXffClientPort': ?enableXffClientPort,
      'enableZonalShift': ?enableZonalShift,
      'enforceSecurityGroupInboundRulesOnPrivateLinkTraffic': ?enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
      'healthCheckLogs': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_lb.LoadBalancerHealthCheckLogs, Map<String, dynamic>>(healthCheckLogs, (value) => value.toMap()),
      'idleTimeout': ?idleTimeout,
      'internal': ?internal,
      'ipAddressType': ?ipAddressType,
      'ipamPools': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_lb.LoadBalancerIpamPools, Map<String, dynamic>>(ipamPools, (value) => value.toMap()),
      'listener': ?pulumi.Input.mapOptionalInputValue<Listener, Map<String, dynamic>>(listener, (value) => value.toMap()),
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<Listener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<Listener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minimumLoadBalancerCapacity': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_lb.LoadBalancerMinimumLoadBalancerCapacity, Map<String, dynamic>>(minimumLoadBalancerCapacity, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'preserveHostHeader': ?preserveHostHeader,
      'region': ?region,
      'secondaryIpsAutoAssignedPerSubnet': ?secondaryIpsAutoAssignedPerSubnet,
      'securityGroups': ?securityGroups,
      'subnetIds': ?subnetIds,
      'subnetMappings': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_lb.LoadBalancerSubnetMapping>, List<Map<String, dynamic>>>(subnetMappings, (value) => pulumi.Input.encodeList<pulumi_aws_lb.LoadBalancerSubnetMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': ?subnets,
      'tags': ?tags,
      'xffHeaderProcessingMode': ?xffHeaderProcessingMode,
    };
  }

  factory NetworkLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return NetworkLoadBalancerArgs(
      accessLogs: (() { final guardedValue = map['accessLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_aws_lb.LoadBalancerAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientKeepAlive: (() { final guardedValue = map['clientKeepAlive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      connectionLogs: (() { final guardedValue = map['connectionLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_aws_lb.LoadBalancerConnectionLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerOwnedIpv4Pool: (() { final guardedValue = map['customerOwnedIpv4Pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTargetGroup: (() { final guardedValue = map['defaultTargetGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultTargetGroupPort: (() { final guardedValue = map['defaultTargetGroupPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      desyncMitigationMode: (() { final guardedValue = map['desyncMitigationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsRecordClientRoutingPolicy: (() { final guardedValue = map['dnsRecordClientRoutingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dropInvalidHeaderFields: (() { final guardedValue = map['dropInvalidHeaderFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableCrossZoneLoadBalancing: (() { final guardedValue = map['enableCrossZoneLoadBalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDeletionProtection: (() { final guardedValue = map['enableDeletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTlsVersionAndCipherSuiteHeaders: (() { final guardedValue = map['enableTlsVersionAndCipherSuiteHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableWafFailOpen: (() { final guardedValue = map['enableWafFailOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableXffClientPort: (() { final guardedValue = map['enableXffClientPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableZonalShift: (() { final guardedValue = map['enableZonalShift']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic: (() { final guardedValue = map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckLogs: (() { final guardedValue = map['healthCheckLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_aws_lb.LoadBalancerHealthCheckLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      internal: (() { final guardedValue = map['internal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamPools: (() { final guardedValue = map['ipamPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_aws_lb.LoadBalancerIpamPools.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listener: (() { final guardedValue = map['listener']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Listener.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Listener>(guardedValue, (value) => Listener.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minimumLoadBalancerCapacity: (() { final guardedValue = map['minimumLoadBalancerCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_aws_lb.LoadBalancerMinimumLoadBalancerCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preserveHostHeader: (() { final guardedValue = map['preserveHostHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpsAutoAssignedPerSubnet: (() { final guardedValue = map['secondaryIpsAutoAssignedPerSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetMappings: (() { final guardedValue = map['subnetMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<pulumi_aws_lb.LoadBalancerSubnetMapping>(guardedValue, (value) => pulumi_aws_lb.LoadBalancerSubnetMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<pulumi_aws_ec2.Subnet>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      xffHeaderProcessingMode: (() { final guardedValue = map['xffHeaderProcessingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

