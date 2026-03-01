import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_association_proposal_args.dart';
import 'gateway_association_proposal_state.dart';

/// Manages a Direct Connect Gateway Association Proposal, typically for enabling cross-account associations. For single account associations, see the `aws.directconnect.GatewayAssociation` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.GatewayAssociationProposal("example", {
///     dxGatewayId: exampleAwsDxGateway.id,
///     dxGatewayOwnerAccountId: exampleAwsDxGateway.ownerAccountId,
///     associatedGatewayId: exampleAwsVpnGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.GatewayAssociationProposal("example",
///     dx_gateway_id=example_aws_dx_gateway["id"],
///     dx_gateway_owner_account_id=example_aws_dx_gateway["ownerAccountId"],
///     associated_gateway_id=example_aws_vpn_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectConnect.GatewayAssociationProposal("example", new()
///     {
///         DxGatewayId = exampleAwsDxGateway.Id,
///         DxGatewayOwnerAccountId = exampleAwsDxGateway.OwnerAccountId,
///         AssociatedGatewayId = exampleAwsVpnGateway.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewGatewayAssociationProposal(ctx, "example", &directconnect.GatewayAssociationProposalArgs{
/// 			DxGatewayId:             pulumi.Any(exampleAwsDxGateway.Id),
/// 			DxGatewayOwnerAccountId: pulumi.Any(exampleAwsDxGateway.OwnerAccountId),
/// 			AssociatedGatewayId:     pulumi.Any(exampleAwsVpnGateway.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directconnect.GatewayAssociationProposal;
/// import com.pulumi.aws.directconnect.GatewayAssociationProposalArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new GatewayAssociationProposal("example", GatewayAssociationProposalArgs.builder()
///             .dxGatewayId(exampleAwsDxGateway.id())
///             .dxGatewayOwnerAccountId(exampleAwsDxGateway.ownerAccountId())
///             .associatedGatewayId(exampleAwsVpnGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directconnect:GatewayAssociationProposal
///     properties:
///       dxGatewayId: ${exampleAwsDxGateway.id}
///       dxGatewayOwnerAccountId: ${exampleAwsDxGateway.ownerAccountId}
///       associatedGatewayId: ${exampleAwsVpnGateway.id}
/// ```
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
class GatewayAssociationProposal extends pulumi.CustomResource {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  late final pulumi.Output<List<String>> allowedPrefixes;
  /// The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  late final pulumi.Output<String> associatedGatewayId;
  /// The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  late final pulumi.Output<String> associatedGatewayOwnerAccountId;
  /// The type of the associated gateway, `transitGateway` or `virtualPrivateGateway`.
  late final pulumi.Output<String> associatedGatewayType;
  /// Direct Connect Gateway identifier.
  late final pulumi.Output<String> dxGatewayId;
  /// AWS Account identifier of the Direct Connect Gateway's owner.
  late final pulumi.Output<String> dxGatewayOwnerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [GatewayAssociationProposal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayAssociationProposal]. {@macro pulumi_directconnect_gateway_association_proposal_gateway_association_proposal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayAssociationProposal(
    String name, {
    GatewayAssociationProposalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/gatewayAssociationProposal:GatewayAssociationProposal',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedPrefixes = registerOutput<List<String>>('allowedPrefixes');
    this.associatedGatewayId = registerOutput<String>('associatedGatewayId');
    this.associatedGatewayOwnerAccountId = registerOutput<String>('associatedGatewayOwnerAccountId');
    this.associatedGatewayType = registerOutput<String>('associatedGatewayType');
    this.dxGatewayId = registerOutput<String>('dxGatewayId');
    this.dxGatewayOwnerAccountId = registerOutput<String>('dxGatewayOwnerAccountId');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [GatewayAssociationProposal] resource's state with the given [name] and [id].
  static GatewayAssociationProposal get(
    String name,
    pulumi.Input<String> id, {
    GatewayAssociationProposalState? state,
  }) {
    return GatewayAssociationProposal._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayAssociationProposal._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/gatewayAssociationProposal:GatewayAssociationProposal',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedPrefixes = registerOutput<List<String>>('allowedPrefixes');
    this.associatedGatewayId = registerOutput<String>('associatedGatewayId');
    this.associatedGatewayOwnerAccountId = registerOutput<String>('associatedGatewayOwnerAccountId');
    this.associatedGatewayType = registerOutput<String>('associatedGatewayType');
    this.dxGatewayId = registerOutput<String>('dxGatewayId');
    this.dxGatewayOwnerAccountId = registerOutput<String>('dxGatewayOwnerAccountId');
    this.region = registerOutput<String>('region');
  }
}
