import 'package:pulumi/pulumi.dart';
import 'router_interface_args.dart';

/// Manages a Cloud Router interface. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/cloudrouter)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/routers).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Router interfaces can be imported using the `project` (optional), `region`, `router`, and `name`, e.g.
///
/// * `{{project_id}}/{{region}}/{{router}}/{{name}}`
///
/// * `{{region}}/{{router}}/{{name}}`
///
/// When using the `pulumi import` command, router interfaces can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerInterface:RouterInterface default {{project_id}}/{{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerInterface:RouterInterface default {{region}}/{{router}}/{{name}}
/// ```
class RouterInterface extends CustomResource {
  /// The name or resource link to the
  /// VLAN interconnect for this interface. Changing this forces a new interface to
  /// be created. Only one of `vpn_tunnel`, `interconnect_attachment` or `subnetwork` can be specified.
  late final Output<String?> interconnectAttachment;

  /// IP address and range of the interface. The IP range must be
  /// in the RFC3927 link-local IP space. Changing this forces a new interface to be created.
  late final Output<String> ipRange;

  /// IP version of this interface. Can be either IPV4 or IPV6.
  late final Output<String> ipVersion;

  /// A unique name for the interface, required by GCE. Changing
  /// this forces a new interface to be created.
  late final Output<String> name;

  /// The regional private internal IP address that is used
  /// to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created.
  late final Output<String?> privateIpAddress;

  /// The ID of the project in which this interface's routerbelongs.
  /// If it is not provided, the provider project is used. Changing this forces a new interface to be created.
  late final Output<String> project;

  /// The name of the interface that is redundant to
  /// this interface. Changing this forces a new interface to be created.
  late final Output<String> redundantInterface;

  /// The region this interface's router sits in.
  /// If not specified, the project region will be used. Changing this forces a new interface to be created.
  late final Output<String> region;

  /// The name of the router this interface will be attached to.
  /// Changing this forces a new interface to be created.
  ///
  /// In addition to the above required fields, a router interface must have specified either `ip_range` or exactly one of `vpn_tunnel`, `interconnect_attachment` or `subnetwork`, or both.
  ///
  /// - - -
  late final Output<String> router;

  /// The URI of the subnetwork resource that this interface
  /// belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here. Changing this forces a new interface to be created. Only one of `vpn_tunnel`, `interconnect_attachment` or `subnetwork` can be specified.
  late final Output<String?> subnetwork;

  /// The name or resource link to the VPN tunnel this
  /// interface will be linked to. Changing this forces a new interface to be created. Only
  /// one of `vpn_tunnel`, `interconnect_attachment` or `subnetwork` can be specified.
  late final Output<String?> vpnTunnel;

  RouterInterface(
    String name, {
    RouterInterfaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerInterface:RouterInterface',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.interconnectAttachment =
        registerOutput<String?>('interconnectAttachment');
    this.ipRange = registerOutput<String>('ipRange');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.name = registerOutput<String>('name');
    this.privateIpAddress = registerOutput<String?>('privateIpAddress');
    this.project = registerOutput<String>('project');
    this.redundantInterface = registerOutput<String>('redundantInterface');
    this.region = registerOutput<String>('region');
    this.router = registerOutput<String>('router');
    this.subnetwork = registerOutput<String?>('subnetwork');
    this.vpnTunnel = registerOutput<String?>('vpnTunnel');
  }
}
