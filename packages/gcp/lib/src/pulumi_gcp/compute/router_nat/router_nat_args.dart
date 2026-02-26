// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../router_nat_log_config/router_nat_log_config.dart';
import '../router_nat_nat64_subnetwork/router_nat_nat64_subnetwork.dart';
import '../router_nat_rule/router_nat_rule.dart';
import '../router_nat_subnetwork/router_nat_subnetwork.dart';

/// The set of arguments for RouterNat.
class RouterNatArgs {
  /// The network tier to use when automatically reserving NAT IP addresses.
  /// Must be one of: PREMIUM, STANDARD. If not specified, then the current
  /// project-level default tier is used.
  /// Possible values are: `PREMIUM`, `STANDARD`.
  final Input<String>? autoNetworkTier;

  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final Input<List<String>>? drainNatIps;

  /// Enable Dynamic Port Allocation.
  /// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
  /// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
  /// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// Mutually exclusive with enableEndpointIndependentMapping.
  final Input<bool>? enableDynamicPortAllocation;

  /// Enable endpoint independent mapping.
  /// For more information see the [official documentation](https://docs.cloud.google.com/nat/docs/public-nat#specs-rfcs).
  final Input<bool>? enableEndpointIndependentMapping;

  /// Specifies the endpoint Types supported by the NAT Gateway.
  /// Supported values include:
  /// `ENDPOINT_TYPE_VM`, `ENDPOINT_TYPE_SWG`,
  /// `ENDPOINT_TYPE_MANAGED_PROXY_LB`.
  final Input<List<String>>? endpointTypes;

  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final Input<int>? icmpIdleTimeoutSec;

  /// Self-links of NAT IPs to be used as initial value for creation alongside a RouterNatAddress resource.
  /// Conflicts with natIps and drainNatIps. Only valid if natIpAllocateOption is set to MANUAL_ONLY.
  final Input<List<String>>? initialNatIps;

  /// Configuration for logging on NAT
  /// Structure is documented below.
  final Input<RouterNatLogConfig>? logConfig;

  /// Maximum number of ports allocated to a VM from this NAT.
  /// This field can only be set when enableDynamicPortAllocation is enabled.
  final Input<int>? maxPortsPerVm;

  /// Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set.
  final Input<int>? minPortsPerVm;

  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final Input<String>? name;

  /// One or more subnetwork NAT configurations whose traffic should be translated by NAT64 Gateway.
  /// Only used if <span pulumi-lang-nodejs="`sourceSubnetworkIpRangesToNat64`" pulumi-lang-dotnet="`SourceSubnetworkIpRangesToNat64`" pulumi-lang-go="`sourceSubnetworkIpRangesToNat64`" pulumi-lang-python="`source_subnetwork_ip_ranges_to_nat64`" pulumi-lang-yaml="`sourceSubnetworkIpRangesToNat64`" pulumi-lang-java="`sourceSubnetworkIpRangesToNat64`">`source_subnetwork_ip_ranges_to_nat64`</span> is set to `LIST_OF_IPV6_SUBNETWORKS`
  /// Structure is documented below.
  final Input<List<RouterNatNat64Subnetwork>>? nat64Subnetworks;

  /// How external IPs should be allocated for this NAT. Valid values are
  /// `AUTO_ONLY` for only allowing NAT IPs allocated by Google Cloud
  /// Platform, or `MANUAL_ONLY` for only user-allocated NAT IP addresses.
  /// Possible values are: `MANUAL_ONLY`, `AUTO_ONLY`.
  final Input<String>? natIpAllocateOption;

