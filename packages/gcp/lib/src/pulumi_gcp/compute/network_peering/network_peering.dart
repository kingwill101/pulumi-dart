import 'package:pulumi/pulumi.dart';
import 'network_peering_args.dart';

/// Manages a network peering within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/vpc/vpc-peering)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/networks).
///
/// > Both networks must create a peering with each other for the peering
/// to be functional.
///
/// > Subnets IP ranges across peered VPC networks cannot overlap.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// VPC network peerings can be imported using the name and project of the primary network the peering exists in and the name of the network peering
///
/// * `{{project_id}}/{{network_id}}/{{peering_id}}`
///
/// When using the `pulumi import` command, VPC network peerings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeering:NetworkPeering default {{project_id}}/{{network_id}}/{{peering_id}}
/// ```
class NetworkPeering extends CustomResource {
  /// Whether to export the custom routes to the peer network. Defaults to `false`.
  late final Output<bool?> exportCustomRoutes;

  /// Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  late final Output<bool?> exportSubnetRoutesWithPublicIp;

  /// Whether to import the custom routes from the peer network. Defaults to `false`.
  late final Output<bool?> importCustomRoutes;

  /// Whether subnet routes with public IP range are imported. The default value is false. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported from peers and are not controlled by this field.
  late final Output<bool?> importSubnetRoutesWithPublicIp;

  /// Name of the peering.
  late final Output<String> name;

  /// The primary network of the peering.
  late final Output<String> network;

  /// The peer network in the peering. The peer network
  /// may belong to a different project.
  late final Output<String> peerNetwork;

  /// Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: ["IPV4_ONLY", "IPV4_IPV6"].
  late final Output<String?> stackType;

  /// State for the peering, either `ACTIVE` or `INACTIVE`. The peering is
  /// `ACTIVE` when there's a matching configuration in the peer network.
  late final Output<String> state;

  /// Details about the current state of the peering.
  late final Output<String> stateDetails;

  /// The update strategy determines the semantics for updates and deletes to the peering connection configuration. The default value is INDEPENDENT. Possible values: ["INDEPENDENT", "CONSENSUS"]
  late final Output<String?> updateStrategy;

  NetworkPeering(
    String name, {
    NetworkPeeringArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkPeering:NetworkPeering',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.exportCustomRoutes = registerOutput<bool?>('exportCustomRoutes');
    this.exportSubnetRoutesWithPublicIp =
        registerOutput<bool?>('exportSubnetRoutesWithPublicIp');
    this.importCustomRoutes = registerOutput<bool?>('importCustomRoutes');
    this.importSubnetRoutesWithPublicIp =
        registerOutput<bool?>('importSubnetRoutesWithPublicIp');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.peerNetwork = registerOutput<String>('peerNetwork');
    this.stackType = registerOutput<String?>('stackType');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.updateStrategy = registerOutput<String?>('updateStrategy');
  }
}
