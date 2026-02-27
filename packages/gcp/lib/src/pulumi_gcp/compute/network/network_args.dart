// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_params/network_params.dart';

/// The set of arguments for Network.
class NetworkArgs {
  /// When set to `true`, the network is created in "auto subnet mode" and
  /// it will create a subnet for each region automatically across the
  /// `10.128.0.0/9` address range.
  /// When set to `false`, the network is created in "custom subnet mode" so
  /// the user can explicitly connect subnetwork resources.
  final pulumi.Input<bool>? autoCreateSubnetworks;

  /// Enables/disables the comparison of MED across routes with different Neighbor ASNs.
  /// This value can only be set if the --bgp-best-path-selection-mode is STANDARD
  final pulumi.Input<bool>? bgpAlwaysCompareMed;

  /// The BGP best selection algorithm to be employed. MODE can be LEGACY or STANDARD.
  /// Possible values are: `LEGACY`, `STANDARD`.
  final pulumi.Input<String>? bgpBestPathSelectionMode;

  /// Choice of the behavior of inter-regional cost and MED in the BPS algorithm.
  /// Possible values are: `DEFAULT`, `ADD_COST_TO_MED`.
  final pulumi.Input<String>? bgpInterRegionCost;

  /// If set to `true`, the `bgp_always_compare_med` field will be cleared.
  /// If set to `false` (the default), `bgp_always_compare_med` will be set to the value specified in the configuration.
  final pulumi.Input<bool>? deleteBgpAlwaysCompareMed;

  /// If set to `true`, default routes (`0.0.0.0/0`) will be deleted
  /// immediately after network creation. Defaults to `false`.
  final pulumi.Input<bool>? deleteDefaultRoutesOnCreate;

  /// An optional description of this resource. The resource must be
  /// recreated to modify this field.
  final pulumi.Input<String>? description;

  /// Enable ULA internal ipv6 on this network. Enabling this feature will assign
  /// a /48 from google defined ULA prefix fd20::/20.
  final pulumi.Input<bool>? enableUlaInternalIpv6;

  /// When enabling ula internal ipv6, caller optionally can specify the /48 range
  /// they want from the google defined ULA prefix fd20::/20. The input must be a
  /// valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will
  /// fail if the speficied /48 is already in used by another resource.
  /// If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field.
  final pulumi.Input<String>? internalIpv6Range;

  /// Maximum Transmission Unit in bytes. The default value is 1460 bytes.
  /// The minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).
  /// Note that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped
  /// with an ICMP `Fragmentation-Needed` message if the packets are routed to the Internet or other VPCs
  /// with varying MTUs.
  final pulumi.Input<int>? mtu;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Set the order that Firewall Rules and Firewall Policies are evaluated.
  /// Default value is `AFTER_CLASSIC_FIREWALL`.
  /// Possible values are: `BEFORE_CLASSIC_FIREWALL`, `AFTER_CLASSIC_FIREWALL`.
  final pulumi.Input<String>? networkFirewallPolicyEnforcementOrder;

  /// A full or partial URL of the network profile to apply to this network.
  /// This field can be set only at resource creation time. For example, the
  /// following are valid URLs:
  /// * https://www.googleapis.com/compute/v1/projects/{projectId}/global/networkProfiles/{network_profile_name}
  /// * projects/{projectId}/global/networkProfiles/{network_profile_name}
  final pulumi.Input<String>? networkProfile;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<NetworkParams>? params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The network-wide routing mode to use. If set to `REGIONAL`, this
  /// network's cloud routers will only advertise routes with subnetworks
  /// of this network in the same region as the router. If set to `GLOBAL`,
  /// this network's cloud routers will advertise routes with all
  /// subnetworks of this network, across regions.
  /// Possible values are: `REGIONAL`, `GLOBAL`.
  final pulumi.Input<String>? routingMode;

