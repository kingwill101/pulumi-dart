import 'package:pulumi/pulumi.dart';
import 'network_peering_routes_config_args.dart';

/// Manage a network peering's route settings without managing the peering as
/// a whole. This resource is primarily intended for use with GCP-generated
/// peerings that shouldn't otherwise be managed by other tools. Deleting this
/// resource is a no-op and the peering will not be modified.
///
///
/// To get more information about NetworkPeeringRoutesConfig, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networks/updatePeering)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vpc/docs/vpc-peering)
///
/// ## Example Usage
///
/// ### Network Peering Routes Config Basic
///
///
///
///
/// ## Import
///
/// NetworkPeeringRoutesConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networks/{{network}}/networkPeerings/{{peering}}`
///
/// * `{{project}}/{{network}}/{{peering}}`
///
/// * `{{network}}/{{peering}}`
///
/// When using the `pulumi import` command, NetworkPeeringRoutesConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default projects/{{project}}/global/networks/{{network}}/networkPeerings/{{peering}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default {{project}}/{{network}}/{{peering}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default {{network}}/{{peering}}
/// ```
class NetworkPeeringRoutesConfig extends CustomResource {
  /// Whether to export the custom routes to the peer network.
  late final Output<bool> exportCustomRoutes;

  /// Whether subnet routes with public IP range are exported.
  /// IPv4 special-use ranges are always exported to peers and
  /// are not controlled by this field.
  late final Output<bool> exportSubnetRoutesWithPublicIp;

  /// Whether to import the custom routes to the peer network.
  late final Output<bool> importCustomRoutes;

  /// Whether subnet routes with public IP range are imported.
  /// IPv4 special-use ranges are always imported from peers and
  /// are not controlled by this field.
  late final Output<bool> importSubnetRoutesWithPublicIp;

  /// The name of the primary network for the peering.
  late final Output<String> network;

  /// Name of the peering.
  late final Output<String> peering;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  NetworkPeeringRoutesConfig(
    String name, {
    NetworkPeeringRoutesConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.exportCustomRoutes = registerOutput<bool>('exportCustomRoutes');
    this.exportSubnetRoutesWithPublicIp =
        registerOutput<bool>('exportSubnetRoutesWithPublicIp');
    this.importCustomRoutes = registerOutput<bool>('importCustomRoutes');
    this.importSubnetRoutesWithPublicIp =
        registerOutput<bool>('importSubnetRoutesWithPublicIp');
    this.network = registerOutput<String>('network');
    this.peering = registerOutput<String>('peering');
    this.project = registerOutput<String>('project');
  }
}
