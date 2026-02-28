// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_router_interface_router_interface_args_doc}
/// The set of arguments for RouterInterface.
/// {@endtemplate}
/// {@macro pulumi_compute_router_interface_router_interface_args_doc}
class RouterInterfaceArgs {
  /// The name or resource link to the
  /// VLAN interconnect for this interface. Changing this forces a new interface to
  /// be created. Only one of `vpn_tunnel`, `interconnect_attachment` or `subnetwork` can be specified.
  final pulumi.Input<String>? interconnectAttachment;
  /// IP address and range of the interface. The IP range must be
  /// in the RFC3927 link-local IP space. Changing this forces a new interface to be created.
  final pulumi.Input<String>? ipRange;
  /// IP version of this interface. Can be either IPV4 or IPV6.
  final pulumi.Input<String>? ipVersion;
  /// A unique name for the interface, required by GCE. Changing
  /// this forces a new interface to be created.
  final pulumi.Input<String>? name;
  /// The regional private internal IP address that is used
  /// to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created.
  final pulumi.Input<String>? privateIpAddress;
  /// The ID of the project in which this interface's routerbelongs.
  /// If it is not provided, the provider project is used. Changing this forces a new interface to be created.
  final pulumi.Input<String>? project;
  /// The name of the interface that is redundant to
  /// this interface. Changing this forces a new interface to be created.
  final pulumi.Input<String>? redundantInterface;
  /// The region this interface's router sits in.
  /// If not specified, the project region will be used. Changing this forces a new interface to be created.
  final pulumi.Input<String>? region;
  /// The name of the router this interface will be attached to.
  /// Changing this forces a new interface to be created.
  ///
  /// In addition to the above required fields, a router interface must have specified either `ip_range` or exactly one of `vpn_tunnel`, `interconnect_attachment` or `subnetwork`, or both.
  ///
  /// - - -
  final pulumi.Input<String> router;
  /// The URI of the subnetwork resource that this interface
  /// belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here. Changing this forces a new interface to be created. Only one of `vpn_tunnel`, `interconnect_attachment` or `subnetwork` can be specified.
  final pulumi.Input<String>? subnetwork;
  /// The name or resource link to the VPN tunnel this
  /// interface will be linked to. Changing this forces a new interface to be created. Only
  /// one of `vpn_tunnel`, `interconnect_attachment` or `subnetwork` can be specified.
  final pulumi.Input<String>? vpnTunnel;

  /// Creates a new [RouterInterfaceArgs].
  /// [interconnectAttachment] The name or resource link to the
  /// [ipRange] IP address and range of the interface. The IP range must be
  /// [ipVersion] IP version of this interface. Can be either IPV4 or IPV6.
  /// [name] A unique name for the interface, required by GCE. Changing
  /// [privateIpAddress] The regional private internal IP address that is used
  /// [project] The ID of the project in which this interface's routerbelongs.
  /// [redundantInterface] The name of the interface that is redundant to
  /// [region] The region this interface's router sits in.
  /// [router] The name of the router this interface will be attached to.
  /// [subnetwork] The URI of the subnetwork resource that this interface
  /// [vpnTunnel] The name or resource link to the VPN tunnel this
  RouterInterfaceArgs({
    String? interconnectAttachment,
    String? ipRange,
    String? ipVersion,
    String? name,
    String? privateIpAddress,
    String? project,
    String? redundantInterface,
    String? region,
    required String router,
    String? subnetwork,
    String? vpnTunnel,
  }) :
      interconnectAttachment = pulumi.Input.asOptionalInput<String>(interconnectAttachment),
      ipRange = pulumi.Input.asOptionalInput<String>(ipRange),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      project = pulumi.Input.asOptionalInput<String>(project),
      redundantInterface = pulumi.Input.asOptionalInput<String>(redundantInterface),
      region = pulumi.Input.asOptionalInput<String>(region),
      router = pulumi.Input.asInput<String>(router),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      vpnTunnel = pulumi.Input.asOptionalInput<String>(vpnTunnel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': ?interconnectAttachment,
      'ipRange': ?ipRange,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'privateIpAddress': ?privateIpAddress,
      'project': ?project,
      'redundantInterface': ?redundantInterface,
      'region': ?region,
      'router': router,
      'subnetwork': ?subnetwork,
      'vpnTunnel': ?vpnTunnel,
    };
  }

  factory RouterInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceArgs(
      interconnectAttachment: map['interconnectAttachment'] == null ? null : map['interconnectAttachment'] as String,
      ipRange: map['ipRange'] == null ? null : map['ipRange'] as String,
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      redundantInterface: map['redundantInterface'] == null ? null : map['redundantInterface'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      router: map['router'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
      vpnTunnel: map['vpnTunnel'] == null ? null : map['vpnTunnel'] as String,
    );
  }
}