  NetworkArgs({
    this.autoCreateSubnetworks,
    this.bgpAlwaysCompareMed,
    this.bgpBestPathSelectionMode,
    this.bgpInterRegionCost,
    this.deleteBgpAlwaysCompareMed,
    this.deleteDefaultRoutesOnCreate,
    this.description,
    this.enableUlaInternalIpv6,
    this.internalIpv6Range,
    this.mtu,
    this.name,
    this.networkFirewallPolicyEnforcementOrder,
    this.networkProfile,
    this.params,
    this.project,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoCreateSubnetworksValue = autoCreateSubnetworks;
    if (autoCreateSubnetworksValue != null) {
      map['autoCreateSubnetworks'] = autoCreateSubnetworksValue;
    }
    final bgpAlwaysCompareMedValue = bgpAlwaysCompareMed;
    if (bgpAlwaysCompareMedValue != null) {
      map['bgpAlwaysCompareMed'] = bgpAlwaysCompareMedValue;
    }
    final bgpBestPathSelectionModeValue = bgpBestPathSelectionMode;
    if (bgpBestPathSelectionModeValue != null) {
      map['bgpBestPathSelectionMode'] = bgpBestPathSelectionModeValue;
    }
    final bgpInterRegionCostValue = bgpInterRegionCost;
    if (bgpInterRegionCostValue != null) {
      map['bgpInterRegionCost'] = bgpInterRegionCostValue;
    }
    final deleteBgpAlwaysCompareMedValue = deleteBgpAlwaysCompareMed;
    if (deleteBgpAlwaysCompareMedValue != null) {
      map['deleteBgpAlwaysCompareMed'] = deleteBgpAlwaysCompareMedValue;
    }
    final deleteDefaultRoutesOnCreateValue = deleteDefaultRoutesOnCreate;
    if (deleteDefaultRoutesOnCreateValue != null) {
      map['deleteDefaultRoutesOnCreate'] = deleteDefaultRoutesOnCreateValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableUlaInternalIpv6Value = enableUlaInternalIpv6;
    if (enableUlaInternalIpv6Value != null) {
      map['enableUlaInternalIpv6'] = enableUlaInternalIpv6Value;
    }
    final internalIpv6RangeValue = internalIpv6Range;
    if (internalIpv6RangeValue != null) {
      map['internalIpv6Range'] = internalIpv6RangeValue;
    }
    final mtuValue = mtu;
    if (mtuValue != null) {
      map['mtu'] = mtuValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkFirewallPolicyEnforcementOrderValue =
        networkFirewallPolicyEnforcementOrder;
    if (networkFirewallPolicyEnforcementOrderValue != null) {
      map['networkFirewallPolicyEnforcementOrder'] =
          networkFirewallPolicyEnforcementOrderValue;
    }
    final networkProfileValue = networkProfile;
    if (networkProfileValue != null) {
      map['networkProfile'] = networkProfileValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = pulumi.Input.mapOptionalInputValue<NetworkParams,
          Map<String, dynamic>>(paramsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final routingModeValue = routingMode;
    if (routingModeValue != null) {
      map['routingMode'] = routingModeValue;
    }
    return map;
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      autoCreateSubnetworks:
          pulumi.Input.asOptionalInput<bool>(map['autoCreateSubnetworks']),
      bgpAlwaysCompareMed:
          pulumi.Input.asOptionalInput<bool>(map['bgpAlwaysCompareMed']),
      bgpBestPathSelectionMode:
          pulumi.Input.asOptionalInput<String>(map['bgpBestPathSelectionMode']),
      bgpInterRegionCost:
          pulumi.Input.asOptionalInput<String>(map['bgpInterRegionCost']),
      deleteBgpAlwaysCompareMed:
          pulumi.Input.asOptionalInput<bool>(map['deleteBgpAlwaysCompareMed']),
      deleteDefaultRoutesOnCreate: pulumi.Input.asOptionalInput<bool>(
          map['deleteDefaultRoutesOnCreate']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableUlaInternalIpv6:
          pulumi.Input.asOptionalInput<bool>(map['enableUlaInternalIpv6']),
      internalIpv6Range:
          pulumi.Input.asOptionalInput<String>(map['internalIpv6Range']),
      mtu: pulumi.Input.asOptionalInput<int>(map['mtu']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkFirewallPolicyEnforcementOrder:
          pulumi.Input.asOptionalInput<String>(
              map['networkFirewallPolicyEnforcementOrder']),
      networkProfile:
          pulumi.Input.asOptionalInput<String>(map['networkProfile']),
      params: pulumi.Input.asOptionalInput<NetworkParams>(map['params']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      routingMode: pulumi.Input.asOptionalInput<String>(map['routingMode']),
    );
  }
}
