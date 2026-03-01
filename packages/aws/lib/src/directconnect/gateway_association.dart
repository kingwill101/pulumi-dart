import 'package:pulumi/pulumi.dart' as pulumi;
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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Gateway("example", {
///     name: "example",
///     amazonSideAsn: "64512",
/// });
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.255.255.0/28"});
/// const exampleVpnGateway = new aws.ec2.VpnGateway("example", {vpcId: exampleVpc.id});
/// const exampleGatewayAssociation = new aws.directconnect.GatewayAssociation("example", {
///     dxGatewayId: example.id,
///     associatedGatewayId: exampleVpnGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Gateway("example",
///     name="example",
///     amazon_side_asn="64512")
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.255.255.0/28")
/// example_vpn_gateway = aws.ec2.VpnGateway("example", vpc_id=example_vpc.id)
/// example_gateway_association = aws.directconnect.GatewayAssociation("example",
///     dx_gateway_id=example.id,
///     associated_gateway_id=example_vpn_gateway.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectConnect.Gateway("example", new()
///     {
///         Name = "example",
///         AmazonSideAsn = "64512",
///     });
///
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.255.255.0/28",
///     });
///
///     var exampleVpnGateway = new Aws.Ec2.VpnGateway("example", new()
///     {
///         VpcId = exampleVpc.Id,
///     });
///
///     var exampleGatewayAssociation = new Aws.DirectConnect.GatewayAssociation("example", new()
///     {
///         DxGatewayId = example.Id,
///         AssociatedGatewayId = exampleVpnGateway.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// 			Name:          pulumi.String("example"),
/// 			AmazonSideAsn: pulumi.String("64512"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.255.255.0/28"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpnGateway, err := ec2.NewVpnGateway(ctx, "example", &ec2.VpnGatewayArgs{
/// 			VpcId: exampleVpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewGatewayAssociation(ctx, "example", &directconnect.GatewayAssociationArgs{
/// 			DxGatewayId:         example.ID(),
/// 			AssociatedGatewayId: exampleVpnGateway.ID(),
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
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.ec2.VpnGatewayArgs;
/// import com.pulumi.aws.directconnect.GatewayAssociation;
/// import com.pulumi.aws.directconnect.GatewayAssociationArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .name("example")
///             .amazonSideAsn("64512")
///             .build());
///
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.255.255.0/28")
///             .build());
///
///         var exampleVpnGateway = new VpnGateway("exampleVpnGateway", VpnGatewayArgs.builder()
///             .vpcId(exampleVpc.id())
///             .build());
///
///         var exampleGatewayAssociation = new GatewayAssociation("exampleGatewayAssociation", GatewayAssociationArgs.builder()
///             .dxGatewayId(example.id())
///             .associatedGatewayId(exampleVpnGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directconnect:Gateway
///     properties:
///       name: example
///       amazonSideAsn: '64512'
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.255.255.0/28
///   exampleVpnGateway:
///     type: aws:ec2:VpnGateway
///     name: example
///     properties:
///       vpcId: ${exampleVpc.id}
///   exampleGatewayAssociation:
///     type: aws:directconnect:GatewayAssociation
///     name: example
///     properties:
///       dxGatewayId: ${example.id}
///       associatedGatewayId: ${exampleVpnGateway.id}
/// ```
///
///
/// ### Transit Gateway Association
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Gateway("example", {
///     name: "example",
///     amazonSideAsn: "64512",
/// });
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {});
/// const exampleGatewayAssociation = new aws.directconnect.GatewayAssociation("example", {
///     dxGatewayId: example.id,
///     associatedGatewayId: exampleTransitGateway.id,
///     allowedPrefixes: [
///         "10.255.255.0/30",
///         "10.255.255.8/30",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Gateway("example",
///     name="example",
///     amazon_side_asn="64512")
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example")
/// example_gateway_association = aws.directconnect.GatewayAssociation("example",
///     dx_gateway_id=example.id,
///     associated_gateway_id=example_transit_gateway.id,
///     allowed_prefixes=[
///         "10.255.255.0/30",
///         "10.255.255.8/30",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectConnect.Gateway("example", new()
///     {
///         Name = "example",
///         AmazonSideAsn = "64512",
///     });
///
///     var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example");
///
///     var exampleGatewayAssociation = new Aws.DirectConnect.GatewayAssociation("example", new()
///     {
///         DxGatewayId = example.Id,
///         AssociatedGatewayId = exampleTransitGateway.Id,
///         AllowedPrefixes = new[]
///         {
///             "10.255.255.0/30",
///             "10.255.255.8/30",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// 			Name:          pulumi.String("example"),
/// 			AmazonSideAsn: pulumi.String("64512"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewGatewayAssociation(ctx, "example", &directconnect.GatewayAssociationArgs{
/// 			DxGatewayId:         example.ID(),
/// 			AssociatedGatewayId: exampleTransitGateway.ID(),
/// 			AllowedPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.255.255.0/30"),
/// 				pulumi.String("10.255.255.8/30"),
/// 			},
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
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.directconnect.GatewayAssociation;
/// import com.pulumi.aws.directconnect.GatewayAssociationArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .name("example")
///             .amazonSideAsn("64512")
///             .build());
///
///         var exampleTransitGateway = new TransitGateway("exampleTransitGateway");
///
///         var exampleGatewayAssociation = new GatewayAssociation("exampleGatewayAssociation", GatewayAssociationArgs.builder()
///             .dxGatewayId(example.id())
///             .associatedGatewayId(exampleTransitGateway.id())
///             .allowedPrefixes(
///                 "10.255.255.0/30",
///                 "10.255.255.8/30")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directconnect:Gateway
///     properties:
///       name: example
///       amazonSideAsn: '64512'
///   exampleTransitGateway:
///     type: aws:ec2transitgateway:TransitGateway
///     name: example
///   exampleGatewayAssociation:
///     type: aws:directconnect:GatewayAssociation
///     name: example
///     properties:
///       dxGatewayId: ${example.id}
///       associatedGatewayId: ${exampleTransitGateway.id}
///       allowedPrefixes:
///         - 10.255.255.0/30
///         - 10.255.255.8/30
/// ```
///
///
/// ### Allowed Prefixes
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Gateway("example", {
///     name: "example",
///     amazonSideAsn: "64512",
/// });
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.255.255.0/28"});
/// const exampleVpnGateway = new aws.ec2.VpnGateway("example", {vpcId: exampleVpc.id});
/// const exampleGatewayAssociation = new aws.directconnect.GatewayAssociation("example", {
///     dxGatewayId: example.id,
///     associatedGatewayId: exampleVpnGateway.id,
///     allowedPrefixes: [
///         "210.52.109.0/24",
///         "175.45.176.0/22",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Gateway("example",
///     name="example",
///     amazon_side_asn="64512")
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.255.255.0/28")
/// example_vpn_gateway = aws.ec2.VpnGateway("example", vpc_id=example_vpc.id)
/// example_gateway_association = aws.directconnect.GatewayAssociation("example",
///     dx_gateway_id=example.id,
///     associated_gateway_id=example_vpn_gateway.id,
///     allowed_prefixes=[
///         "210.52.109.0/24",
///         "175.45.176.0/22",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectConnect.Gateway("example", new()
///     {
///         Name = "example",
///         AmazonSideAsn = "64512",
///     });
///
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.255.255.0/28",
///     });
///
///     var exampleVpnGateway = new Aws.Ec2.VpnGateway("example", new()
///     {
///         VpcId = exampleVpc.Id,
///     });
///
///     var exampleGatewayAssociation = new Aws.DirectConnect.GatewayAssociation("example", new()
///     {
///         DxGatewayId = example.Id,
///         AssociatedGatewayId = exampleVpnGateway.Id,
///         AllowedPrefixes = new[]
///         {
///             "210.52.109.0/24",
///             "175.45.176.0/22",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// 			Name:          pulumi.String("example"),
/// 			AmazonSideAsn: pulumi.String("64512"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.255.255.0/28"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpnGateway, err := ec2.NewVpnGateway(ctx, "example", &ec2.VpnGatewayArgs{
/// 			VpcId: exampleVpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewGatewayAssociation(ctx, "example", &directconnect.GatewayAssociationArgs{
/// 			DxGatewayId:         example.ID(),
/// 			AssociatedGatewayId: exampleVpnGateway.ID(),
/// 			AllowedPrefixes: pulumi.StringArray{
/// 				pulumi.String("210.52.109.0/24"),
/// 				pulumi.String("175.45.176.0/22"),
/// 			},
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
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.ec2.VpnGatewayArgs;
/// import com.pulumi.aws.directconnect.GatewayAssociation;
/// import com.pulumi.aws.directconnect.GatewayAssociationArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .name("example")
///             .amazonSideAsn("64512")
///             .build());
///
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.255.255.0/28")
///             .build());
///
///         var exampleVpnGateway = new VpnGateway("exampleVpnGateway", VpnGatewayArgs.builder()
///             .vpcId(exampleVpc.id())
///             .build());
///
///         var exampleGatewayAssociation = new GatewayAssociation("exampleGatewayAssociation", GatewayAssociationArgs.builder()
///             .dxGatewayId(example.id())
///             .associatedGatewayId(exampleVpnGateway.id())
///             .allowedPrefixes(
///                 "210.52.109.0/24",
///                 "175.45.176.0/22")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directconnect:Gateway
///     properties:
///       name: example
///       amazonSideAsn: '64512'
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.255.255.0/28
///   exampleVpnGateway:
///     type: aws:ec2:VpnGateway
///     name: example
///     properties:
///       vpcId: ${exampleVpc.id}
///   exampleGatewayAssociation:
///     type: aws:directconnect:GatewayAssociation
///     name: example
///     properties:
///       dxGatewayId: ${example.id}
///       associatedGatewayId: ${exampleVpnGateway.id}
///       allowedPrefixes:
///         - 210.52.109.0/24
///         - 175.45.176.0/22
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect gateway associations using `dx_gateway_id` together with `associated_gateway_id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/gatewayAssociation:GatewayAssociation example 345508c3-7215-4aef-9832-07c125d5bd0f/vgw-98765432
/// ```
class GatewayAssociation extends pulumi.CustomResource {
  /// VPC prefixes (CIDRs) to advertise to the Direct Connect gateway. Defaults to the CIDR block of the VPC associated with the Virtual Gateway. To enable drift detection, must be configured.
  ///
  /// > **NOTE:** `dx_gateway_id` and `associated_gateway_id` must be specified for single account Direct Connect gateway associations.
  ///
  /// > **NOTE:** If the `associated_gateway_id` is in another region, an alias in a new provider block for that region should be specified.
  late final pulumi.Output<List<String>> allowedPrefixes;

  /// The ID of the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// Used for single account Direct Connect gateway associations.
  late final pulumi.Output<String> associatedGatewayId;

  /// The ID of the AWS account that owns the VGW or transit gateway with which to associate the Direct Connect gateway.
  /// Used for cross-account Direct Connect gateway associations.
  late final pulumi.Output<String> associatedGatewayOwnerAccountId;

  /// The type of the associated gateway, `transitGateway` or `virtualPrivateGateway`.
  late final pulumi.Output<String> associatedGatewayType;

  /// The ID of the Direct Connect gateway association.
  late final pulumi.Output<String> dxGatewayAssociationId;

  /// The ID of the Direct Connect gateway.
  late final pulumi.Output<String> dxGatewayId;

  /// The ID of the AWS account that owns the Direct Connect gateway.
  late final pulumi.Output<String> dxGatewayOwnerAccountId;

  /// The ID of the Direct Connect gateway association proposal.
  /// Used for cross-account Direct Connect gateway associations.
  late final pulumi.Output<String?> proposalId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the Transit Gateway Attachment when the type is `transitGateway`.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// Creates a new [GatewayAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayAssociation]. {@macro pulumi_directconnect_gateway_association_gateway_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayAssociation(
    String name, {
    GatewayAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/gatewayAssociation:GatewayAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.allowedPrefixes = registerOutput<List<String>>('allowedPrefixes');
    this.associatedGatewayId = registerOutput<String>('associatedGatewayId');
    this.associatedGatewayOwnerAccountId = registerOutput<String>(
      'associatedGatewayOwnerAccountId',
    );
    this.associatedGatewayType = registerOutput<String>(
      'associatedGatewayType',
    );
    this.dxGatewayAssociationId = registerOutput<String>(
      'dxGatewayAssociationId',
    );
    this.dxGatewayId = registerOutput<String>('dxGatewayId');
    this.dxGatewayOwnerAccountId = registerOutput<String>(
      'dxGatewayOwnerAccountId',
    );
    this.proposalId = registerOutput<String?>('proposalId');
    this.region = registerOutput<String>('region');
    this.transitGatewayAttachmentId = registerOutput<String>(
      'transitGatewayAttachmentId',
    );
  }
}
