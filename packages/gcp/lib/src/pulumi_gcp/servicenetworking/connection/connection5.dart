import 'package:pulumi/pulumi.dart';
import 'connection_args5.dart';

/// Manages a private VPC connection with a GCP service provider. For more information see
/// [the official documentation](https://cloud.google.com/vpc/docs/configure-private-services-access#creating-connection)
/// and
/// [API](https://cloud.google.com/service-infrastructure/docs/service-networking/reference/rest/v1/services.connections).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ServiceNetworkingConnection can be imported using any of these accepted formats
///
/// * `{{peering-network}}:{{service}}`
///
/// * `projects/{{project}}/global/networks/{{peering-network}}:{{service}}`
///
/// When using the `pulumi import` command, NAME_HERE can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/connection:Connection default {{peering-network}}:{{service}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/connection:Connection default /projects/{{project}}/global/networks/{{peering-network}}:{{service}}
/// ```
class Connection5 extends CustomResource {
  /// The deletion policy for the service networking connection. Setting to ABANDON allows the resource to be abandoned rather than deleted. This will enable a successful pulumi destroy when destroying CloudSQL instances. Use with care as it can lead to dangling resources.
  late final Output<String?> deletionPolicy;

  /// Name of VPC network connected with service producers using VPC peering.
  late final Output<String> network;

  /// (Computed) The name of the VPC Network Peering connection that was created by the service producer.
  late final Output<String> peering;

  /// Named IP address range(s) of PEERING type reserved for
  /// this service provider. Note that invoking this method with a different range when connection
  /// is already established will not reallocate already provisioned service producer subnetworks.
  late final Output<List<String>> reservedPeeringRanges;

  /// Provider peering service that is managing peering connectivity for a
  /// service provider organization. For Google services that support this functionality it is
  /// 'servicenetworking.googleapis.com'.
  late final Output<String> service;

  /// When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  late final Output<bool?> updateOnCreationFail;

  Connection5(
    String name, {
    ConnectionArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:servicenetworking/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.network = registerOutput<String>('network');
    this.peering = registerOutput<String>('peering');
    this.reservedPeeringRanges =
        registerOutput<List<String>>('reservedPeeringRanges');
    this.service = registerOutput<String>('service');
    this.updateOnCreationFail = registerOutput<bool?>('updateOnCreationFail');
  }
}
