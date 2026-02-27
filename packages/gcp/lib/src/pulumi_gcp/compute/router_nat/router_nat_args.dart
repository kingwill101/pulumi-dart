// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<String>? autoNetworkTier;

  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final pulumi.Input<List<String>>? drainNatIps;

  /// Enable Dynamic Port Allocation.
  /// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
  /// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
  /// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// Mutually exclusive with enableEndpointIndependentMapping.
  final pulumi.Input<bool>? enableDynamicPortAllocation;

  /// Enable endpoint independent mapping.
  /// For more information see the [official documentation](https://docs.cloud.google.com/nat/docs/public-nat#specs-rfcs).
  final pulumi.Input<bool>? enableEndpointIndependentMapping;

  /// Specifies the endpoint Types supported by the NAT Gateway.
  /// Supported values include:
  /// `ENDPOINT_TYPE_VM`, `ENDPOINT_TYPE_SWG`,
  /// `ENDPOINT_TYPE_MANAGED_PROXY_LB`.
  final pulumi.Input<List<String>>? endpointTypes;

  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final pulumi.Input<int>? icmpIdleTimeoutSec;

  /// Self-links of NAT IPs to be used as initial value for creation alongside a RouterNatAddress resource.
  /// Conflicts with natIps and drainNatIps. Only valid if natIpAllocateOption is set to MANUAL_ONLY.
  final pulumi.Input<List<String>>? initialNatIps;

  /// Configuration for logging on NAT
  /// Structure is documented below.
  final pulumi.Input<RouterNatLogConfig>? logConfig;

  /// Maximum number of ports allocated to a VM from this NAT.
  /// This field can only be set when enableDynamicPortAllocation is enabled.
  final pulumi.Input<int>? maxPortsPerVm;

  /// Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set.
  final pulumi.Input<int>? minPortsPerVm;

  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final pulumi.Input<String>? name;

  /// One or more subnetwork NAT configurations whose traffic should be translated by NAT64 Gateway.
  /// Only used if `source_subnetwork_ip_ranges_to_nat64` is set to `LIST_OF_IPV6_SUBNETWORKS`
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatNat64Subnetwork>>? nat64Subnetworks;

  /// How external IPs should be allocated for this NAT. Valid values are
  /// `AUTO_ONLY` for only allowing NAT IPs allocated by Google Cloud
  /// Platform, or `MANUAL_ONLY` for only user-allocated NAT IP addresses.
  /// Possible values are: `MANUAL_ONLY`, `AUTO_ONLY`.
  final pulumi.Input<String>? natIpAllocateOption;

  /// Self-links of NAT IPs. Only valid if natIpAllocateOption
  /// is set to MANUAL_ONLY.
  /// If this field is used alongside with a count created list of address resources `google_compute_address.foobar.*.self_link`,
  /// the access level resource for the address resource must have a `lifecycle` block with `create_before_destroy = true` so
  /// the number of resources can be increased/decreased without triggering the `resourceInUseByAnotherResource` error.
  final pulumi.Input<List<String>>? natIps;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Region where the router and NAT reside.
  final pulumi.Input<String>? region;

  /// The name of the Cloud Router in which this NAT will be configured.
  final pulumi.Input<String> router;

  /// A list of rules associated with this NAT.
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatRule>>? rules;

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
  final pulumi.Input<String> sourceSubnetworkIpRangesToNat;

  /// Specify the Nat option for NAT64, which can take one of the following values:
  /// ALL_IPV6_SUBNETWORKS: All of the IP ranges in every Subnetwork are allowed to Nat.
  /// LIST_OF_IPV6_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field nat64Subnetwork below).
  /// Note that if this field contains NAT64_ALL_V6_SUBNETWORKS no other Router.Nat section in this region can also enable NAT64 for any Subnetworks in this network.
  /// Other Router.Nat sections can still be present to enable NAT44 only.
  /// Possible values are: `ALL_IPV6_SUBNETWORKS`, `LIST_OF_IPV6_SUBNETWORKS`.
  final pulumi.Input<String>? sourceSubnetworkIpRangesToNat64;

  /// One or more subnetwork NAT configurations. Only used if
  /// `source_subnetwork_ip_ranges_to_nat` is set to `LIST_OF_SUBNETWORKS`
  /// Structure is documented below.
  final pulumi.Input<List<RouterNatSubnetwork>>? subnetworks;

  /// Timeout (in seconds) for TCP established connections.
  /// Defaults to 1200s if not set.
  final pulumi.Input<int>? tcpEstablishedIdleTimeoutSec;

  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
  /// Defaults to 120s if not set.
  final pulumi.Input<int>? tcpTimeWaitTimeoutSec;

  /// Timeout (in seconds) for TCP transitory connections.
  /// Defaults to 30s if not set.
  final pulumi.Input<int>? tcpTransitoryIdleTimeoutSec;

  /// Indicates whether this NAT is used for public or private IP translation.
  /// If unspecified, it defaults to PUBLIC.
  /// If `PUBLIC` NAT used for public IP translation.
  /// If `PRIVATE` NAT used for private IP translation.
  /// Default value is `PUBLIC`.
  /// Possible values are: `PUBLIC`, `PRIVATE`.
  final pulumi.Input<String>? type;

  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final pulumi.Input<int>? udpIdleTimeoutSec;

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
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<RouterNatLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
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
      map['nat64Subnetworks'] = pulumi.Input.mapOptionalInputValue<
              List<RouterNatNat64Subnetwork>, List<Map<String, dynamic>>>(
          nat64SubnetworksValue,
          (value) => pulumi.Input.encodeList<RouterNatNat64Subnetwork,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['rules'] = pulumi.Input.mapOptionalInputValue<List<RouterNatRule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) =>
              pulumi.Input.encodeList<RouterNatRule, Map<String, dynamic>>(
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
      map['subnetworks'] = pulumi.Input.mapOptionalInputValue<
              List<RouterNatSubnetwork>, List<Map<String, dynamic>>>(
          subnetworksValue,
          (value) => pulumi.Input.encodeList<RouterNatSubnetwork,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      autoNetworkTier:
          pulumi.Input.asOptionalInput<String>(map['autoNetworkTier']),
      drainNatIps:
          pulumi.Input.asOptionalInput<List<String>>(map['drainNatIps']),
      enableDynamicPortAllocation: pulumi.Input.asOptionalInput<bool>(
          map['enableDynamicPortAllocation']),
      enableEndpointIndependentMapping: pulumi.Input.asOptionalInput<bool>(
          map['enableEndpointIndependentMapping']),
      endpointTypes:
          pulumi.Input.asOptionalInput<List<String>>(map['endpointTypes']),
      icmpIdleTimeoutSec:
          pulumi.Input.asOptionalInput<int>(map['icmpIdleTimeoutSec']),
      initialNatIps:
          pulumi.Input.asOptionalInput<List<String>>(map['initialNatIps']),
      logConfig:
          pulumi.Input.asOptionalInput<RouterNatLogConfig>(map['logConfig']),
      maxPortsPerVm: pulumi.Input.asOptionalInput<int>(map['maxPortsPerVm']),
      minPortsPerVm: pulumi.Input.asOptionalInput<int>(map['minPortsPerVm']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nat64Subnetworks:
          pulumi.Input.asOptionalInput<List<RouterNatNat64Subnetwork>>(
              map['nat64Subnetworks']),
      natIpAllocateOption:
          pulumi.Input.asOptionalInput<String>(map['natIpAllocateOption']),
      natIps: pulumi.Input.asOptionalInput<List<String>>(map['natIps']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      router: pulumi.Input.asInput<String>(map['router']),
      rules: pulumi.Input.asOptionalInput<List<RouterNatRule>>(map['rules']),
      sourceSubnetworkIpRangesToNat:
          pulumi.Input.asInput<String>(map['sourceSubnetworkIpRangesToNat']),
      sourceSubnetworkIpRangesToNat64: pulumi.Input.asOptionalInput<String>(
          map['sourceSubnetworkIpRangesToNat64']),
      subnetworks: pulumi.Input.asOptionalInput<List<RouterNatSubnetwork>>(
          map['subnetworks']),
      tcpEstablishedIdleTimeoutSec: pulumi.Input.asOptionalInput<int>(
          map['tcpEstablishedIdleTimeoutSec']),
      tcpTimeWaitTimeoutSec:
          pulumi.Input.asOptionalInput<int>(map['tcpTimeWaitTimeoutSec']),
      tcpTransitoryIdleTimeoutSec:
          pulumi.Input.asOptionalInput<int>(map['tcpTransitoryIdleTimeoutSec']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      udpIdleTimeoutSec:
          pulumi.Input.asOptionalInput<int>(map['udpIdleTimeoutSec']),
    );
  }
}
