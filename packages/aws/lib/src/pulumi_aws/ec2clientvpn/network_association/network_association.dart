import 'package:pulumi/pulumi.dart';
import 'network_association_args.dart';

/// Provides network associations for AWS Client VPN endpoints. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Client VPN network associations using the endpoint ID and the association ID. Values are separated by a `,`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/networkAssociation:NetworkAssociation example cvpn-endpoint-0ac3a1abbccddd666,cvpn-assoc-0b8db902465d069ad
/// ```
class NetworkAssociation extends CustomResource {
  /// The unique ID of the target network association.
  late final Output<String> associationId;

  /// The ID of the Client VPN endpoint.
  late final Output<String> clientVpnEndpointId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the subnet to associate with the Client VPN endpoint.
  late final Output<String> subnetId;

  /// The ID of the VPC in which the target subnet is located.
  late final Output<String> vpcId;

  NetworkAssociation(
    String name, {
    NetworkAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/networkAssociation:NetworkAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associationId = registerOutput<String>('associationId');
    this.clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
