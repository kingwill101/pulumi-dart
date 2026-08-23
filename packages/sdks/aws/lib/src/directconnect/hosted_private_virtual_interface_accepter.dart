import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_private_virtual_interface_accepter_args.dart';
import 'hosted_private_virtual_interface_accepter_state.dart';

/// Provides a resource to manage the accepter's side of a Direct Connect hosted private virtual interface.
/// This resource accepts ownership of a private virtual interface created by another AWS account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const accepter = aws.getCallerIdentity({});
/// // Accepter's side of the VIF.
/// const vpnGw = new aws.ec2.VpnGateway("vpn_gw", {});
/// // Creator's side of the VIF
/// const creator = new aws.directconnect.HostedPrivateVirtualInterface("creator", {
///     connectionId: "dxcon-zzzzzzzz",
///     ownerAccountId: accepter.then(accepter => accepter.accountId),
///     name: "vif-foo",
///     vlan: 4094,
///     addressFamily: "ipv4",
///     bgpAsn: 65352,
/// }, {
///     dependsOn: [vpnGw],
/// });
/// const accepterHostedPrivateVirtualInterfaceAccepter = new aws.directconnect.HostedPrivateVirtualInterfaceAccepter("accepter", {
///     virtualInterfaceId: creator.id,
///     vpnGatewayId: vpnGw.id,
///     tags: {
///         Side: "Accepter",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// accepter = aws.get_caller_identity()
/// # Accepter's side of the VIF.
/// vpn_gw = aws.ec2.VpnGateway("vpn_gw")
/// # Creator's side of the VIF
/// creator = aws.directconnect.HostedPrivateVirtualInterface("creator",
///     connection_id="dxcon-zzzzzzzz",
///     owner_account_id=accepter.account_id,
///     name="vif-foo",
///     vlan=4094,
///     address_family="ipv4",
///     bgp_asn=65352,
///     opts = pulumi.ResourceOptions(depends_on=[vpn_gw]))
/// accepter_hosted_private_virtual_interface_accepter = aws.directconnect.HostedPrivateVirtualInterfaceAccepter("accepter",
///     virtual_interface_id=creator.id,
///     vpn_gateway_id=vpn_gw.id,
///     tags={
///         "Side": "Accepter",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accepter = Aws.GetCallerIdentity.Invoke();
///
///     // Accepter's side of the VIF.
///     var vpnGw = new Aws.Ec2.VpnGateway("vpn_gw");
///
///     // Creator's side of the VIF
///     var creator = new Aws.DirectConnect.HostedPrivateVirtualInterface("creator", new()
///     {
///         ConnectionId = "dxcon-zzzzzzzz",
///         OwnerAccountId = accepter.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         Name = "vif-foo",
///         Vlan = 4094,
///         AddressFamily = "ipv4",
///         BgpAsn = 65352,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpnGw,
///         },
///     });
///
///     var accepterHostedPrivateVirtualInterfaceAccepter = new Aws.DirectConnect.HostedPrivateVirtualInterfaceAccepter("accepter", new()
///     {
///         VirtualInterfaceId = creator.Id,
///         VpnGatewayId = vpnGw.Id,
///         Tags =
///         {
///             { "Side", "Accepter" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		accepter, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Accepter's side of the VIF.
/// 		vpnGw, err := ec2.NewVpnGateway(ctx, "vpn_gw", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Creator's side of the VIF
/// 		creator, err := directconnect.NewHostedPrivateVirtualInterface(ctx, "creator", &directconnect.HostedPrivateVirtualInterfaceArgs{
/// 			ConnectionId:   pulumi.String("dxcon-zzzzzzzz"),
/// 			OwnerAccountId: pulumi.String(accepter.AccountId),
/// 			Name:           pulumi.String("vif-foo"),
/// 			Vlan:           pulumi.Int(4094),
/// 			AddressFamily:  pulumi.String("ipv4"),
/// 			BgpAsn:         pulumi.Int(65352),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpnGw,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewHostedPrivateVirtualInterfaceAccepter(ctx, "accepter", &directconnect.HostedPrivateVirtualInterfaceAccepterArgs{
/// 			VirtualInterfaceId: creator.ID().ToIDOutput().ToStringOutput(),
/// 			VpnGatewayId:       vpnGw.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.StringMap{
/// 				"Side": pulumi.String("Accepter"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "accepter" {
/// }
///
/// # Creator's side of the VIF
/// resource "aws_directconnect_hostedprivatevirtualinterface" "creator" {
///   depends_on       = [aws_ec2_vpngateway.vpn_gw]
///   connection_id    = "dxcon-zzzzzzzz"
///   owner_account_id = data.aws_getcalleridentity.accepter.account_id
///   name             = "vif-foo"
///   vlan             = 4094
///   address_family   = "ipv4"
///   bgp_asn          = 65352
/// }
/// # Accepter's side of the VIF.
/// resource "aws_ec2_vpngateway" "vpn_gw" {
/// }
/// resource "aws_directconnect_hostedprivatevirtualinterfaceaccepter" "accepter" {
///   virtual_interface_id = aws_directconnect_hostedprivatevirtualinterface.creator.id
///   vpn_gateway_id       = aws_ec2_vpngateway.vpn_gw.id
///   tags = {
///     "Side" = "Accepter"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.directconnect.HostedPrivateVirtualInterface;
/// import com.pulumi.aws.directconnect.HostedPrivateVirtualInterfaceArgs;
/// import com.pulumi.aws.directconnect.HostedPrivateVirtualInterfaceAccepter;
/// import com.pulumi.aws.directconnect.HostedPrivateVirtualInterfaceAccepterArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var accepter = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         // Accepter's side of the VIF.
///         var vpnGw = new VpnGateway("vpnGw");
///
///         // Creator's side of the VIF
///         var creator = new HostedPrivateVirtualInterface("creator", HostedPrivateVirtualInterfaceArgs.builder()
///             .connectionId("dxcon-zzzzzzzz")
///             .ownerAccountId(accepter.accountId())
///             .name("vif-foo")
///             .vlan(4094)
///             .addressFamily("ipv4")
///             .bgpAsn(65352)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpnGw)
///                 .build());
///
///         var accepterHostedPrivateVirtualInterfaceAccepter = new HostedPrivateVirtualInterfaceAccepter("accepterHostedPrivateVirtualInterfaceAccepter", HostedPrivateVirtualInterfaceAccepterArgs.builder()
///             .virtualInterfaceId(creator.id())
///             .vpnGatewayId(vpnGw.id())
///             .tags(Map.of("Side", "Accepter"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Creator's side of the VIF
///   creator:
///     type: aws:directconnect:HostedPrivateVirtualInterface
///     properties:
///       connectionId: dxcon-zzzzzzzz
///       ownerAccountId: ${accepter.accountId}
///       name: vif-foo
///       vlan: 4094
///       addressFamily: ipv4
///       bgpAsn: 65352 # The aws_dx_hosted_private_virtual_interface
///       #   # must be destroyed before the aws_vpn_gateway.
///     options:
///       dependsOn:
///         - ${vpnGw}
///   # Accepter's side of the VIF.
///   vpnGw:
///     type: aws:ec2:VpnGateway
///     name: vpn_gw
///   accepterHostedPrivateVirtualInterfaceAccepter:
///     type: aws:directconnect:HostedPrivateVirtualInterfaceAccepter
///     name: accepter
///     properties:
///       virtualInterfaceId: ${creator.id}
///       vpnGatewayId: ${vpnGw.id}
///       tags:
///         Side: Accepter
/// variables:
///   accepter:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect hosted private virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedPrivateVirtualInterfaceAccepter:HostedPrivateVirtualInterfaceAccepter test dxvif-33cc44dd
/// ```
class HostedPrivateVirtualInterfaceAccepter extends pulumi.CustomResource {
  /// The ARN of the virtual interface.
  late final pulumi.Output<String> arn;
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  late final pulumi.Output<String?> dxGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The ID of the Direct Connect virtual interface to accept.
  late final pulumi.Output<String> virtualInterfaceId;
  /// The ID of the virtual private gateway to which to connect the virtual interface.
  late final pulumi.Output<String?> vpnGatewayId;

  /// Creates a new [HostedPrivateVirtualInterfaceAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostedPrivateVirtualInterfaceAccepter]. {@macro pulumi_directconnect_hosted_private_virtual_interface_accepter_hosted_private_virtual_interface_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostedPrivateVirtualInterfaceAccepter(
    String name, {
    HostedPrivateVirtualInterfaceAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedPrivateVirtualInterfaceAccepter:HostedPrivateVirtualInterfaceAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    dxGatewayId = registerOutput<String?>('dxGatewayId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
    vpnGatewayId = registerOutput<String?>('vpnGatewayId');
  }

  /// Gets an existing [HostedPrivateVirtualInterfaceAccepter] resource's state with the given [name] and [id].
  static HostedPrivateVirtualInterfaceAccepter get(
    String name,
    pulumi.Input<String> id, {
    HostedPrivateVirtualInterfaceAccepterState? state,
  }) {
    return HostedPrivateVirtualInterfaceAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostedPrivateVirtualInterfaceAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedPrivateVirtualInterfaceAccepter:HostedPrivateVirtualInterfaceAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    dxGatewayId = registerOutput<String?>('dxGatewayId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
    vpnGatewayId = registerOutput<String?>('vpnGatewayId');
  }
}