  /// Self-links of NAT IPs. Only valid if natIpAllocateOption
  /// is set to MANUAL_ONLY.
  /// If this field is used alongside with a count created list of address resources `google_compute_address.foobar.*.self_link`,
  /// the access level resource for the address resource must have a <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> block with <span pulumi-lang-nodejs="`createBeforeDestroy " pulumi-lang-dotnet="`CreateBeforeDestroy " pulumi-lang-go="`createBeforeDestroy " pulumi-lang-python="`create_before_destroy " pulumi-lang-yaml="`createBeforeDestroy " pulumi-lang-java="`createBeforeDestroy ">`create_before_destroy </span>= true` so
  /// the number of resources can be increased/decreased without triggering the `resourceInUseByAnotherResource` error.
  final Input<List<String>>? natIps;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region where the router and NAT reside.
  final Input<String>? region;

  /// The name of the Cloud Router in which this NAT will be configured.
  final Input<String> router;

  /// A list of rules associated with this NAT.
  /// Structure is documented below.
  final Input<List<RouterNatRule>>? rules;

  /// How NAT should be configured per Subnetwork.
  /// If `ALL_SUBNETWORKS_ALL_IP_RANGES`, all of the
  /// IP ranges in every Subnetwork are allowed to Nat.
  /// If `ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES`, all of the primary IP
  /// ranges in every Subnetwork are allowed to Nat.
  /// `LIST_OF_SUBNETWORKS`: A list of Subnetworks are allowed to Nat
  /// (specified in the field subnetwork below). Note that if this field
  /// contains ALL_SUBNETWORKS_ALL_IP_RANGES or
  /// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
  /// other RouterNat section in any Router for this network in this region.
  /// Possible values are: `ALL_SUBNETWORKS_ALL_IP_RANGES`, `ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES`, `LIST_OF_SUBNETWORKS`.
  final Input<String> sourceSubnetworkIpRangesToNat;

  /// Specify the Nat option for NAT64, which can take one of the following values:
  /// ALL_IPV6_SUBNETWORKS: All of the IP ranges in every Subnetwork are allowed to Nat.
  /// LIST_OF_IPV6_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field nat64Subnetwork below).
  /// Note that if this field contains NAT64_ALL_V6_SUBNETWORKS no other Router.Nat section in this region can also enable NAT64 for any Subnetworks in this network.
  /// Other Router.Nat sections can still be present to enable NAT44 only.
  /// Possible values are: `ALL_IPV6_SUBNETWORKS`, `LIST_OF_IPV6_SUBNETWORKS`.
  final Input<String>? sourceSubnetworkIpRangesToNat64;

  /// One or more subnetwork NAT configurations. Only used if
  /// <span pulumi-lang-nodejs="`sourceSubnetworkIpRangesToNat`" pulumi-lang-dotnet="`SourceSubnetworkIpRangesToNat`" pulumi-lang-go="`sourceSubnetworkIpRangesToNat`" pulumi-lang-python="`source_subnetwork_ip_ranges_to_nat`" pulumi-lang-yaml="`sourceSubnetworkIpRangesToNat`" pulumi-lang-java="`sourceSubnetworkIpRangesToNat`">`source_subnetwork_ip_ranges_to_nat`</span> is set to `LIST_OF_SUBNETWORKS`
  /// Structure is documented below.
  final Input<List<RouterNatSubnetwork>>? subnetworks;

  /// Timeout (in seconds) for TCP established connections.
  /// Defaults to 1200s if not set.
  final Input<int>? tcpEstablishedIdleTimeoutSec;

  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
  /// Defaults to 120s if not set.
  final Input<int>? tcpTimeWaitTimeoutSec;

  /// Timeout (in seconds) for TCP transitory connections.
  /// Defaults to 30s if not set.
  final Input<int>? tcpTransitoryIdleTimeoutSec;

  /// Indicates whether this NAT is used for public or private IP translation.
  /// If unspecified, it defaults to PUBLIC.
  /// If `PUBLIC` NAT used for public IP translation.
  /// If `PRIVATE` NAT used for private IP translation.
  /// Default value is `PUBLIC`.
  /// Possible values are: `PUBLIC`, `PRIVATE`.
  final Input<String>? type;

  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final Input<int>? udpIdleTimeoutSec;

