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
  /// > **NOTE:** Please note that internal LBs can only use `ipv4` as the `ip_address_type`. You can only change to `dualstack` `ip_address_type` if the selected subnets are IPv6 enabled.
  ///
  /// > **NOTE:** Please note that one of either `subnets` or `subnet_mapping` is required.
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
    pulumi.Output<pulumi_aws_lb.LoadBalancerAccessLogs>? accessLogs,
    pulumi.Output<int>? clientKeepAlive,
    pulumi.Output<pulumi_aws_lb.LoadBalancerConnectionLogs>? connectionLogs,
    pulumi.Output<String>? customerOwnedIpv4Pool,
    pulumi.Output<TargetGroup>? defaultTargetGroup,
    pulumi.Output<int>? defaultTargetGroupPort,
    pulumi.Output<String>? desyncMitigationMode,
    pulumi.Output<String>? dnsRecordClientRoutingPolicy,
    pulumi.Output<bool>? dropInvalidHeaderFields,
    pulumi.Output<bool>? enableCrossZoneLoadBalancing,
    pulumi.Output<bool>? enableDeletionProtection,
    pulumi.Output<bool>? enableTlsVersionAndCipherSuiteHeaders,
    pulumi.Output<bool>? enableWafFailOpen,
    pulumi.Output<bool>? enableXffClientPort,
    pulumi.Output<bool>? enableZonalShift,
    pulumi.Output<String>? enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    pulumi.Output<pulumi_aws_lb.LoadBalancerHealthCheckLogs>? healthCheckLogs,
    pulumi.Output<int>? idleTimeout,
    pulumi.Output<bool>? internal,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<pulumi_aws_lb.LoadBalancerIpamPools>? ipamPools,
    pulumi.Output<Listener>? listener,
    pulumi.Output<List<Listener>>? listeners,
    pulumi.Output<pulumi_aws_lb.LoadBalancerMinimumLoadBalancerCapacity>? minimumLoadBalancerCapacity,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<bool>? preserveHostHeader,
    pulumi.Output<String>? region,
    pulumi.Output<int>? secondaryIpsAutoAssignedPerSubnet,
    pulumi.Output<List<String>>? securityGroups,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<List<pulumi_aws_lb.LoadBalancerSubnetMapping>>? subnetMappings,
    pulumi.Output<List<pulumi_aws_ec2.Subnet>>? subnets,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? xffHeaderProcessingMode,
  }) :
      accessLogs = pulumi.Input.asOptionalInput<pulumi_aws_lb.LoadBalancerAccessLogs>(accessLogs),
      clientKeepAlive = pulumi.Input.asOptionalInput<int>(clientKeepAlive),
      connectionLogs = pulumi.Input.asOptionalInput<pulumi_aws_lb.LoadBalancerConnectionLogs>(connectionLogs),
      customerOwnedIpv4Pool = pulumi.Input.asOptionalInput<String>(customerOwnedIpv4Pool),
      defaultTargetGroup = pulumi.Input.asOptionalInput<TargetGroup>(defaultTargetGroup),
      defaultTargetGroupPort = pulumi.Input.asOptionalInput<int>(defaultTargetGroupPort),
      desyncMitigationMode = pulumi.Input.asOptionalInput<String>(desyncMitigationMode),
      dnsRecordClientRoutingPolicy = pulumi.Input.asOptionalInput<String>(dnsRecordClientRoutingPolicy),
      dropInvalidHeaderFields = pulumi.Input.asOptionalInput<bool>(dropInvalidHeaderFields),
      enableCrossZoneLoadBalancing = pulumi.Input.asOptionalInput<bool>(enableCrossZoneLoadBalancing),
      enableDeletionProtection = pulumi.Input.asOptionalInput<bool>(enableDeletionProtection),
      enableTlsVersionAndCipherSuiteHeaders = pulumi.Input.asOptionalInput<bool>(enableTlsVersionAndCipherSuiteHeaders),
      enableWafFailOpen = pulumi.Input.asOptionalInput<bool>(enableWafFailOpen),
      enableXffClientPort = pulumi.Input.asOptionalInput<bool>(enableXffClientPort),
      enableZonalShift = pulumi.Input.asOptionalInput<bool>(enableZonalShift),
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic = pulumi.Input.asOptionalInput<String>(enforceSecurityGroupInboundRulesOnPrivateLinkTraffic),
      healthCheckLogs = pulumi.Input.asOptionalInput<pulumi_aws_lb.LoadBalancerHealthCheckLogs>(healthCheckLogs),
      idleTimeout = pulumi.Input.asOptionalInput<int>(idleTimeout),
      internal = pulumi.Input.asOptionalInput<bool>(internal),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      ipamPools = pulumi.Input.asOptionalInput<pulumi_aws_lb.LoadBalancerIpamPools>(ipamPools),
      listener = pulumi.Input.asOptionalInput<Listener>(listener),
      listeners = pulumi.Input.asOptionalInput<List<Listener>>(listeners),
      minimumLoadBalancerCapacity = pulumi.Input.asOptionalInput<pulumi_aws_lb.LoadBalancerMinimumLoadBalancerCapacity>(minimumLoadBalancerCapacity),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      preserveHostHeader = pulumi.Input.asOptionalInput<bool>(preserveHostHeader),
      region = pulumi.Input.asOptionalInput<String>(region),
      secondaryIpsAutoAssignedPerSubnet = pulumi.Input.asOptionalInput<int>(secondaryIpsAutoAssignedPerSubnet),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      subnetMappings = pulumi.Input.asOptionalInput<List<pulumi_aws_lb.LoadBalancerSubnetMapping>>(subnetMappings),
      subnets = pulumi.Input.asOptionalInput<List<pulumi_aws_ec2.Subnet>>(subnets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      xffHeaderProcessingMode = pulumi.Input.asOptionalInput<String>(xffHeaderProcessingMode);

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
      accessLogs: map['accessLogs'] == null ? null : pulumi.Output.create<pulumi_aws_lb.LoadBalancerAccessLogs>(pulumi_aws_lb.LoadBalancerAccessLogs.fromMap((map['accessLogs'] as Map).cast<String, dynamic>())),
      clientKeepAlive: map['clientKeepAlive'] == null ? null : pulumi.Output.create<int>(map['clientKeepAlive'] as int),
      connectionLogs: map['connectionLogs'] == null ? null : pulumi.Output.create<pulumi_aws_lb.LoadBalancerConnectionLogs>(pulumi_aws_lb.LoadBalancerConnectionLogs.fromMap((map['connectionLogs'] as Map).cast<String, dynamic>())),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : pulumi.Output.create<String>(map['customerOwnedIpv4Pool'] as String),
      defaultTargetGroup: map['defaultTargetGroup'] == null ? null : pulumi.Output.create<TargetGroup>(TargetGroup.fromMap((map['defaultTargetGroup'] as Map).cast<String, dynamic>())),
      defaultTargetGroupPort: map['defaultTargetGroupPort'] == null ? null : pulumi.Output.create<int>(map['defaultTargetGroupPort'] as int),
      desyncMitigationMode: map['desyncMitigationMode'] == null ? null : pulumi.Output.create<String>(map['desyncMitigationMode'] as String),
      dnsRecordClientRoutingPolicy: map['dnsRecordClientRoutingPolicy'] == null ? null : pulumi.Output.create<String>(map['dnsRecordClientRoutingPolicy'] as String),
      dropInvalidHeaderFields: map['dropInvalidHeaderFields'] == null ? null : pulumi.Output.create<bool>(map['dropInvalidHeaderFields'] as bool),
      enableCrossZoneLoadBalancing: map['enableCrossZoneLoadBalancing'] == null ? null : pulumi.Output.create<bool>(map['enableCrossZoneLoadBalancing'] as bool),
      enableDeletionProtection: map['enableDeletionProtection'] == null ? null : pulumi.Output.create<bool>(map['enableDeletionProtection'] as bool),
      enableTlsVersionAndCipherSuiteHeaders: map['enableTlsVersionAndCipherSuiteHeaders'] == null ? null : pulumi.Output.create<bool>(map['enableTlsVersionAndCipherSuiteHeaders'] as bool),
      enableWafFailOpen: map['enableWafFailOpen'] == null ? null : pulumi.Output.create<bool>(map['enableWafFailOpen'] as bool),
      enableXffClientPort: map['enableXffClientPort'] == null ? null : pulumi.Output.create<bool>(map['enableXffClientPort'] as bool),
      enableZonalShift: map['enableZonalShift'] == null ? null : pulumi.Output.create<bool>(map['enableZonalShift'] as bool),
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic: map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic'] == null ? null : pulumi.Output.create<String>(map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic'] as String),
      healthCheckLogs: map['healthCheckLogs'] == null ? null : pulumi.Output.create<pulumi_aws_lb.LoadBalancerHealthCheckLogs>(pulumi_aws_lb.LoadBalancerHealthCheckLogs.fromMap((map['healthCheckLogs'] as Map).cast<String, dynamic>())),
      idleTimeout: map['idleTimeout'] == null ? null : pulumi.Output.create<int>(map['idleTimeout'] as int),
      internal: map['internal'] == null ? null : pulumi.Output.create<bool>(map['internal'] as bool),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      ipamPools: map['ipamPools'] == null ? null : pulumi.Output.create<pulumi_aws_lb.LoadBalancerIpamPools>(pulumi_aws_lb.LoadBalancerIpamPools.fromMap((map['ipamPools'] as Map).cast<String, dynamic>())),
      listener: map['listener'] == null ? null : pulumi.Output.create<Listener>(Listener.fromMap((map['listener'] as Map).cast<String, dynamic>())),
      listeners: map['listeners'] == null ? null : pulumi.Output.create<List<Listener>>(pulumi.Input.decodeList<Listener>(map['listeners'], (value) => Listener.fromMap((value as Map).cast<String, dynamic>()))),
      minimumLoadBalancerCapacity: map['minimumLoadBalancerCapacity'] == null ? null : pulumi.Output.create<pulumi_aws_lb.LoadBalancerMinimumLoadBalancerCapacity>(pulumi_aws_lb.LoadBalancerMinimumLoadBalancerCapacity.fromMap((map['minimumLoadBalancerCapacity'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      preserveHostHeader: map['preserveHostHeader'] == null ? null : pulumi.Output.create<bool>(map['preserveHostHeader'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secondaryIpsAutoAssignedPerSubnet: map['secondaryIpsAutoAssignedPerSubnet'] == null ? null : pulumi.Output.create<int>(map['secondaryIpsAutoAssignedPerSubnet'] as int),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroups'] as List).cast<String>()),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      subnetMappings: map['subnetMappings'] == null ? null : pulumi.Output.create<List<pulumi_aws_lb.LoadBalancerSubnetMapping>>(pulumi.Input.decodeList<pulumi_aws_lb.LoadBalancerSubnetMapping>(map['subnetMappings'], (value) => pulumi_aws_lb.LoadBalancerSubnetMapping.fromMap((value as Map).cast<String, dynamic>()))),
      subnets: map['subnets'] == null ? null : pulumi.Output.create<List<pulumi_aws_ec2.Subnet>>((map['subnets'] as List).cast<pulumi_aws_ec2.Subnet>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      xffHeaderProcessingMode: map['xffHeaderProcessingMode'] == null ? null : pulumi.Output.create<String>(map['xffHeaderProcessingMode'] as String),
    );
  }
}

