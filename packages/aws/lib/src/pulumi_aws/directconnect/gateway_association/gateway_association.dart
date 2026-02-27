import 'package:pulumi/pulumi.dart';
import 'gateway_association_args.dart';

/// Associates a Direct Connect Gateway with a VGW or transit gateway.
///
/// To create a cross-account association, create an `aws.directconnect.GatewayAssociationProposal` resource
/// in the AWS account that owns the VGW or transit gateway and then accept the proposal in the AWS account that owns the Direct Connect Gateway
/// by creating an `aws.directconnect.GatewayAssociation` resource with the `proposal_id` and `associated_gateway_owner_account_id` attributes set.
///
/// ## Example Usage
///
/// ### VPN Gateway Association
///
///
///
/// ### Transit Gateway Association
///
///
///
/// ### Allowed Prefixes
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect gateway associations using `dx_gateway_id` together with `associated_gateway_id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/gatewayAssociation:GatewayAssociation example 345508c3-7215-4aef-9832-07c125d5bd0f/vgw-98765432
/// ```
class GatewayAssociation extends CustomResource {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  ///
  /// > **NOTE:** `dx_gateway_id` and `associated_gateway_id` must be specified for single account Direct Connect gateway associations.
  ///
  /// > **NOTE:** If the `associated_gateway_id` is in another region, an alias in a new provider block for that region should be specified.
  late final Output<List<String>> allowedPrefixes;

  /// The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// Used for single account Direct Connect gateway associations.
  late final Output<String> associatedGatewayId;

  /// The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// Used for cross-account Direct Connect gateway associations.
  late final Output<String> associatedGatewayOwnerAccountId;

  /// The type of the associated gateway, `transitGateway` or `virtualPrivateGateway`.
  late final Output<String> associatedGatewayType;

  /// The ID of the Direct Connect gateway association.
  late final Output<String> dxGatewayAssociationId;

  /// The ID of the Direct Connect gateway.
  late final Output<String> dxGatewayId;

  /// The ID of the AWS account that owns the Direct Connect gateway.
  late final Output<String> dxGatewayOwnerAccountId;

  /// The ID of the Direct Connect gateway association proposal.
  /// Used for cross-account Direct Connect gateway associations.
  late final Output<String?> proposalId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the Transit Gateway Attachment when the type is `transitGateway`.
  late final Output<String> transitGatewayAttachmentId;

  GatewayAssociation(
    String name, {
    GatewayAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/gatewayAssociation:GatewayAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedPrefixes = registerOutput<List<String>>('allowedPrefixes');
    this.associatedGatewayId = registerOutput<String>('associatedGatewayId');
    this.associatedGatewayOwnerAccountId =
        registerOutput<String>('associatedGatewayOwnerAccountId');
    this.associatedGatewayType =
        registerOutput<String>('associatedGatewayType');
    this.dxGatewayAssociationId =
        registerOutput<String>('dxGatewayAssociationId');
    this.dxGatewayId = registerOutput<String>('dxGatewayId');
    this.dxGatewayOwnerAccountId =
        registerOutput<String>('dxGatewayOwnerAccountId');
    this.proposalId = registerOutput<String?>('proposalId');
    this.region = registerOutput<String>('region');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
  }
}