  RouterNatArgs({
    this.autoNetworkTier,
    this.drainNatIps,
    this.enableDynamicPortAllocation,
    this.enableEndpointIndependentMapping,
    this.endpointTypes,
    this.icmpIdleTimeoutSec,
    this.initialNatIps,
    this.logConfig,
    this.maxPortsPerVm,
    this.minPortsPerVm,
    this.name,
    this.nat64Subnetworks,
    this.natIpAllocateOption,
    this.natIps,
    this.project,
    this.region,
    required this.router,
    this.rules,
    required this.sourceSubnetworkIpRangesToNat,
    this.sourceSubnetworkIpRangesToNat64,
    this.subnetworks,
    this.tcpEstablishedIdleTimeoutSec,
    this.tcpTimeWaitTimeoutSec,
    this.tcpTransitoryIdleTimeoutSec,
    this.type,
    this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoNetworkTierValue = autoNetworkTier;
    if (autoNetworkTierValue != null) {
      map['autoNetworkTier'] = autoNetworkTierValue;
    }
    final drainNatIpsValue = drainNatIps;
    if (drainNatIpsValue != null) {
      map['drainNatIps'] = drainNatIpsValue;
    }
    final enableDynamicPortAllocationValue = enableDynamicPortAllocation;
    if (enableDynamicPortAllocationValue != null) {
      map['enableDynamicPortAllocation'] = enableDynamicPortAllocationValue;
    }
    final enableEndpointIndependentMappingValue =
        enableEndpointIndependentMapping;
    if (enableEndpointIndependentMappingValue != null) {
      map['enableEndpointIndependentMapping'] =
          enableEndpointIndependentMappingValue;
    }
    final endpointTypesValue = endpointTypes;
    if (endpointTypesValue != null) {
      map['endpointTypes'] = endpointTypesValue;
    }
    final icmpIdleTimeoutSecValue = icmpIdleTimeoutSec;
    if (icmpIdleTimeoutSecValue != null) {
      map['icmpIdleTimeoutSec'] = icmpIdleTimeoutSecValue;
    }
    final initialNatIpsValue = initialNatIps;
    if (initialNatIpsValue != null) {
      map['initialNatIps'] = initialNatIpsValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] =
          Input.mapOptionalInputValue<RouterNatLogConfig, Map<String, dynamic>>(
              logConfigValue, (value) => value.toMap());
    }
    final maxPortsPerVmValue = maxPortsPerVm;
    if (maxPortsPerVmValue != null) {
      map['maxPortsPerVm'] = maxPortsPerVmValue;
    }
    final minPortsPerVmValue = minPortsPerVm;
    if (minPortsPerVmValue != null) {
      map['minPortsPerVm'] = minPortsPerVmValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nat64SubnetworksValue = nat64Subnetworks;
    if (nat64SubnetworksValue != null) {
      map['nat64Subnetworks'] = Input.mapOptionalInputValue<
              List<RouterNatNat64Subnetwork>, List<Map<String, dynamic>>>(
          nat64SubnetworksValue,
          (value) =>
              Input.encodeList<RouterNatNat64Subnetwork, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final natIpAllocateOptionValue = natIpAllocateOption;
    if (natIpAllocateOptionValue != null) {
      map['natIpAllocateOption'] = natIpAllocateOptionValue;
    }
    final natIpsValue = natIps;
    if (natIpsValue != null) {
      map['natIps'] = natIpsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['router'] = router;
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<List<RouterNatRule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<RouterNatRule, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['sourceSubnetworkIpRangesToNat'] = sourceSubnetworkIpRangesToNat;
    final sourceSubnetworkIpRangesToNat64Value =
        sourceSubnetworkIpRangesToNat64;
    if (sourceSubnetworkIpRangesToNat64Value != null) {
      map['sourceSubnetworkIpRangesToNat64'] =
          sourceSubnetworkIpRangesToNat64Value;
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = Input.mapOptionalInputValue<
              List<RouterNatSubnetwork>, List<Map<String, dynamic>>>(
          subnetworksValue,
          (value) =>
              Input.encodeList<RouterNatSubnetwork, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tcpEstablishedIdleTimeoutSecValue = tcpEstablishedIdleTimeoutSec;
    if (tcpEstablishedIdleTimeoutSecValue != null) {
      map['tcpEstablishedIdleTimeoutSec'] = tcpEstablishedIdleTimeoutSecValue;
    }
    final tcpTimeWaitTimeoutSecValue = tcpTimeWaitTimeoutSec;
    if (tcpTimeWaitTimeoutSecValue != null) {
      map['tcpTimeWaitTimeoutSec'] = tcpTimeWaitTimeoutSecValue;
    }
    final tcpTransitoryIdleTimeoutSecValue = tcpTransitoryIdleTimeoutSec;
    if (tcpTransitoryIdleTimeoutSecValue != null) {
      map['tcpTransitoryIdleTimeoutSec'] = tcpTransitoryIdleTimeoutSecValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final udpIdleTimeoutSecValue = udpIdleTimeoutSec;
    if (udpIdleTimeoutSecValue != null) {
      map['udpIdleTimeoutSec'] = udpIdleTimeoutSecValue;
    }
    return map;
  }

  factory RouterNatArgs.fromMap(Map<String, dynamic> map) {
    return RouterNatArgs(
      autoNetworkTier: Input.asOptionalInput<String>(map['autoNetworkTier']),
      drainNatIps: Input.asOptionalInput<List<String>>(map['drainNatIps']),
      enableDynamicPortAllocation:
          Input.asOptionalInput<bool>(map['enableDynamicPortAllocation']),
      enableEndpointIndependentMapping:
          Input.asOptionalInput<bool>(map['enableEndpointIndependentMapping']),
      endpointTypes: Input.asOptionalInput<List<String>>(map['endpointTypes']),
      icmpIdleTimeoutSec: Input.asOptionalInput<int>(map['icmpIdleTimeoutSec']),
      initialNatIps: Input.asOptionalInput<List<String>>(map['initialNatIps']),
      logConfig: Input.asOptionalInput<RouterNatLogConfig>(map['logConfig']),
      maxPortsPerVm: Input.asOptionalInput<int>(map['maxPortsPerVm']),
      minPortsPerVm: Input.asOptionalInput<int>(map['minPortsPerVm']),
      name: Input.asOptionalInput<String>(map['name']),
      nat64Subnetworks: Input.asOptionalInput<List<RouterNatNat64Subnetwork>>(
          map['nat64Subnetworks']),
      natIpAllocateOption:
          Input.asOptionalInput<String>(map['natIpAllocateOption']),
      natIps: Input.asOptionalInput<List<String>>(map['natIps']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      router: Input.asInput<String>(map['router']),
      rules: Input.asOptionalInput<List<RouterNatRule>>(map['rules']),
      sourceSubnetworkIpRangesToNat:
          Input.asInput<String>(map['sourceSubnetworkIpRangesToNat']),
      sourceSubnetworkIpRangesToNat64:
          Input.asOptionalInput<String>(map['sourceSubnetworkIpRangesToNat64']),
      subnetworks:
          Input.asOptionalInput<List<RouterNatSubnetwork>>(map['subnetworks']),
      tcpEstablishedIdleTimeoutSec:
          Input.asOptionalInput<int>(map['tcpEstablishedIdleTimeoutSec']),
      tcpTimeWaitTimeoutSec:
          Input.asOptionalInput<int>(map['tcpTimeWaitTimeoutSec']),
      tcpTransitoryIdleTimeoutSec:
          Input.asOptionalInput<int>(map['tcpTransitoryIdleTimeoutSec']),
      type: Input.asOptionalInput<String>(map['type']),
      udpIdleTimeoutSec: Input.asOptionalInput<int>(map['udpIdleTimeoutSec']),
    );
  }
}
