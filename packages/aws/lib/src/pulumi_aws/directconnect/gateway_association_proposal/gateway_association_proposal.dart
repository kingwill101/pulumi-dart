import 'package:pulumi/pulumi.dart';
import 'gateway_association_proposal_args.dart';

/// Manages a Direct Connect Gateway Association Proposal, typically for enabling cross-account associations. For single account associations, see the `aws.directconnect.GatewayAssociation` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using a proposal ID, Direct Connect Gateway ID and associated gateway ID separated by `/`:
///
///
/// **With `pulumi import`**, import Direct Connect Gateway Association Proposals using either a proposal ID or proposal ID, Direct Connect Gateway ID and associated gateway ID separated by `/`. For example:
///
/// Using a proposal ID:
///
/// ```sh
/// $ pulumi import aws:directconnect/gatewayAssociationProposal:GatewayAssociationProposal example ac90e981-b718-4364-872d-65478c84fafe
/// ```
///
/// Using a proposal ID, Direct Connect Gateway ID and associated gateway ID separated by `/`:
///
/// ```sh
/// $ pulumi import aws:directconnect/gatewayAssociationProposal:GatewayAssociationProposal example ac90e981-b718-4364-872d-65478c84fafe/abcd1234-dcba-5678-be23-cdef9876ab45/vgw-12345678
/// ```
///
/// The latter case is useful when a previous proposal has been accepted and deleted by AWS.
/// The `aws.directconnect.GatewayAssociationProposal` resource will then represent a pseudo-proposal for the same Direct Connect Gateway and associated gateway. If no previous proposal is available, use a tool like [`uuidgen`](http://manpages.ubuntu.com/manpages/bionic/man1/uuidgen.1.html) to generate a new random pseudo-proposal ID.
class GatewayAssociationProposal extends CustomResource {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  late final Output<List<String>> allowedPrefixes;

  /// The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  late final Output<String> associatedGatewayId;

  /// The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  late final Output<String> associatedGatewayOwnerAccountId;

  /// The type of the associated gateway, `transitGateway` or `virtualPrivateGateway`.
  late final Output<String> associatedGatewayType;

  /// Direct Connect Gateway identifier.
  late final Output<String> dxGatewayId;

  /// AWS Account identifier of the Direct Connect Gateway's owner.
  late final Output<String> dxGatewayOwnerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  GatewayAssociationProposal(
    String name, {
    GatewayAssociationProposalArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/gatewayAssociationProposal:GatewayAssociationProposal',
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
    this.dxGatewayId = registerOutput<String>('dxGatewayId');
    this.dxGatewayOwnerAccountId =
        registerOutput<String>('dxGatewayOwnerAccountId');
    this.region = registerOutput<String>('region');
  }
}
